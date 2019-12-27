package bookManage.l.pjt.domain;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class Book {

	@NotNull(message = "도서명을 입력해주세요.")
	@Size(min = 1, message = "도서명을 입력해주세요")
	private String bookName;

	@NotNull(message = "ISBN을 입력해주세요.")
	@Size(min = 1, message = "ISBN을 입력해주세요.")
	private String isbn;

	@NotNull(message = "매입 가격을 입력해주세요.")
	private long bookPrice;

	@NotNull(message = "수량을 입력해주세요.")
	private int stock;

	@NotNull(message = "저자를 입력해주세요.")
	@Size(min = 1, message = "저자를 입력해주세요.")
	private String author;

	private byte lendStatus;
	private byte categoryNum;
	private byte publisherNum;
	private byte bookBuyType;
	private byte country;

	public byte getBookBuyType() {
		return bookBuyType;
	}

	public byte getCountry() {
		return country;
	}

	public void setCountry(byte country) {
		this.country = country;
	}

	public void setBookBuyType(byte bookBuyType) {
		this.bookBuyType = bookBuyType;
	}

	private String bookImg;

	@NotNull(message = "도서 줄거리를 입력해주세요.")
	@Size(min = 1, message = "도서 줄거리를 입력해주세요.")
	private String bookContent;

	@NotNull(message = "상세정보를 입력해주세요.")
	@Size(min = 1, message = "상세정보를 입력해주세요.")
	private String bookDetail;

	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public String getIsbn() {
		return isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	public long getBookPrice() {
		return bookPrice;
	}

	public void setBookPrice(long bookPrice) {
		this.bookPrice = bookPrice;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public byte getLendStatus() {
		return lendStatus;
	}

	public void setLendStatus(byte lendStatus) {
		this.lendStatus = lendStatus;
	}

	public byte getCategoryNum() {
		return categoryNum;
	}

	public void setCategoryNum(byte categoryNum) {
		this.categoryNum = categoryNum;
	}

	public byte getPublisherNum() {
		return publisherNum;
	}

	public void setPublisherNum(byte publisherNum) {
		this.publisherNum = publisherNum;
	}

	public String getBookImg() {
		return bookImg;
	}

	public void setBookImg(String bookImg) {
		this.bookImg = bookImg;
	}

	public String getBookContent() {
		return bookContent;
	}

	public void setBookContent(String bookContent) {
		this.bookContent = bookContent;
	}

	public String getBookDetail() {
		return bookDetail;
	}

	public void setBookDetail(String bookDetail) {
		this.bookDetail = bookDetail;
	}

}
