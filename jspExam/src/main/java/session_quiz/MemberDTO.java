package session_quiz;
/*
SQL> CREATE TABLE session_quiz(
  2  id varchar2(20),
  3  pwd1 varchar2(20),
  4  name varchar2(40),
  5  addr varchar2(200),
  6  tel varchar2(20),
  7  PRIMARY KEY(id)
  8  );
Table created.

SQL> commit;
Commit complete.

 */
public class MemberDTO {
	private String id;
	private String pwd1;
	private String pwd2;
	private String name;
	private String addr;
	private String tel;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd1() {
		return pwd1;
	}
	public void setPwd1(String pwd1) {
		this.pwd1 = pwd1;
	}
	public String getPwd2() {
		return pwd2;
	}
	public void setPwd2(String pwd2) {
		this.pwd2 = pwd2;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	
	
}
