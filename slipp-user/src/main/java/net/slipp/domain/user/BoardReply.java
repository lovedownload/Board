package net.slipp.domain.user;

public class BoardReply {
	
	private String contents;
	private String name;
	private String date;
	

	public BoardReply() {
		
	}
	
	public BoardReply(String name, String contents, String date){
		this.name = name;
		this.contents = contents;
		this.date = date;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "BoardReply [name=" + name + ", contents=" + contents + ",  date=" + date + "]";
	}
}
