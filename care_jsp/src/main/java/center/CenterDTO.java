package center;
/*
SQL> CREATE TABLE care_center(
  2  num number,
  3  subject varchar2(30),
  4  content varchar2(2000),
  5  id varchar2(15),
  6  hit number,
  7  write_time varchar2(12),
  8  file_name varchar2(260),
  9  PRIMARY KEY(num)
 10  );
Table created.

SQL> CREATE SEQUENCE care_center_seq INCREMENT BY 1 START WITH 1;
Sequence created.

SQL> commit;
Commit complete.
 */
public class CenterDTO {
	private int num;
	private String subject;
	private String content;
	private String id;
	private int hit;
	private String writeTime;
	private String fileName;
	private int rownum;
	
	public void setRownum(int rownum) {
		this.rownum = rownum;
	}
	public int getRownum() {
		return rownum;
	}
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getWriteTime() {
		return writeTime;
	}
	public void setWriteTime(String writeTime) {
		this.writeTime = writeTime;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	
	
}
