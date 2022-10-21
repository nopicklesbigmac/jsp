package session_concept;
/*
 * 

SQL> CREATE TABLE session_concept(
  2  id varchar2(20),
  3  pw varchar2(20),
  4  name varchar2(30),
  5  email varchar2(50),
  6  PRIMARY KEY (id)
  7  );
Table created.

SQL> COMMIT;
Commit complete.

 */
public class MemberDTO {
	private String id;
	private String pw;
	private String name;
	private String email;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	
}
