package session_quiz;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class BoardDAO {
	private static BoardDAO boardDao = null;
	
	public static BoardDAO getInstance() {
		if(boardDao == null)
			boardDao = new BoardDAO();
		
		return boardDao;
	}
	
	public Connection getConnection() {
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "oracle";
		String password = "oracle";
		Connection con = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(url, user, password);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
	
	public ArrayList<BoardDTO> list(int begin, int end) {
	
		String sql = "SELECT B.* FROM (SELECT ROWNUM rn, A.* FROM ";
		sql += " (SELECT * FROM session_quiz_board ORDER BY num DESC)A)B ";
		sql += " WHERE rn BETWEEN ? and ?";
		
		ArrayList<BoardDTO> contents = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		Connection con = null;
		try {
			con = getConnection();
			ps = con.prepareStatement(sql);
			ps.setInt(1, begin);
			ps.setInt(2, end);
			rs = ps.executeQuery();
			if(rs.next()) {
				contents = new ArrayList<BoardDTO>();
				do{
					BoardDTO board = new BoardDTO();
					board.setNum(rs.getInt("num"));
					board.setId(rs.getString("id"));
					board.setTitle(rs.getString("title"));
					board.setContent(rs.getString("content"));
					board.setFileName(rs.getString("filename"));
					board.setWriteTime(rs.getString("writetime"));
					board.setHit(rs.getInt("hit"));
					contents.add(board);
				}while(rs.next());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(ps != null) ps.close();
				if(con != null) con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return contents;
	}
	
	public int count() {
		PreparedStatement ps = null;
		ResultSet rs = null;
		Connection con = null;
		int cnt = 0;
		try {
			con = getConnection();
			ps = con.prepareStatement("SELECT count(*) FROM session_quiz_board");
			rs = ps.executeQuery();
			if(rs.next()) {
				cnt = rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(ps != null) ps.close();
				if(con != null) con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return cnt;
	}
	
	public void write(BoardDTO board) {
		String sql = "INSERT INTO session_quiz_board VALUES(session_board_seq.nextval, ?,?,?,?,?,?)";
		PreparedStatement ps = null;
		Connection con = null;
		try {
			con = getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, board.getId());
			ps.setString(2, board.getTitle());
			ps.setString(3, board.getContent());
			ps.setString(4, board.getFileName());
			ps.setString(5, board.getWriteTime());
			ps.setInt(6, board.getHit());
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(ps != null) 
					ps.close();
				if(con != null) 
					con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	public BoardDTO getContent(int num) {
		String sql = "";
		PreparedStatement ps = null;
		ResultSet rs = null;
		Connection con = null;
		try {
			con = getConnection();
			sql = "UPDATE session_quiz_board SET hit=hit+1 WHERE num = ?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, num);
			ps.executeUpdate();
			ps.close();
			
			sql = "SELECT * FROM session_quiz_board WHERE num=?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, num);
			rs = ps.executeQuery();
			if(rs.next()) {
				BoardDTO board = new BoardDTO();
				board.setNum(rs.getInt("num"));
				board.setId(rs.getString("id"));
				board.setTitle(rs.getString("title"));
				board.setContent(rs.getString("content"));
				board.setFileName(rs.getString("filename"));
				board.setWriteTime(rs.getString("writetime"));
				board.setHit(rs.getInt("hit"));
				return board;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(ps != null) ps.close();
				if(con != null) con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return null;
	}
	
	public BoardDTO selectNum(int num) {
		String sql = "";
		PreparedStatement ps = null;
		ResultSet rs = null;
		Connection con = null;
		try {
			con = getConnection();
			sql = "SELECT * FROM session_quiz_board WHERE num=?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, num);
			rs = ps.executeQuery();
			if(rs.next()) {
				BoardDTO board = new BoardDTO();
				board.setNum(rs.getInt("num"));
				board.setId(rs.getString("id"));
				board.setTitle(rs.getString("title"));
				board.setContent(rs.getString("content"));
				board.setFileName(rs.getString("filename"));
				board.setWriteTime(rs.getString("writetime"));
				board.setHit(rs.getInt("hit"));
				return board;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(ps != null) ps.close();
				if(con != null) con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return null;
	}
	
	public void modify(BoardDTO board) {
		String sql = "";
		PreparedStatement ps = null;
		Connection con = null;
		try {
			con = getConnection();
			sql = "UPDATE session_quiz_board SET title=?, content=? WHERE num = ?";
			ps = con.prepareStatement(sql);
			ps.setString(1, board.getTitle());
			ps.setString(2, board.getContent());
			ps.setInt(3, board.getNum());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(ps != null) ps.close();
				if(con != null) con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	public void delete(int num) {
		String sql = "";
		PreparedStatement ps = null;
		Connection con = null;
		try {
			con = getConnection();
			sql = "DELETE FROM session_quiz_board WHERE num=?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, num);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(ps != null) ps.close();
				if(con != null) con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
