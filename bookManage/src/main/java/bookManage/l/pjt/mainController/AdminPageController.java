package bookManage.l.pjt.mainController;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class AdminPageController {

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index(Model model) {
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
}
