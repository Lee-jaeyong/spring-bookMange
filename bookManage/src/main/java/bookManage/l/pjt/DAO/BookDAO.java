package bookManage.l.pjt.DAO;

import java.util.List;
import java.util.Map;

import bookManage.l.pjt.domain.Book;

public interface BookDAO {
	public void insertBook(Map<String, Object> map);

	public List<Map<String, String>> selectNonPublisher(Map<String, Object> map);

	public List<Map<String, String>> selectNonCategory(Map<String, Object> map);

	public int selectNonCategoryCount();

	public int selectNonPublisherCount();

	public String selectNowInsertBookIdx();

	public List<Map<String, String>> selectBookList(Map<String, Object> map);

	public String selectBookCount(Map<String, Object> map);

	public List<Map<String, String>> excelFileUpload(Map<String, Object> map);

	public Book selectBookInfo(String idx);

	public void updateBook(Map<String, Object> map);

	public void updateBookImg(Map<String, String> map);
}
