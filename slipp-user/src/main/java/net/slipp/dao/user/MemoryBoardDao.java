package net.slipp.dao.user;

import java.sql.SQLException;
import java.util.ArrayList;

import net.slipp.domain.user.Board;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

@Repository("memoryBoardDao")
public class MemoryBoardDao implements BoardDao {
	private static ArrayList<Board> board = new ArrayList<Board>();
	
	private static Logger log = LoggerFactory.getLogger(MemoryBoardDao.class);
	
	public void insert(Board boardData) throws SQLException {	
		
		log.debug("insert data : {}", boardData.getContents());
		
		board.add(boardData);		
		
	}
	
	public ArrayList<Board> getBoardlist() throws SQLException	{
		ArrayList<Board> bd = board;
		return bd;
	}

	public Board getBoardContent(int index) throws SQLException {
		return board.get(index);		
	}
}
