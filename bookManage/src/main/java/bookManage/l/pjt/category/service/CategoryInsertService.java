package bookManage.l.pjt.category.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bookManage.l.pjt.DAO.CategoryDAO;
import bookManage.l.pjt.domain.Category;

@Service
public class CategoryInsertService {

	@Autowired
	private CategoryDAO categoryDAO;

	public void insertCategory(Category category) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("categoryName", category.getName());
		categoryDAO.insertCategory(map);
	}
}
