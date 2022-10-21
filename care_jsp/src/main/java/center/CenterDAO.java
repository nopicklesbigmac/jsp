package center;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CenterDAO {
	private Connection con;
	
	public CenterDAO() {
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String username = "oracle";
		String password = "oracle";
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(url, username, password);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void write(CenterDTO center) {
		String sql = "INSERT INTO care_center VALUES(care_center_seq.nextval, ?,?,?,?,?,?)";
		PreparedStatement ps = null;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, center.getSubject());
			ps.setString(2, center.getContent());
			ps.setString(3, center.getId());
			ps.setInt(4, center.getHit());
			ps.setString(5, center.getWriteTime());
			ps.setString(6, center.getFileName());
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(ps != null) 
					ps.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	public CenterDTO selectNum(int num) {
		String sql = "SELECT * FROM care_center WHERE num=?";
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, num);
			rs = ps.executeQuery();
			if(rs.next()) {
				CenterDTO center = new CenterDTO();
				center.setSubject(rs.getString("subject"));
				center.setContent(rs.getString("content"));
				center.setId(rs.getString("id"));
				center.setHit(rs.getInt("hit"));
				center.setWriteTime(rs.getString("write_time"));
				center.setFileName(rs.getString("file_name"));
				return center;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(ps != null) ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return null;
	}
	
	public void incrementHit(int num, int hit) {
		String sql = "UPDATE care_center SET hit=? WHERE num=?";
		
		PreparedStatement ps = null;
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, hit);
			ps.setInt(2, num);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(ps != null) ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	public ArrayList<CenterDTO> selectAll() {
		String sql = "SELECT * FROM care_center ORDER BY num DESC";
		PreparedStatement ps = null;
		ResultSet rs = null;
		ArrayList<CenterDTO> list = new ArrayList<>();
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				CenterDTO center = new CenterDTO();
				
				center.setNum(rs.getInt("num"));
				center.setSubject(rs.getString("subject"));
				center.setId(rs.getString("id"));
				center.setHit(rs.getInt("hit"));
				center.setWriteTime(rs.getString("write_time"));
			
				list.add(center);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(ps != null) ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	public ArrayList<CenterDTO> search(String find, String data) {
		String sql = "";
		
		if(find.equals("subject"))
			sql = "SELECT * FROM care_center WHERE subject like ? ORDER BY num DESC";
		else if(find.equals("content"))
			sql = "SELECT * FROM care_center WHERE content like ? ORDER BY num DESC";
		else
			sql = "SELECT * FROM care_center WHERE id like ? ORDER BY num DESC";
		
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		ArrayList<CenterDTO> list = new ArrayList<>();
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, "%"+data+"%");
			rs = ps.executeQuery();
			while(rs.next()) {
				CenterDTO center = new CenterDTO();
				
				center.setNum(rs.getInt("num"));
				center.setSubject(rs.getString("subject"));
				center.setId(rs.getString("id"));
				center.setHit(rs.getInt("hit"));
				center.setWriteTime(rs.getString("write_time"));
			
				list.add(center);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(ps != null) ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	public void delete(int num) {
		String sql = "DELETE FROM care_center WHERE num=?";
		
		PreparedStatement ps = null;
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, num);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(ps != null) ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	public void close() {
		try {
			if(con != null) con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<CenterDTO> list(int begin, int end, String find,String data) {
		String sql = "";
		
		if(find.equals("subject"))
			sql = "SELECT B.* FROM (SELECT rownum rn,A.*  FROM (SELECT * FROM  care_center WHERE subject like ? ORDER BY num DESC)A)B WHERE rn BETWEEN ? and ?";
		else if(find.equals("content"))
			sql = "SELECT B.* FROM (SELECT rownum rn, A.*  FROM (SELECT * FROM  care_center WHERE content like ? ORDER BY num DESC)A)B WHERE rn BETWEEN ? and ?";
		else
			sql = "SELECT B.* FROM (SELECT rownum rn, A.*  FROM (SELECT * FROM  care_center WHERE id like ? ORDER BY num DESC)A)B WHERE rn BETWEEN ? and ?";
		
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		ArrayList<CenterDTO> list = new ArrayList<>();
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, "%"+data+"%");
			ps.setInt(2, begin);
			ps.setInt(3, end);
			rs = ps.executeQuery();
			while(rs.next()) {
				CenterDTO center = new CenterDTO();
				center.setRownum(rs.getInt("rn"));
				center.setNum(rs.getInt("num"));
				center.setSubject(rs.getString("subject"));
				center.setId(rs.getString("id"));
				center.setHit(rs.getInt("hit"));
				center.setWriteTime(rs.getString("write_time"));
			
				list.add(center);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(ps != null) ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	public ArrayList<CenterDTO> list(int begin, int end) {
		String sql = "SELECT B.* FROM (SELECT rownum rn, A.* FROM (SELECT * FROM  care_center ORDER BY num DESC)A)B WHERE rn BETWEEN ? and ?";
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		ArrayList<CenterDTO> list = new ArrayList<>();
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, begin);
			ps.setInt(2, end);
			rs = ps.executeQuery();
			while(rs.next()) {
				CenterDTO center = new CenterDTO();
				center.setRownum(rs.getInt("rn"));
				center.setNum(rs.getInt("num"));
				center.setSubject(rs.getString("subject"));
				center.setId(rs.getString("id"));
				center.setHit(rs.getInt("hit"));
				center.setWriteTime(rs.getString("write_time"));
			
				list.add(center);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(ps != null) ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	
	public int count() {
		String sql = "SELECT count(*) as cnt FROM care_center";
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		int cnt = 0;
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) {
				cnt = rs.getInt("cnt");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(ps != null) ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return cnt;
	}
	public int count(String find,String data) {
		String sql = "SELECT count(*) as cnt FROM care_center WHERE ";
		
		if(find.equals("subject"))
			sql += "subject like ? ";
		else if(find.equals("content"))
			sql += "content like ? ";
		else
			sql += "id like ? ";
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		int cnt = 0;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, "%"+data+"%");
			rs = ps.executeQuery();
			if(rs.next()) {
				cnt = rs.getInt("cnt");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(ps != null) ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return cnt;
	}
	
	public void modify(CenterDTO center) {
		String sql = "UPDATE care_center SET subject=?, content=?, file_name=? WHERE num=?";
		
		PreparedStatement ps = null;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, center.getSubject());
			ps.setString(2, center.getContent());
			ps.setString(3, center.getFileName());
			ps.setInt(4, center.getNum());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(ps != null) ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
