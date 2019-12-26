package bookManage.l.pjt.domain;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class Book {

	@NotNull(message = "�������� �Է����ּ���.")
	@Size(min = 1, message = "�������� �Է����ּ���")
	private String bookName;

	@NotNull(message = "ISBN�� �Է����ּ���.")
	@Size(min = 1, message = "ISBN�� �Է����ּ���.")
	private String isbn;

	@NotNull(message = "���� ������ �Է����ּ���.")
	private long bookPrice;

	@NotNull(message = "������ �Է����ּ���.")
	private byte stock;

	@NotNull(message = "���ڸ� �Է����ּ���.")
	@Size(min = 1, message = "���ڸ� �Է����ּ���.")
	private String author;

	private byte lendStatus;
	private byte categoryNum;
	private byte publisherNum;

	@NotNull(message = "���� �̹����� �������ּ���.")
	@Size(min = 1, message = "���� �̹����� �������ּ���.")
	private String bookImg;

	@NotNull(message = "���� �ٰŸ��� �Է����ּ���.")
	@Size(min = 1, message = "���� �ٰŸ��� �Է����ּ���.")
	private String bookContent;

	@NotNull(message = "�������� �Է����ּ���.")
	@Size(min = 1, message = "�������� �Է����ּ���.")
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

	public byte getStock() {
		return stock;
	}

	public void setStock(byte stock) {
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
