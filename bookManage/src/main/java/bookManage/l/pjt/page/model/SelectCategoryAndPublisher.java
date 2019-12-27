package bookManage.l.pjt.page.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;

import bookManage.l.pjt.category.service.CategorySelectService;
import bookManage.l.pjt.publisher.service.PublisherSelectService;

@Component
public class SelectCategoryAndPublisher {

	@Autowired
	CategorySelectService categorySelectService;

	@Autowired
	PublisherSelectService publisherSelectService;

	public ModelAndView selectCategoryAndPublisher(String path) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName(path);
		mav.addObject("publisher", publisherSelectService.selectPublisher());
		mav.addObject("category", categorySelectService.selectCategory());
		return mav;
	}
}
