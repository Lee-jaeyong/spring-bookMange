package bookManage.l.pjt.domain;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class Book {

	private String bookIdx;

	@NotNull(message = "도서명을 입력해주세요.")
	@Size(min = 1, message = "도서명을 입력해주세요")
	private String bookName;

	@NotNull(message = "ISBN을 입력해주세요.")
	@Size(min = 1, message = "ISBN을 입력해주세요.")
	private String bookISBN;

	@NotNull(message = "매입 가격을 입력해주세요.")
	private long bookPrice;

	@NotNull(message = "수량을 입력해주세요.")
	private int bookStock;

	@NotNull(message = "저자를 입력해주세요.")
	@Size(min = 1, message = "저자를 입력해주세요.")
	private String bookAuthor;

	private byte bookStatus;
	private byte categoryIdx;
	private byte publisherIdx;
	private byte bookBuyType;
	private byte bookCountry;

	private String bookImg;

	@NotNull(message = "도서 줄거리를 입력해주세요.")
	@Size(min = 1, message = "도서 줄거리를 입력해주세요.")
	private String bookContent;

	@NotNull(message = "상세정보를 입력해주세요.")
	@Size(min = 1, message = "상세정보를 입력해주세요.")
	private String bookDetailContent;

	public void setBookIdx(String bookIdx) {
		this.bookIdx = bookIdx;
	}

	public String getBookIdx() {
		return bookIdx;
	}

	public byte getBookBuyType() {
		return bookBuyType;
	}

	public void setBookBuyType(byte bookBuyType) {
		this.bookBuyType = bookBuyType;
	}

	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public String getBookISBN() {
		return bookISBN;
	}

	public void setBookISBN(String bookISBN) {
		this.bookISBN = bookISBN;
	}

	public long getBookPrice() {
		return bookPrice;
	}

	public void setBookPrice(long bookPrice) {
		this.bookPrice = bookPrice;
	}

	public int getBookStock() {
		return bookStock;
	}

	public void setBookStock(int bookStock) {
		this.bookStock = bookStock;
	}

	public String getBookAuthor() {
		return bookAuthor;
	}

	public void setBookAuthor(String bookAuthor) {
		this.bookAuthor = bookAuthor;
	}

	public byte getBookStatus() {
		return bookStatus;
	}

	public void setBookStatus(byte bookStatus) {
		this.bookStatus = bookStatus;
	}

	public byte getCategoryIdx() {
		return categoryIdx;
	}

	public void setCategoryIdx(byte categoryIdx) {
		this.categoryIdx = categoryIdx;
	}

	public byte getPublisherIdx() {
		return publisherIdx;
	}

	public void setPublisherIdx(byte publisherIdx) {
		this.publisherIdx = publisherIdx;
	}

	public byte getBookCountry() {
		return bookCountry;
	}

	public void setBookCountry(byte bookCountry) {
		this.bookCountry = bookCountry;
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

	public String getBookDetailContent() {
		return bookDetailContent;
	}

	public void setBookDetailContent(String bookDetailContent) {
		this.bookDetailContent = bookDetailContent;
	}

}
