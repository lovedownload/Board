package net.slipp.domain.user;

public class BoardReply {
	
	private String Contents;
	
	public BoardReply() {
		
	}
	
	public BoardReply(String Contents){
		this.Contents = Contents;
	}

	public String getContents() {
		return Contents;
	}

	public void setContents(String contents) {
		Contents = contents;
	}
}
