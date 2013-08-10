package net.slipp.service.user;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.annotation.Resource;

import net.slipp.dao.user.BoardDao;
import net.slipp.domain.user.Board;
import net.slipp.domain.user.BoardReply;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

@Service
public class BoardService {

	@Resource(name="memoryBoardDao")
	private BoardDao boardDao;
	
	
	public void setBoardDao(BoardDao boardDao)
	{
		this.boardDao = boardDao;
	}
	
	private static Logger log = LoggerFactory.getLogger(BoardService.class);
	
	@PostConstruct
	public void initialize() {
		log.debug("initialize");
	}
	
	@PreDestroy
	public void destroy() {
		log.debug("destroy");
	}	
	
	public void boardContentWrite(Board board) throws SQLException{
		
		log.debug("Board Write Content : {}", board);
		boardDao.insert(board);
		
	}
	
	public ArrayList<Board> boardContntList() throws SQLException {
		
		return boardDao.getBoardlist();		
	}	
	
	public Board boardContentView(int index) throws SQLException {
		
		return boardDao.getBoardContent(index);
	}
	
	public void boardReplyWrite(BoardReply boardReply, int index) throws SQLException {
		log.debug("Board Reply Content : {}", boardReply);		
		boardDao.insertReply(boardReply, index);
	}
	
	public ArrayList<BoardReply> boardReplyList(int index) throws SQLException {
		return boardDao.getBoardReplyList(index);
	}
	
	//테스트용도 
	public int size()
	{
		return boardDao.size();
	}
	
	
}
