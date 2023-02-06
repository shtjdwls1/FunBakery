package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import com.VO.BoardVO;
import com.VO.CommentVO;

public class BoardDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt = 0;

	public void dbConn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// 동적로딩

			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String dbid = "gjai_5_6_0822";
			String dbpw = "smhrd6";
			conn = DriverManager.getConnection(url, dbid, dbpw);
			// DB연결
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void dbClose() {
		try {
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
			if (rs != null) {
				rs.close();
			}
		} catch (Exception e2) {
			e2.printStackTrace();
		}
	}

	public BoardVO boardDetail(int seq) {
		BoardVO vo = null;

		try {
			dbConn();

			String sql = "SELECT b.article_seq, b.article_title, b.article_content, b.article_date, b.mb_id, m.mb_name, b.article_count FROM t_community b, t_member m where b.mb_id = m.mb_id and b.article_seq=?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, seq);

			rs = psmt.executeQuery();
			if (rs.next()) {
				int aseq = rs.getInt(1);
				String title = rs.getString(2);
				String content = rs.getString(3);
				Date date = rs.getDate(4);
				String id = rs.getString(5);
				String name = rs.getString(6);
				int count = rs.getInt(7);

				vo = new BoardVO(aseq, title, content, date, name, id);
				count++;
				countUpdate(count, aseq);
				
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return vo;

	}
	
	public void countUpdate(int count, int seq) {
		try {
			String sql = "UPDATE t_community SET article_count=? WHERE article_seq=?";
			psmt = conn.prepareStatement(sql);
			
			psmt.setInt(1, count);
			psmt.setInt(2, seq);
			psmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	public ArrayList<CommentVO> commentView(int seq) {
		CommentVO vo = null;
		ArrayList<CommentVO> clist = new ArrayList<>();

		try {
			dbConn();

			String sql = "SELECT c.cmt_content, c.cmt_date, m.mb_name FROM t_comment c, t_member m WHERE c.mb_id = m.mb_id and c.article_seq=? order by cmt_seq";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, seq);

			rs = psmt.executeQuery();
			while (rs.next()) {
				String content = rs.getString(1);
				Date date = rs.getDate(2);
				String name = rs.getString(3);

				vo = new CommentVO(content, date, name);
				clist.add(vo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return clist;
	}

	public int getTotal() {
		int result = 0;
		
		try {
			dbConn();
			
			String sql = "SELECT COUNT(*) total FROM t_community";
			
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				result = rs.getInt(1);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		
		return result;
		
	}

	public ArrayList<BoardVO> boardList(int pageNum, int amount){
		BoardVO vo = null;
		ArrayList<BoardVO> blist = new ArrayList<>();
		
		try {
			dbConn();
			
			String sql = "SELECT * FROM (SELECT rownum rn, a.* FROM(SELECT b.article_seq, b.article_title, b.article_content, b.article_date, m.mb_name, b.article_count FROM t_community b, t_member m WHERE b.mb_id = m.mb_id ORDER BY article_seq DESC)a) WHERE rn>? AND rn <= ?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, (pageNum - 1) * amount);
			psmt.setInt(2, pageNum * amount );
			
			rs = psmt.executeQuery();
			while (rs.next()) {
				int seq = rs.getInt(2);
				String title = rs.getString(3);
				String content = rs.getString(4);
				Date date = rs.getDate(5);
				String name = rs.getString(6);
				int count = rs.getInt(7);

				vo = new BoardVO(seq, title, content, date, name, count);
				blist.add(vo);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return blist;
	}

	public int comment(CommentVO vo) {
		try {
			dbConn();
			
			String sql = "INSERT INTO t_comment VALUES(t_comment_seq.nextval,?,?,sysdate,?)";
			psmt = conn.prepareStatement(sql);
			
			psmt.setInt(1, vo.getAseq());
			psmt.setString(2, vo.getContent());
			psmt.setString(3, vo.getId());
			
			cnt = psmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		
		return cnt;
	}

	public int boardWrite(BoardVO vo) {
		try {
			dbConn();
			
			String sql = "INSERT INTO t_community VALUES(t_community_SEQ.nextval,?,?,sysdate,?,0)";
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, vo.getArticle_title());
			psmt.setString(2, vo.getArticle_content());
			psmt.setString(3, vo.getId());
			
			cnt = psmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		
		return cnt;
	}

	public BoardVO boardEdit(int seq) {
		BoardVO vo = null;
		
		try {
			dbConn();
			
			String sql = "SELECT article_seq, article_title, article_content FROM t_community WHERE article_seq=?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, seq);
			
			rs = psmt.executeQuery();
			if(rs.next()) {
				int aseq = rs.getInt(1);
				String title = rs.getString(2);
				String content = rs.getString(3);
				
				vo = new BoardVO(aseq, title, content);
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		
		return vo;
	}

	public int boardUpdate(BoardVO vo) {
		try {
			dbConn();
			
			String sql = "UPDATE t_community SET article_title=?, article_content=? WHERE article_seq=? ";
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, vo.getArticle_title());
			psmt.setString(2, vo.getArticle_content());
			psmt.setInt(3, vo.getArticle_seq());
			
			cnt = psmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return cnt;
	}

	public ArrayList<BoardVO> footer(){
		BoardVO vo = null;
		ArrayList<BoardVO> flist = new ArrayList<>();
		
		try {
			dbConn();
			
			String sql = "SELECT * FROM(SELECT b.article_seq, b.article_title, m.mb_name, m.mb_id FROM t_community b, t_member m WHERE b.mb_id = m.mb_id ORDER BY article_seq DESC) WHERE ROWNUM<=5";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int seq = rs.getInt(1);
				String title = rs.getString(2);
				String name = rs.getString(3);
				String id = rs.getString(4);
				
				vo = new BoardVO(seq, title, name, id);
				flist.add(vo);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		
		return flist;
	}
}
