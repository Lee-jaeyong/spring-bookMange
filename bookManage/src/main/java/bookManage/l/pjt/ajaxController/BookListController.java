package bookManage.l.pjt.ajaxController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import bookManage.l.pjt.book.service.BookService;
import bookManage.l.pjt.requestCommand.BookListRequest;

@RestController
@RequestMapping(value = "bookList")
public class BookListController {

	@Autowired
	BookService bookService;

	@GetMapping(value = "/selectBookList", produces = "text/plain;charset=UTF-8")
	public String selectBookList(BookListRequest bookListRequest) throws Exception {
		return bookService.selectBookList(bookListRequest);
	}
}
