package member;
/*
SQL> CREATE TABLE care(
  2  id varchar2(15),
  3  pw varchar2(15),
  4  name varchar2(15),
  5  email varchar2(50),
  6  mobile varchar2(15),
  7  address varchar2(100),
  8  PRIMARY KEY(id)
  9  );
Table created.
SQL> commit;
Commit complete.
 */
public class MemberDTO {
	private String id;
	private String pw;
	private String confirmPw;
	private String name;
	private String email;
	private String mobile;
	private String address;
	
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	
}
