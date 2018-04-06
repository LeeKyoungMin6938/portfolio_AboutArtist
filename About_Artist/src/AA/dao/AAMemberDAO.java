package AA.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import AA.dto.AAMemberVO;
import utill.DBManager;

public class AAMemberDAO {
	private AAMemberDAO() {
		
	}
	
	private static AAMemberDAO instance = new AAMemberDAO();
	
	public static AAMemberDAO getInstance() {
		return instance;
	}
	
	//회원조회
	public AAMemberVO getMember(String id) {
		AAMemberVO memberVO = null;
		String sql = "select * from AA_member where id=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				memberVO = new AAMemberVO();
				memberVO.setId(rs.getString("id"));
				memberVO.setPwd(rs.getString("pwd"));
				memberVO.setName(rs.getString("name"));
				memberVO.setEmail(rs.getString("email"));
				memberVO.setZip_num(rs.getString("zip_num"));
				memberVO.setAddress(rs.getString("address"));
				memberVO.setPhone(rs.getString("phone"));
				memberVO.setIndate(rs.getTimestamp("indate"));				
			}
			
/* id varchar2(30) primary key,
    pwd varchar2(30),
    name varchar2(50),
    email varchar2(60),
    zip_num varchar2(7), --우편번호
    address varchar2(120), --상세주소
    phone varchar2(15),    
    indate date default sysdate
 * 
 * */			
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rs);
		}		
		return memberVO; 
	}
	
	public void InsertMember(AAMemberVO memberVO) {
		
		String sql = "insert into AA_Member(id,pwd,name,email,zip_num,address,phone) values(?,?,?,?,?,?,?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberVO.getId());
			pstmt.setString(2, memberVO.getPwd());
			pstmt.setString(3, memberVO.getName());
			pstmt.setString(4, memberVO.getEmail());
			pstmt.setString(5, memberVO.getZip_num());
			pstmt.setString(6, memberVO.getAddress());
			pstmt.setString(7, memberVO.getPhone());
			pstmt.executeUpdate(); 

		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt);
		}		
		
	}
	
	public int confirmID(String userid) { // id 중복체크
		int result = -1;
		String sql = "select * from AA_member where id =?";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				result = 1;
			} else {
				result = -1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}

		return result;
	}
	
	
	
}
