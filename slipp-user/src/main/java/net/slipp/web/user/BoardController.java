package net.slipp.web.user;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpSession;

import net.slipp.domain.user.Board;
import net.slipp.domain.user.BoardReply;
import net.slipp.domain.user.User;
import net.slipp.service.user.BoardService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/board")
public class BoardController {
	
	private static Logger log = LoggerFactory.getLogger(BoardController.class);

	@Autowired
	private BoardService boardService;
	
	@RequestMapping("/boardlist/form")
	public String boardListForm(Model model) throws Exception {	
			
		
		model.addAttribute("boardlist", boardService.boardContntList());			
		return "Board/board_list";
	}
	
	@RequestMapping("/boardwrite/form")
	public String boardWriteForm(Model model) throws Exception {
		model.addAttribute("board", new Board());		
		return "Board/board_write";
	}
	
	@RequestMapping("/view/{Index}/form")
	public String boardViewForm(@PathVariable int Index, Model model) throws Exception {
		
		Board boardContentData = boardService.boardContentView(Index); 
		
		model.addAttribute("board", boardContentData);
		model.addAttribute("board_reply", new BoardReply());
		return "Board/board_list_view";
	}
	
			
	@RequestMapping(value="/write", method = RequestMethod.POST)
	public String boardContentWrite(Board board, String wirte_user) throws Exception {
		Date now = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");	
		String date = format.format(now);
		
		board.setDate(date);
		board.setName(wirte_user);		
		//User user = (User)session.getAttribute("loginUser");
		
		log.debug("board content : {}", board);
		boardService.boardContentWrite(board);		
		return "redirect:/board/boardlist/form";
	}	
}
