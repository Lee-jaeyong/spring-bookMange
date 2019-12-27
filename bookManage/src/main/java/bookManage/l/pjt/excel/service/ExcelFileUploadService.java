package bookManage.l.pjt.excel.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bookManage.l.pjt.DAO.BookDAO;

@Service
public class ExcelFileUploadService {

	@Autowired
	BookDAO bookDAO;

	public List<Map<String, String>> excelFileUpload(String[] value) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", value);
		return bookDAO.excelFileUpload(map);
	}
}
