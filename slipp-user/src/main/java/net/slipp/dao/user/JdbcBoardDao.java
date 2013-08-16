package net.slipp.dao.user;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import net.slipp.domain.user.Board;
import net.slipp.domain.user.BoardReply;
import net.slipp.domain.user.User;
import net.slipp.support.AbstractDaoSupport;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.dao.support.DataAccessUtils;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository("jdbcBoardDao")
public class JdbcBoardDao extends AbstractDaoSupport implements BoardDao {
	
	private static Logger log = LoggerFactory.getLogger(JdbcBoardDao.class);
	
	@Override
	public void insert(Board boardData) throws SQLException {	
		
		log.debug("insert content data : {}", boardData);		
		String sql = "INSERT INTO BOARD VALUES (?, ?, ?, ?, ?)";
		getJdbcTemplate().update(sql, null, boardData.getTitle(), boardData.getName(), boardData.getContents(), boardData.getDate());			
	}
	
	@Override
	public ArrayList<Board> getBoardlist() throws SQLException	{
		ArrayList<Board> boardlist = null;
		String sql = "SELECT * FROM BOARD";
		
		RowMapper<Board> rowMapper = new RowMapper<Board> () {
			@Override
			public Board mapRow(ResultSet rs, int rowNum) throws SQLException {
				return new Board(
						rs.getInt("boardidx"),
						rs.getString("title"), 
						rs.getString("name"), 
						rs.getString("content"),
						rs.getString("cdate"));
			}
		};
		
		boardlist = (ArrayList<Board>) getJdbcTemplate().query(sql, rowMapper);
		return boardlist;
	}
	
	@Override
	public Board getBoardContent(int index) throws SQLException {
		String sql = "SELECT * FROM BOARD WHERE boardidx=?";
		
		RowMapper<Board> rowMapper = new RowMapper<Board> () {
			@Override
			public Board mapRow(ResultSet rs, int rowNum) throws SQLException {
				return new Board(
						rs.getInt("boardidx"),
						rs.getString("title"), 
						rs.getString("name"), 
						rs.getString("content"),
						rs.getString("cdate"));
			}
		};
		
		Board bd = getJdbcTemplate().queryForObject(sql, rowMapper, index);
		return bd;
	}
	
	@Override
	public void insertReply(BoardReply boardRelpy, int Index) throws SQLException {
		String sql = "INSERT INTO REPLY VALUES (?, ?, ?, ?, ?)";
		getJdbcTemplate().update(sql, null, Index, boardRelpy.getName(), boardRelpy.getContents(), boardRelpy.getDate());			
	}
	
	@Override
	public ArrayList<BoardReply> getBoardReplyList(int index) throws SQLException {
		ArrayList<BoardReply> br = null;
		
		String sql = "SELECT * FROM REPLY WHERE boardidx=?";
	
		RowMapper<BoardReply> rowMapper = new RowMapper<BoardReply> () {
			@Override
			public BoardReply mapRow(ResultSet rs, int rowNum) throws SQLException {
				return new BoardReply(
						rs.getInt("idx"),
						rs.getInt("boardidx"),
						rs.getString("name"), 
						rs.getString("content"),
						rs.getString("cdate"));
			}
		};
		
		br = (ArrayList<BoardReply>)getJdbcTemplate().query(sql, rowMapper, index);
		return br;
	}
}
