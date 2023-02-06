package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.VO.MemberVO;

public class MemberDAO {

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
	
	public int Register(MemberVO vo) {
		// JDBC코드작성하기

		try {
			dbConn();

			String sql = "insert into t_member values(?, ?, ?, sysdate, 'n')";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getEmail());
			psmt.setString(2, vo.getPassword());
			psmt.setString(3, vo.getUsername());
			
			// SQL준비

			cnt = psmt.executeUpdate();
			// SQL실행

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return cnt;
	}
	public String login(MemberVO vo) {
		String username="";
		try {
			dbConn();
			
			String sql = "Select * from t_member where mb_id = ? and mb_pw = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getEmail());
			psmt.setString(2, vo.getPassword());
			
			rs = psmt.executeQuery();
			if (rs.next()) {
				
				username = rs.getString("mb_name");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return username;
	}
	
	public int getTotal() {
		int result = 0;
		
		try {
			dbConn();
			
			String sql = "SELECT COUNT(*) total FROM t_member";
			
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
	
	public ArrayList<MemberVO> Select(int pageNum, int amount) {	// 전체 회원 검색
		String mb_id = "";
		String mb_pw = "";
		String mb_name = "";
		String mb_joindate = "";
		
		ArrayList<MemberVO> list = new ArrayList<>();
		
		try {
			dbConn();
			
			String sql = "SELECT * FROM (SELECT rownum rn, a.* FROM(SELECT mb_id, mb_pw, mb_name, mb_joindate FROM t_member m ORDER BY mb_joindate)a) WHERE rn>? AND rn <= ?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, (pageNum - 1) * amount);
			psmt.setInt(2, pageNum * amount );
			
			rs = psmt.executeQuery();
			while (rs.next()) {
				mb_id = rs.getString(2);
				mb_pw = rs.getString(3);
				mb_name = rs.getString(4);
				mb_joindate = rs.getString(5);
				
				MemberVO vo = new MemberVO(mb_id, mb_pw, mb_name, mb_joindate);
				
				list.add(vo);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return list;
	}
	
	
	public int Delete(String mb_id) {		// 회원 삭제
		
		int cnt = 0;
		try {
			dbConn();
			
			String sql = "delete from t_member where mb_id = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, mb_id);
			
			cnt = psmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return cnt;
	}
}