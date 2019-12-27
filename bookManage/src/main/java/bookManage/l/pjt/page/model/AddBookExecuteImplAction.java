package bookManage.l.pjt.page.model;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import bookManage.l.pjt.book.service.BookService;
import bookManage.l.pjt.domain.Book;
import bookManage.l.pjt.totalAction.AddBookAction;

@Component
public class AddBookExecuteImplAction implements AddBookAction {

	@Autowired
	BookService bookInsertService;

	@Override
	public ModelAndView execute(Book book, MultipartFile bookImg, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/bookList");
		String imagePath = request.getRealPath("resources/bookImages");
		File file = new File(imagePath + "\\" + bookImg.getOriginalFilename());
		try {
			book.setBookImg(bookImg.getOriginalFilename());
			bookInsertService.insertBook(book);
			bookImg.transferTo(file);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}

}
