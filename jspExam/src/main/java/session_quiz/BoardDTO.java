package session_quiz;
/*
CREATE TABLE session_quiz_board(
num number(10) primary key not null,
id varchar2(20) not null,
title varchar2(100),
content varchar2(300),
filename varchar2(200),
writetime varchar2(20),
hit num(10)
);

CREATE SEQUENCE session_board_seq;

commit;
 */
public class BoardDTO {
	private int num;
	private String id;
	private String title;
	private String content;
	private String fileName;
	private String writeTime;
	private int hit;
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getWriteTime() {
		return writeTime;
	}
	public void setWriteTime(String writeTime) {
		this.writeTime = writeTime;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	
	
}
