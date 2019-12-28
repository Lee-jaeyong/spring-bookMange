package bookManage.l.pjt.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bookManage.l.pjt.DAO.CategoryDAO;
import bookManage.l.pjt.domain.Category;

@Service
public class CategoryService {

	@Autowired
	private CategoryDAO categoryDAO;

	public void deleteCategory(Category category) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("categoryIdx", category.getIdx());
		categoryDAO.deleteCategory(map);
		categoryDAO.deleteCategoryRelation(map);
	}

	public void updateCategory(Category category) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("categoryName", category.getName());
		map.put("categoryIdx", category.getIdx());
		categoryDAO.updateCategory(map);
	}

	public List<Map<String, String>> selectCategory() {
		return categoryDAO.selectCategory();
	}

	public void insertCategory(Category category) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("categoryName", category.getName());
		categoryDAO.insertCategory(map);
	}
}
