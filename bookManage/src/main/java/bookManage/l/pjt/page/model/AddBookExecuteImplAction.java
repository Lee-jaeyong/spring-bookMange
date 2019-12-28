package bookManage.l.pjt.page.model;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import bookManage.l.pjt.domain.Book;
import bookManage.l.pjt.service.BookService;

@Component
public class AddBookExecuteImplAction {

	@Autowired
	BookService bookInsertService;

	public String execute(Book book, MultipartFile bookImg, HttpServletRequest request) {
		String imagePath = request.getRealPath("resources/bookImages");
		File file = new File(imagePath + "\\" + bookImg.getOriginalFilename());
		try {
			book.setBookImg(bookImg.getOriginalFilename());
			bookInsertService.insertBook(book);
			bookImg.transferTo(file);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/bookList";
	}

}
