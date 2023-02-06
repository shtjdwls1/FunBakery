package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.VO.BakeryVO;

public class BakeryDAO {
	
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
	
	public int findB_r_index(int b_seq, String button_id) {
		int b_r_index = 0;
		String sql = "";
		
		try {
			dbConn();
			String taste = "";
			
			if (button_id == "taste3" && (b_seq == 8 || b_seq == 16 || b_seq == 17 || b_seq == 18)) {
				// 재료의 개수
				sql = "select b_r_index, cnt_name "
						+ "from (select b_r_index, count(ingr_name) cnt_name "
						+ "from t_ingredients where b_seq = ? "
						+ "group by b_r_index order by cnt_name) "
						+ "where rownum = 1";
				
			} else {
				// 비율의 합
				if (button_id == "taste1") {
					taste = "and (ingr_name like '%력분' or ingr_name like '%밀가루%') "
							+ "group by b_r_index order by sum_rate) ";
					
				} else if (button_id == "taste2") {
					taste = "and (ingr_name like '%설탕' or ingr_name like '꿀' or ingr_name like '%엿' "
							+ "or ingr_name like '%초코칩' or ingr_name like '슈가파우더' or ingr_name like '연유' "
							+ "or ingr_name like '%초콜릿%') "
							+ "group by b_r_index order by sum_rate desc) ";
				} else if (button_id == "taste3" && (b_seq == 2 || b_seq == 9 || b_seq == 11 || b_seq == 12 || b_seq == 22)) {
					// 치즈케이크, 크림치즈 머핀, 황치즈 머핀, 대파치즈스콘, 치즈쿠키
					taste = "and (ingr_name like '%치즈%') "
							+ "group by b_r_index order by sum_rate desc) ";
				} else if (button_id == "taste3" && (b_seq == 13 || b_seq == 14 || b_seq == 19)) {
					// 소금빵, 모닝빵, 버터쿠키
					taste = "and (ingr_name like '%버터%') "
							+ "group by b_r_index order by sum_rate desc) ";
				} else if (button_id == "taste3" && (b_seq == 5 || b_seq == 15)) {
					// 티라미수, 모카빵
					taste = "and (ingr_name like '%커피%' or ingr_name = '에스프레소' or ingr_name = '모카에센스') "
							+ "group by b_r_index order by sum_rate desc) ";
				} else if (button_id == "taste3" && (b_seq == 21 || b_seq == 23 || b_seq == 24)) {
					// 코코아쿠키, 얼그레이쿠키, 녹차쿠키
					taste = "and (ingr_name like '코코아파우더' or ingr_name = '얼그레이%' "
							+ "or ingr_name = '녹차가루' or ingr_name = '말차가루') "
							+ "group by b_r_index order by sum_rate desc) ";
				} else if (button_id == "taste3" && (b_seq == 3 || b_seq == 10 || b_seq == 20)) {
					// 초코케이크, 오레오브라우니, 초코칩쿠키
					taste = "and (ingr_name like '%초콜릿' or ingr_name = '초코칩' or ingr_name = '오레오') "
							+ "group by b_r_index order by sum_rate desc) ";
				} else if (button_id == "taste3" && b_seq == 7) {
					// 레몬 마들렌
					taste = "and (ingr_name like '%레몬%') "
							+ "group by b_r_index order by sum_rate desc) ";
				} else if (button_id == "taste3" && b_seq == 1) {
					// 생크림케이크
					taste = "and (ingr_name like '%크림') "
							+ "group by b_r_index order by sum_rate desc) ";
				} else if (button_id == "taste3" && b_seq == 4) {
					// 카스텔라
					taste = "and (ingr_name like '우유') "
							+ "group by b_r_index order by sum_rate desc) ";
				} else if (button_id == "taste3" && b_seq == 6) {
					// 당근케이크
					taste = "and (ingr_name like '%당근%') "
							+ "group by b_r_index order by sum_rate desc) ";
				}
				
				sql = "select b_r_index, sum_rate "
						+ "from (select b_r_index, sum(ingr_rate) sum_rate "
							+ "from t_ingredients where b_seq = ? "
							+ taste
						+ "where rownum = 1";
			}
			
			
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, b_seq);
		
			rs = psmt.executeQuery();
			
			
			
			if (rs.next()) {
				
				int getb_r_index = rs.getInt(1);
				b_r_index = getb_r_index;

			} else {
				System.out.println("빵 레시피 순번 가져오기 실패");
			}
		
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		
		return b_r_index;
	}
	
