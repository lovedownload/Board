package net.slipp.web.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/board")
public class BoardController {
	
	@RequestMapping("/boardlist/form")
	public String boardListForm() throws Exception {
		
		return "Board/board_list";
	}
	
	@RequestMapping("/boardwrite/form")
	public String boardWriteForm() throws Exception {
		
		return "Board/board_write";
	}

}
