package bookManage.l.pjt.ajaxController;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import bookManage.l.pjt.domain.Category;
import bookManage.l.pjt.service.CategoryService;

@RestController
@RequestMapping(value = "category")
public class CategoryController {

	private static Logger logger = LoggerFactory.getLogger(CategoryController.class);

	@Resource
	CategoryService categoryService;

	@Autowired
	ObjectMapper objMapper;

	@GetMapping(value = "/deleteCategory", produces = "text/plain;charset=UTF-8")
	public String deleteCategory(Category category) {
		categoryService.deleteCategory(category);
		return "ī�װ��� ���������� �����Ǿ����ϴ�.";
	}

	@GetMapping(value = "/updateCategory", produces = "text/plain;charset=UTF-8")
	public String updateCategory(@Valid Category category, BindingResult result) {
		if (result.hasErrors()) {
			List<ObjectError> error = result.getAllErrors();
			for (ObjectError errorIndex : error) {
				logger.warn(errorIndex.getDefaultMessage());
				return errorIndex.getDefaultMessage();
			}
		}
		categoryService.updateCategory(category);
		return "ī�װ��� �����Ǿ����ϴ�.";
	}

	@GetMapping(value = "/addCategory", produces = "text/plain;charset=UTF-8")
	public String addCategory(@Valid Category category, BindingResult result) {
		if (result.hasErrors()) {
			List<ObjectError> error = result.getAllErrors();
			for (ObjectError errorIndex : error) {
				logger.warn(errorIndex.getDefaultMessage());
				return errorIndex.getDefaultMessage();
			}
		}
		categoryService.insertCategory(category);
		return "ī�װ��� ��ϵǾ����ϴ�.";
	}

	@GetMapping(value = "/selectCategory", produces = "text/plain;charset=UTF-8")
	public String selectCategory() throws JsonGenerationException, JsonMappingException, IOException {
		return objMapper.writeValueAsString(categoryService.selectCategory());
	}
}
