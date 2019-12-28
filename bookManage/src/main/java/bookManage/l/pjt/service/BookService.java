package bookManage.l.pjt.service;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import bookManage.l.pjt.DAO.BookDAO;
import bookManage.l.pjt.DAO.CategoryDAO;
import bookManage.l.pjt.DAO.PublisherDAO;
import bookManage.l.pjt.domain.Book;
import bookManage.l.pjt.requestCommand.BookListRequest;

@Service
public class BookService {

	@Autowired
	ObjectMapper objectMapper;

	@Autowired
	BookDAO bookDAO;

	@Autowired
	CategoryDAO categoryDAO;

	@Autowired
	PublisherDAO publisherDAO;

	public void updateBookImg(Book book, MultipartFile bookImg, String originFileName, HttpServletRequest request) {
		String imagePath = request.getRealPath("resources/bookImages");
		try {
			File file = new File(imagePath + "\\" + bookImg.getOriginalFilename());
			File originFile = new File(imagePath + "\\" + originFileName);
			bookImg.transferTo(file);
			originFile.delete();
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		Map<String, String> map = new HashMap<String, String>();
		map.put("bookIdx", book.getBookIdx());
		map.put("bookImg", bookImg.getOriginalFilename());
		bookDAO.updateBookImg(map);
	}

	public void updateBook(Book book) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("bookIdx", book.getBookIdx());
		map.put("isbn", book.getBookISBN());
		map.put("bookName", book.getBookName());
		map.put("bookStock", book.getBookStock());
		map.put("bookPrice", book.getBookPrice());
		map.put("bookContent", book.getBookContent());
		map.put("bookBuyType", book.getBookBuyType());
		map.put("bookStatus", book.getBookStatus());
		map.put("bookAuthor", book.getBookAuthor());
		map.put("bookDetailContent", book.getBookDetailContent());
		map.put("bookCountry", book.getBookCountry());
		map.put("categoryIdx", book.getCategoryIdx());
		map.put("publisherIdx", book.getPublisherIdx());
		bookDAO.updateBook(map);
		categoryDAO.updateCategoryFromBook(map);
		publisherDAO.updatePublisherFromBook(map);
	}

	public Book selectBookInfo(String idx) {
		return bookDAO.selectBookInfo(idx);
	}

	public void insertBook(Book book) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("isbn", book.getBookISBN());
		map.put("bookName", book.getBookName());
		map.put("bookStock", book.getBookStock());
		map.put("bookPrice", book.getBookPrice());
		map.put("bookContent", book.getBookContent());
		map.put("bookBuyType", book.getBookBuyType());
		map.put("bookImg", book.getBookImg());
		map.put("bookStatus", book.getBookStatus());
		map.put("bookAuthor", book.getBookAuthor());
		map.put("bookDetailContent", book.getBookDetailContent());
		map.put("bookCountry", book.getBookCountry());
		bookDAO.insertBook(map);
		String bookIdx = bookDAO.selectNowInsertBookIdx();
		map.put("categoryNum", book.getCategoryIdx());
		map.put("publisherNum", book.getPublisherIdx());
		map.put("bookIdx", bookIdx);
		categoryDAO.insertCategoryFormBook(map);
		publisherDAO.insertPublisherFromBook(map);
	}

	public String selectBookList(BookListRequest bookListRequest) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("pageNum", bookListRequest.getPageNum() * 10);
		map.put("searchType", bookListRequest.getSearchType());
		map.put("searchInput", "%" + bookListRequest.getSearchInput() + "%");
		map.put("searchCategory", bookListRequest.getSearchCategory());
		map.put("searchPublisher", bookListRequest.getSearchPublisher());
		map.put("searchBeforeDate", bookListRequest.getSearchBeforeDate());
		map.put("searchAfterDate", bookListRequest.getSearchAfterDate());
		map.put("sortType", bookListRequest.getSortType());
		List<Map<String, String>> bookList = bookDAO.selectBookList(map);
		int count = Integer.parseInt(bookDAO.selectBookCount(map));
		int startBlock = bookListRequest.getPageNum() / 10 * 10;
		int endBlock = startBlock + 10;
		int totalBlock = (int) Math.ceil(count / 10.0);
		if (endBlock > totalBlock)
			endBlock = totalBlock;
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("result", bookList);
		result.put("startBlock", startBlock);
		result.put("endBlock", endBlock);
		result.put("totalBlock", totalBlock);
		return objectMapper.writeValueAsString(result);
	}
}
