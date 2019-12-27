package bookManage.l.pjt.page.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.BindingResult;
import org.springframework.web.servlet.ModelAndView;

import bookManage.l.pjt.totalAction.Action;

@Component
public class BookListImplAction implements Action{

	@Autowired
	SelectCategoryAndPublisher selectCategoryAndPublisher;
	
	@Override
	public ModelAndView execute(BindingResult result) {
		return null;
	}

	@Override
	public ModelAndView execute() {
		return selectCategoryAndPublisher.selectCategoryAndPublisher("backend/bookList");
	}

	@Override
	public ModelAndView execute(String idx) {
		return null;
	}

}
