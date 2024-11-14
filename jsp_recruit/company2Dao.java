package company2Db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import company2Db.company2Do;

public class company2Dao {
	String id = "root";
	String password = "111111";
	String url = "jdbc:mysql://localhost:3306/jspdb?characterEncoding=utf-8";
	
	Connection conn=null; //디비연결 객체
	PreparedStatement pstmt=null; //sql문 완성을 위하 객체
	ResultSet rs = null; //sql문 결과를 처리하기 위한 객체
	
	public void connect() {		
		try {
			//1. jdbc를 이용하기 위한 드라이버 로딩
			Class.forName("com.mysql.jdbc.Driver");			
			//2. 디비 연결 
			conn = DriverManager.getConnection(url, id, password);
			
			System.out.println("디비연결 완료 !! ");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//disConnect() : jdbc에 사용되는 객체를 메모리에서 해제
	public void disConnect() {
		if(conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	public void insertCompanyInfo(company2Do cdo) {
		connect();
		
		//sql문 처리
		String sql = "insert into companyinfo values(?,?,?,?,?)";
		try {
			//sql문 완성
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cdo.getCompanyName());
			pstmt.setString(2, cdo.getPeriod());
			pstmt.setString(3, cdo.getNumber());
			pstmt.setString(4, cdo.getDept());
			pstmt.setString(5, cdo.getImage());
			
			//sql문 실행 : insert문이기 때문에 update 진행
			pstmt.executeUpdate();
			
			System.out.println("insertCompanyInfo() 처리 완료");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		disConnect();
	}
	
	//db로부터 전체 회사 데이터를 가져와서 리턴하는 기능
	public ArrayList<company2Do> getAllCompany(){
		connect();
		
		//sql문 처리
		ArrayList<company2Do> aList = new ArrayList<company2Do>();
		String sql = "select * from companyinfo";
		try {
			pstmt = conn.prepareStatement(sql);
			//? 없어서 바로 실행
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				company2Do cdo = new company2Do();
				cdo.setCompanyName(rs.getString(1));
				cdo.setPeriod(rs.getString(2));
				cdo.setNumber(rs.getString(3));
				cdo.setDept(rs.getString(4));
				cdo.setImage(rs.getString(5));
				
				aList.add(cdo);
			}
			System.out.println("getAllCompany() 처리 완료");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		disConnect();
		return aList;
	}
}