	public ArrayList<BakeryVO> getIngredients(int b_seq, int b_r_index) {
		BakeryVO vo = null;
		ArrayList<BakeryVO> list = new ArrayList<>();
		try {
			dbConn();
			String sql = "select ingr_name, ingr_weight, ingr_rate "
						+ "from t_ingredients where b_seq = ? and b_r_index = ?";
			
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, b_seq);
			psmt.setInt(2, b_r_index);
			
			rs = psmt.executeQuery();
			
			while (rs.next()) {
				
				String getingre_name = rs.getString(1);
				String getingre_weight = rs.getString(2);
				float getingre_rate = rs.getFloat(3);
				
				vo = new BakeryVO(b_seq, getingre_name, getingre_weight, getingre_rate);
				list.add(vo);

			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		
		return list;
	}
	
	public ArrayList<BakeryVO> getRecipe(int b_seq, int b_r_index) {
		BakeryVO vo = null;
		ArrayList<BakeryVO> list = new ArrayList<>();
		try {
			dbConn();
			String sql = "select r_content, r_img, r_order "
						+ "from t_recipe where b_seq = ? and b_r_index = ? order by r_order";
			
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, b_seq);
			psmt.setInt(2, b_r_index);
			
			rs = psmt.executeQuery();
			
			while (rs.next()) {
				
				String getr_content = rs.getString(1);
				String getr_img = rs.getString(2);
				int getr_order = rs.getInt(3);
				
				
				vo = new BakeryVO(b_seq, getr_content, getr_img, getr_order);
				list.add(vo);

			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		
		return list;
	}
	
	public BakeryVO getBreadInfo(int b_seq) {
		BakeryVO vo = null;
		ArrayList<BakeryVO> list = new ArrayList<>();
		try {
			dbConn();
			String sql = "select b_name, b_desc, b_img, b_count from t_bread where b_seq = ?";
			
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, b_seq);
			
			rs = psmt.executeQuery();
			
			if (rs.next()) {
				
				String getb_name = rs.getString(1);
				String getb_desc = rs.getString(2);
				String getb_img = rs.getString(3);
				int count = rs.getInt(4);
			
				vo = new BakeryVO(b_seq, getb_name, getb_desc, getb_img);
				count++;
				countUpdate(count, b_seq);

			} else {
				System.out.println("빵 정보 실패");
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		
		return vo;
	}
	
	public void countUpdate(int count, int seq) {
		try {
			String sql = "UPDATE t_bread SET b_count=? WHERE b_seq=?";
			psmt = conn.prepareStatement(sql);
			
			psmt.setInt(1, count);
			psmt.setInt(2, seq);
			psmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	public ArrayList<BakeryVO> category(String cat){
		BakeryVO vo = null;
		ArrayList<BakeryVO> brlist = new ArrayList<>();
		
		try {
			dbConn();
			
			String sql = "SELECT b_seq, b_category, b_name, b_img, b_count FROM t_bread WHERE b_category=? ORDER BY b_seq";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, cat);

			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int seq = rs.getInt(1);
				String category = rs.getString(2);
				String name = rs.getString(3);
				String img = rs.getString(4);
				int count = rs.getInt(5);
				
				vo = new BakeryVO(seq, category, name, img, count);
				brlist.add(vo);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		
		return brlist;
	}

	public ArrayList<BakeryVO> count(){
		BakeryVO vo = null;
		ArrayList<BakeryVO> clist = new ArrayList<>();
		
		try {
			dbConn();
			
			String sql = "SELECT b_category, COUNT(b_category) FROM t_bread GROUP BY b_category";
			psmt = conn.prepareStatement(sql);

			rs = psmt.executeQuery();
			
			while(rs.next()) {
				String category = rs.getString(1);
				int count = rs.getInt(2);
				
				vo = new BakeryVO(category, count);
				clist.add(vo);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		
		return clist;
	}

	public ArrayList<BakeryVO> popular(){
		BakeryVO vo = null;
		ArrayList<BakeryVO> plist = new ArrayList<>();
		
		try {
			dbConn();
			
			String sql = "SELECT * FROM(SELECT b_seq, b_img, b_name, b_category, b_count FROM t_bread ORDER BY b_count desc) WHERE rownum<=3";
			psmt = conn.prepareStatement(sql);

			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int seq = rs.getInt(1);
				String img = rs.getString(2);
				String name = rs.getString(3);
				String category = rs.getString(4);
				int count = rs.getInt(5);
				
				vo = new BakeryVO(seq, category, name, img, count);
				plist.add(vo);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		
		return plist;
	}
	
	
	
	
	
	
	
}
