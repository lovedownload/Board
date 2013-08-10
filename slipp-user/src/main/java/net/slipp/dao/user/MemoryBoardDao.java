package net.slipp.dao.user;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import net.slipp.domain.user.Board;
import net.slipp.domain.user.BoardReply;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.sun.xml.internal.xsom.impl.scd.Iterators.Map;

@Repository("memoryBoardDao")
public class MemoryBoardDao implements BoardDao {
	private static ArrayList<Board> board = new ArrayList<Board>();
	//private static Dictionary<String, ArrayList<BoardReply>> boardReply = new Dictionary<String, ArrayList<BoardReply>>();
	private static HashMap<Integer, ArrayList<BoardReply>> boardReply = new HashMap<Integer, ArrayList<BoardReply>>();
	
	private static Logger log = LoggerFactory.getLogger(MemoryBoardDao.class);
	
	public void insert(Board boardData) throws SQLException {	
		
		log.debug("insert content data : {}", boardData);		
		board.add(boardData);				
	}
	
	public ArrayList<Board> getBoardlist() throws SQLException	{
		ArrayList<Board> bd = board;		
		return bd;
	}

	public Board getBoardContent(int index) throws SQLException {
		return board.get(index);		
	}
	
	public void insertReply(BoardReply data, int Index) throws SQLException {
		
		log.debug("insert reply data1 : {}", data);		
		log.debug("insert reply index : {}", Index);		
		
		if(boardReply.containsKey(Index))
		{
			ArrayList<BoardReply> reply = boardReply.get(Index);
			reply.add(data);			
			
			log.debug("insert reply array : {}", reply.get(0));		
			boardReply.put(Index, reply);		
			log.debug("get hash data : {}", boardReply.get(0).get(0));
		}
		else
		{
			ArrayList<BoardReply> reply = new ArrayList<BoardReply>();
			log.debug("insert reply data2 : {}", data);		
			reply.add(data);		
			boardReply.put(Index, reply);
		}		
	}
	
	public ArrayList<BoardReply> getBoardReplyList(int Index) throws SQLException {
		return boardReply.get(Index);
	}
	
	public int size()
	{
		if(boardReply.containsKey(0))
		{
		
			return boardReply.get(0).size();
		}
		else
		{
			return 0;
		}
	}
}
