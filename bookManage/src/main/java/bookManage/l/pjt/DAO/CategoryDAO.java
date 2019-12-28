package bookManage.l.pjt.DAO;

import java.util.List;
import java.util.Map;

public interface CategoryDAO {
	public void insertCategory(Map<String, Object> map);

	public List<Map<String, String>> selectCategory();

	public void updateCategory(Map<String, Object> map);

	public void deleteCategory(Map<String, Object> map);

	public void deleteCategoryRelation(Map<String, Object> map);
	
	public void insertCategoryFormBook(Map<String, Object> map);
	
	public void updateCategoryFromBook(Map<String, Object> map);
}
