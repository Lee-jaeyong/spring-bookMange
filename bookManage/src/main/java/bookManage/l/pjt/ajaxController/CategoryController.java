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

import bookManage.l.pjt.category.service.CategoryDeleteService;
import bookManage.l.pjt.category.service.CategoryInsertService;
import bookManage.l.pjt.category.service.CategorySelectService;
import bookManage.l.pjt.category.service.CategoryUpdateService;
import bookManage.l.pjt.domain.Category;

@RestController
@RequestMapping(value = "category")
public class CategoryController {

	private static Logger logger = LoggerFactory.getLogger(CategoryController.class);

	@Resource
	CategoryInsertService categoryInsertService;

	@Resource
	CategorySelectService categorySelectService;

	@Resource
	CategoryUpdateService categoryUpdateService;

	@Resource
	CategoryDeleteService categoryDeleteService;

	@Autowired
	ObjectMapper objMapper;

	@GetMapping(value = "/deleteCategory", produces = "text/plain;charset=UTF-8")
	public String deleteCategory(Category category) {
		categoryDeleteService.deleteCategory(category);
		return "카테고리가 정상적으로 삭제되었습니다.";
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
		categoryUpdateService.updateCategory(category);
		return "카테고리가 수정되었습니다.";
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
		categoryInsertService.insertCategory(category);
		return "카테고리가 등록되었습니다.";
	}

	@GetMapping(value = "/selectCategory", produces = "text/plain;charset=UTF-8")
	public String selectCategory() throws JsonGenerationException, JsonMappingException, IOException {
		return objMapper.writeValueAsString(categorySelectService.selectCategory());
	}
}
