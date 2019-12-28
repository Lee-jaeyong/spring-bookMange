package bookManage.l.pjt.mainController;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import bookManage.l.pjt.domain.Book;
import bookManage.l.pjt.page.model.AddBookExecuteImplAction;
import bookManage.l.pjt.service.BookService;

@Controller
public class AdminBookController {

	@Autowired
	AddBookExecuteImplAction addBookExecuteImplAction;

	@Autowired
	BookService bookService;

	@PostMapping("addBookExecute")
	public String addBook(@Valid Book book, BindingResult result, @RequestParam MultipartFile file,
			HttpServletRequest request) {
		if (result.hasErrors()) {
			return "redirect:/bookList";
		}
		return addBookExecuteImplAction.execute(book, file, request);
	}

	@PostMapping("updateBookExecute")
	public String updateBook(@Valid Book book, BindingResult result) {
		if (result.hasErrors()) {
			return "redirect:/bookList";
		}
		bookService.updateBook(book);
		return "redirect:/bookList";
	}

	@PostMapping("updateBookImg")
	public String updateBookImg(Book book, @RequestParam MultipartFile file, @RequestParam String originFileName ,HttpServletRequest request) {
		bookService.updateBookImg(book, file, originFileName, request);
		return "redirect:/bookList";
	}
}
