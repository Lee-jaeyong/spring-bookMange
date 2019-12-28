package bookManage.l.pjt.mainController;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import bookManage.l.pjt.page.model.SelectCategoryAndPublisher;
import bookManage.l.pjt.service.BookService;

@Controller
public class AdminPageController {

	private static final Logger logger = LoggerFactory.getLogger(AdminPageController.class);

	@Autowired
	SelectCategoryAndPublisher selectCategoryAndPublisher;

	@Autowired
	BookService bookService;

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index(HttpServletRequest request) {
		logger.info(request.getRealPath("resources/bookImages"));
		return "backend/index";
	}

	@RequestMapping(value = "/bookList", method = RequestMethod.GET)
	public ModelAndView bookList() {
		return selectCategoryAndPublisher.selectCategoryAndPublisher("backend/bookList");
	}

	@RequestMapping(value = "/bookAddForm", method = RequestMethod.GET)
	public ModelAndView bookAddForm() {
		return selectCategoryAndPublisher.selectCategoryAndPublisher("backend/bookAdd");
	}

	@RequestMapping(value = "/categoryAndPublisherNonSelect", method = RequestMethod.GET)
	public ModelAndView categoryAndPublisherNonSelect() {
		return selectCategoryAndPublisher.selectCategoryAndPublisher("backend/categoryAndPublisherNonSelect");
	}

	@RequestMapping(value = "/lendApplyManage", method = RequestMethod.GET)
	public String lendApplyManage() {
		return "backend/lendApplyManage";
	}

	@RequestMapping(value = "/bookReservation", method = RequestMethod.GET)
	public String bookReservation() {
		return "backend/bookReservation";
	}

	@RequestMapping(value = "/bookLendHistory", method = RequestMethod.GET)
	public String bookLendHistory() {
		return "backend/bookLendHistory";
	}

	@RequestMapping(value = "/bookWishList", method = RequestMethod.GET)
	public String bookWishList() {
		return "backend/bookWishList";
	}

	@RequestMapping(value = "/userList", method = RequestMethod.GET)
	public String userList() {
		return "backend/userList";
	}

	@RequestMapping(value = "/lendChart", method = RequestMethod.GET)
	public String lendChart() {
		return "backend/lendChart";
	}

	@RequestMapping(value = "/categoryOrPublisherAddForm", method = RequestMethod.GET)
	public String categoryOrPublisherAddForm() {
		return "backend/categoryOrPublisherAddForm";
	}

	@RequestMapping(value = "/reviewList", method = RequestMethod.GET)
	public String reviewList() {
		return "backend/reviewList";
	}

	@RequestMapping(value = "/QandAList", method = RequestMethod.GET)
	public String QandAList() {
		return "backend/QandAList";
	}

	@PostMapping(value = "/selectBook")
	public ModelAndView readBookInfo(Model model, @RequestParam(value = "idx", required = true) String idx) {
		model.addAttribute("book", bookService.selectBookInfo(idx));
		return selectCategoryAndPublisher.selectCategoryAndPublisher("backend/bookAdd");
	}

}
