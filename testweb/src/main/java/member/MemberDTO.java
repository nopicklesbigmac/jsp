package member;
/*
SQL> CREATE TABLE care(
    id varchar2(15),
    pw varchar2(15),
    name varchar2(15),
    PRIMARY KEY(id)
    );
 */
public class MemberDTO {
	private String id;
	private String pw;
	private String confirmPw;
	private String name;
	
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
	public String getConfirmPw() {
		return confirmPw;
	}
	public void setConfirmPw(String confirmPw) {
		this.confirmPw = confirmPw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
}
