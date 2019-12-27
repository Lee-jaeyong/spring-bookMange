package bookManage.l.pjt.page.model;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.servlet.ModelAndView;

import bookManage.l.pjt.book.service.BookService;
import bookManage.l.pjt.totalAction.Action;

@Component
public class AddBookImplAction implements Action {

	private static final Logger logger = LoggerFactory.getLogger(AddBookImplAction.class);

	@Autowired
	SelectCategoryAndPublisher selectCategoryAndPublisher;

	@Autowired
	BookService bookService;
	
	@Override
	public ModelAndView execute(BindingResult result) {
		logger.info("addBook page");
		ModelAndView mav = new ModelAndView();
		List<ObjectError> list = result.getAllErrors();
		for (ObjectError error : list) {
			mav.addObject("error", error.getDefaultMessage());
			break;
		}
		return selectCategoryAndPublisher.selectCategoryAndPublisher("backend/bookAdd");
	}

	@Override
	public ModelAndView execute() {
		return selectCategoryAndPublisher.selectCategoryAndPublisher("backend/bookAdd");
	}

	@Override
	public ModelAndView execute(String idx) {
		ModelAndView mav = selectCategoryAndPublisher.selectCategoryAndPublisher("backend/bookAdd");
		mav.addObject("book", bookService.selectBookInfo(idx));
		return mav;
	}

	
}
