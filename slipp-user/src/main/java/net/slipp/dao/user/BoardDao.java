package net.slipp.dao.user;

import java.sql.SQLException;
import java.util.ArrayList;

import net.slipp.domain.user.Board;
import net.slipp.domain.user.BoardReply;



public interface BoardDao {

	void insert(Board board) throws SQLException;
	void insertReply(BoardReply boardRelpy, int Index) throws SQLException;
	ArrayList<Board> getBoardlist() throws SQLException;
	ArrayList<BoardReply> getBoardReplyList(int index) throws SQLException;
	Board getBoardContent(int index) throws SQLException;
	
}
