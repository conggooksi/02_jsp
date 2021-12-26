package jsp7board;
import java.sql.*;

public class BoardDAO {
	String DRIVER="com.mysql.jdbc.Driver";
	String URL="jdbc:mysql://localhost:3306/testDB";
	String USER="root";
	String PWD="12345";
	
	PreparedStatement pstmt=null;
	String sql="";
	
	public BoardDAO(){
		try{
			Class.forName(DRIVER);
			System.out.println("드라이버 로딩 성공");
		}catch(ClassNotFoundException cnf){
			System.out.println("드라이버 로딩 실패 :"+cnf);
		}
	}//cons-end
	
	private Connection getCon(){
		Connection con=null;
		try{
			con=DriverManager.getConnection(URL,USER,PWD);
			System.out.println("DB연결 성공");
		}catch(Exception ex){
			System.out.println("DB연결 실패 :"+ex);
		}
		return con;
	}//getCon()-end
	
	public void insertBoard(BoardDTO dto){
		Connection con=null;
		try{
			con=getCon();
			sql="insert into board(num,name,title,content,regdate) values(0,?,?,?,NOW())";
			pstmt=con.prepareStatement(sql);
			
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getTitle());
			pstmt.setString(3, dto.getContent());
			
			pstmt.executeUpdate();
			
		}catch(Exception ex){
			System.out.println("insertBoard() 에러 :"+ex);
			
		}finally{
			try{
				if(pstmt != null){pstmt.close();}
				if(con != null){con.close();}
				
			}catch(Exception ex2){}
		}//finally-end
	}//insertBoard()-end
}//class-end
