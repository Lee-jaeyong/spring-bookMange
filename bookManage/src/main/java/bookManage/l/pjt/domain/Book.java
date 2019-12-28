package bookManage.l.pjt.domain;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class Book {

	private String bookIdx;

	@NotNull(message = "�������� �Է����ּ���.")
	@Size(min = 1, message = "�������� �Է����ּ���")
	private String bookName;

	@NotNull(message = "ISBN�� �Է����ּ���.")
	@Size(min = 1, message = "ISBN�� �Է����ּ���.")
	private String bookISBN;

	@NotNull(message = "���� ������ �Է����ּ���.")
	private long bookPrice;

	@NotNull(message = "������ �Է����ּ���.")
	private int bookStock;

	@NotNull(message = "���ڸ� �Է����ּ���.")
	@Size(min = 1, message = "���ڸ� �Է����ּ���.")
	private String bookAuthor;

	private byte bookStatus;
	private byte categoryIdx;
	private byte publisherIdx;
	private byte bookBuyType;
	private byte bookCountry;

	private String bookImg;

	@NotNull(message = "���� �ٰŸ��� �Է����ּ���.")
	@Size(min = 1, message = "���� �ٰŸ��� �Է����ּ���.")
	private String bookContent;

	@NotNull(message = "�������� �Է����ּ���.")
	@Size(min = 1, message = "�������� �Է����ּ���.")
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
