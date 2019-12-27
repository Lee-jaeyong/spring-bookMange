package bookManage.l.pjt.book.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

	public Book selectBookInfo(String idx) {
		return bookDAO.selectBookInfo(idx);
	}
	
	public void insertBook(Book book) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("isbn", book.getIsbn());
		map.put("bookName", book.getBookName());
		map.put("bookStock", book.getStock());
		map.put("bookPrice", book.getBookPrice());
		map.put("bookContent", book.getBookContent());
		map.put("bookBuyType", book.getBookBuyType());
		map.put("bookImg", book.getBookImg());
		map.put("bookStatus", book.getLendStatus());
		map.put("bookAuthor", book.getAuthor());
		map.put("bookDetailContent", book.getBookDetail());
		map.put("bookCountry", book.getCountry());
		bookDAO.insertBook(map);
		String bookIdx = bookDAO.selectNowInsertBookIdx();
		map.put("categoryNum", book.getCategoryNum());
		map.put("publisherNum", book.getPublisherNum());
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
