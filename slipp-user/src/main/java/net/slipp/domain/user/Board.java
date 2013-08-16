package net.slipp.domain.user;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


public class Board {
	
	private int index;
	private String name;
	private String title;
	private String contents;	
	private String date;
	
	private static Logger log = LoggerFactory.getLogger(Board.class);
	

	public Board()
	{
		
	}
	
	public Board(int index, String title, String name, String contents,  String date)
	{
		this.index = index;
		this.title = title;
		this.name = name;
		this.contents = contents;
		this.date = date;
	}
	
	public int getIndex() {
		return index;
	}

	public void setIndex(int index) {
		this.index = index;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
	

	@Override
	public String toString() {
		return "Board [title=" + title + ", contents=" + contents + ",  date=" + date + ", name=" + name + "]";
	}
	
}

