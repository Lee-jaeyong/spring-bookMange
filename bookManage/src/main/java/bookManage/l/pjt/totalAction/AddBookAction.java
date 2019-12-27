package bookManage.l.pjt.totalAction;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import bookManage.l.pjt.domain.Book;

public interface AddBookAction {
	public ModelAndView execute(Book book, MultipartFile bookImg, HttpServletRequest request);
}
