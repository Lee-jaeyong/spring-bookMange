package bookManage.l.pjt.DAO;

import java.util.List;
import java.util.Map;

import bookManage.l.pjt.domain.Book;

public interface BookDAO {
	public void insertBook(Map<String, Object> map);

	public String selectNowInsertBookIdx();

	public List<Map<String, String>> selectBookList(Map<String, Object> map);

	public String selectBookCount(Map<String, Object> map);

	public List<Map<String, String>> excelFileUpload(Map<String, Object> map);
	
	public Book selectBookInfo(String idx);
}
