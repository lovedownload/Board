package net.slipp.dao.user;

import java.sql.SQLException;
import java.util.ArrayList;

import net.slipp.domain.user.Board;


public interface BoardDao {

	void insert(Board board) throws SQLException;
	ArrayList<Board> getBoardlist() throws SQLException;
	Board getBoardContent(int index) throws SQLException;
	
}
