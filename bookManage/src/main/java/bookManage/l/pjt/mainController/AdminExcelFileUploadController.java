package bookManage.l.pjt.mainController;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import bookManage.l.pjt.excel.service.ExcelFileUploadService;
import bookManage.l.pjt.requestCommand.ExcelFileUpload;

@Controller
public class AdminExcelFileUploadController {

	@Autowired
	ExcelFileUploadService excelFileUploadService;

	@GetMapping("excelFileUpload")
	public ModelAndView addBook(ExcelFileUpload excelFileUpload)
			throws JsonGenerationException, JsonMappingException, IOException {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("backend/excelFileUpload");
		String[] header = excelFileUpload.getChkHead().split(",");
		String[] value = excelFileUpload.getChkValue().split(",");
		List<Map<String, String>> list = excelFileUploadService.excelFileUpload(value);
		ArrayList<String> changeHeader = new ArrayList<String>();
		Iterator<String> mapIter = list.get(0).keySet().iterator();
		while (mapIter.hasNext()) {
			String key = mapIter.next();
			if (key.equals("bookIdx"))
				changeHeader.add("도서 고유 번호");
			else if (key.equals("bookISBN"))
				changeHeader.add("ISBN");
			else if (key.equals("bookName"))
				changeHeader.add("도서명");
			else if (key.equals("bookStock"))
				changeHeader.add("도서 수량");
			else if (key.equals("bookStatus"))
				changeHeader.add("도서 상태");
			else if (key.equals("bookPrice"))
				changeHeader.add("도서 매입 가격");
			else if (key.equals("bookDate"))
				changeHeader.add("도서 등록일");
		}
		header = new String[changeHeader.size()];
		for (int i = 0; i < header.length; i++)
			header[i] = changeHeader.get(i);
		mav.addObject("chkHead", header);
		mav.addObject("chkList", excelFileUploadService.excelFileUpload(value));
		return mav;
	}
}
