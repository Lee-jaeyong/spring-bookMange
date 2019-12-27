package bookManage.l.pjt.mainController;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import bookManage.l.pjt.domain.Book;
import bookManage.l.pjt.page.model.AddBookExecuteImplAction;
import bookManage.l.pjt.page.model.AddBookImplAction;

@Controller
public class AdminAddBookController {

	@Autowired
	AddBookImplAction addBookImplAction;

	@Autowired
	AddBookExecuteImplAction addBookExecuteImplAction;

	@PostMapping("addBookExecute")
	public ModelAndView addBook(@ModelAttribute @Valid Book book, BindingResult result,
			@RequestParam("bookImg") MultipartFile bookImg, HttpServletRequest request) {
		if (result.hasErrors()) {
			return addBookImplAction.execute(result);
		}
		return addBookExecuteImplAction.execute(book, bookImg, request);
	}
}
