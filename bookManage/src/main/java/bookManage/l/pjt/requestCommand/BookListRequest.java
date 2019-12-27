package bookManage.l.pjt.requestCommand;

public class BookListRequest {
	private int pageNum;
	private String searchType;
	private String searchInput;
	private String searchCategory;
	private String searchPublisher;
	private String searchBeforeDate;
	private String searchAfterDate;
	private String sortType;

	public String getSortType() {
		return sortType;
	}

	public void setSortType(String sortType) {
		this.sortType = sortType;
	}

	public String getSearchBeforeDate() {
		return searchBeforeDate;
	}

	public void setSearchBeforeDate(String searchBeforeDate) {
		this.searchBeforeDate = searchBeforeDate;
	}

	public String getSearchAfterDate() {
		return searchAfterDate;
	}

	public void setSearchAfterDate(String searchAfterDate) {
		this.searchAfterDate = searchAfterDate;
	}

	public String getSearchType() {
		return searchType;
	}

	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}

	public String getSearchInput() {
		return searchInput;
	}

	public void setSearchInput(String searchInput) {
		this.searchInput = searchInput;
	}

	public String getSearchCategory() {
		return searchCategory;
	}

	public void setSearchCategory(String searchCategory) {
		this.searchCategory = searchCategory;
	}

	public String getSearchPublisher() {
		return searchPublisher;
	}

	public void setSearchPublisher(String searchPublisher) {
		this.searchPublisher = searchPublisher;
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

}
