package bookManage.l.pjt.page.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;

import bookManage.l.pjt.service.CategoryService;
import bookManage.l.pjt.service.PublisherService;

@Component
public class SelectCategoryAndPublisher {

	@Autowired
	CategoryService categoryService;

	@Autowired
	PublisherService publisherService;

	public ModelAndView selectCategoryAndPublisher(String path) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName(path);
		mav.addObject("publisher", publisherService.selectPublisher());
		mav.addObject("category", categoryService.selectCategory());
		return mav;
	}
}
