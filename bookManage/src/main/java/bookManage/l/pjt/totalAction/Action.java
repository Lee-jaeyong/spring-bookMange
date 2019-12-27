package bookManage.l.pjt.totalAction;

import org.springframework.validation.BindingResult;
import org.springframework.web.servlet.ModelAndView;

public interface Action {
	public ModelAndView execute(String idx);
	public ModelAndView execute(BindingResult result);
	public ModelAndView execute();
}
