package bookManage.l.pjt.category.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bookManage.l.pjt.DAO.CategoryDAO;

@Service
public class CategorySelectService {
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	public List<Map<String, String>> selectCategory(){
		return categoryDAO.selectCategory();
	}
}
