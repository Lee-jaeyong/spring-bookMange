package bookManage.l.pjt.mainController;

import java.util.List;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import bookManage.l.pjt.domain.Book;

@Controller
public class AdminPageController {

	private static final Logger logger = LoggerFactory.getLogger(AdminPageController.class);

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {
		logger.info("/index");
		return "backend/index";
	}

	@RequestMapping(value = "/bookList", method = RequestMethod.GET)
	public String bookList() {
		return "backend/bookList";
	}

	@RequestMapping(value = "/bookAddForm", method = RequestMethod.GET)
	public String bookAddForm() {
		return "backend/bookAdd";
	}

	@RequestMapping(value = "/categoryAndPublisherNonSelect", method = RequestMethod.GET)
	public String categoryAndPublisherNonSelect() {
		return "backend/categoryAndPublisherNonSelect";
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

	@RequestMapping(value = "/addBook", method = RequestMethod.POST)
	public String bookAdd(@ModelAttribute @Valid Book book, BindingResult result) {
		if (result.hasErrors()) {
			List<ObjectError> list = result.getAllErrors();
			for (ObjectError error : list)
				logger.error(error.getDefaultMessage());
			return "backend/bookAdd";
		}
		return "redirect:/bookList";
	}
}
