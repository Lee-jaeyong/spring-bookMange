<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="include/head.jsp"%>

<style>
.showImg {
	
}

.hideImg {
	display: none;
}
</style>
<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">
		<%@include file="include/sideBar.jsp"%>
		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<nav
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
					<%@include file="include/sideToggle.html"%>
				</nav>
				<!-- End of Topbar -->

				<div class="container-fluid">
					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">도서 검색</h6>
						</div>
						<div class="card-body">
							<table class="table">
								<tbody>
									<tr>
										<td>검색 분류 :</td>
										<td><select class="form-control" id="searchType"
											name="searchType">
												<option value="">분 류</option>
												<option value="bookIdx">고유 번호</option>
												<option value="bookISBN">ISBN</option>
												<option value="bookName">도서명</option>
												<option value="bookStock">도서 수량</option>
												<option value="bookStatus">대출 가능 여부</option>
										</select></td>
										<td><input type="text"
											class="form-control form-control-user" id="searchInput"
											placeholder="도서 수량"></td>
									</tr>
									<tr>
										<td></td>
										<td><select class="form-control" id="searchCategory"
											name="searchCategory">
												<option value="">분 류</option>
												<c:forEach items="${category}" var="item">
													<option value="${item.categoryIdx}">${item.categoryName}</option>
												</c:forEach>
										</select></td>
										<td><select class="form-control" id="searchPublisher"
											name="searchPublisher">
												<option value="">출판사</option>
												<c:forEach items="${publisher}" var="item">
													<option value="${item.publisherIdx}">${item.publisherName}</option>
												</c:forEach>
										</select></td>
									</tr>
									<tr>
										<td>도서 등록일 :</td>
										<td><input type="text"
											class="form-control form-control-user" id="beforeDate"
											placeholder="ex)2019-10-19 일 부터"></td>
										<td><input type="text"
											class="form-control form-control-user" id="afterDate"
											placeholder="ex)2019-10-20 일 까지"></td>
									</tr>
									<tr>
										<td colspan="3" style="text-align: center;">
											<button id="btnSearchBook" type="button"
												class="btn btn-primary col-lg-7">검 색</button>
										</td>
									</tr>
									<tr>
										<td colspan="3" style="text-align: center;">
											<button id="btnSearchClear" type="button"
												class="btn btn-secondary col-lg-7">검색 초기화</button>
										</td>
									</tr>
									<tr>
										<td colspan="3" style="text-align: center;"><a
											href="javascript:excelFileUpload()"
											class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm mr-3"><i
												class="fas fa-download fa-sm text-white-50"></i> 엑셀 파일 업로드</a>
											<div class="form-check-inline">
												<label class="form-check-label"> <input
													type="checkbox" class="form-check-input" value="bookIdx"
													style="width: 16px; height: 16px;" checked="checked"
													name="chkExcelUpload" disabled="disabled"><span>도서 번호</span>
												</label>
											</div>
											<div class="form-check-inline">
												<label class="form-check-label"> <input
													type="checkbox" class="form-check-input" value="bookISBN"
													style="width: 16px; height: 16px;" checked="checked"
													name="chkExcelUpload" disabled="disabled"><span>ISBN</span>
												</label>
											</div>
											<div class="form-check-inline">
												<label class="form-check-label"> <input
													type="checkbox" class="form-check-input" value="bookName"
													style="width: 16px; height: 16px;" name="chkExcelUpload"><span>도서명</span>
												</label>
											</div>
											<div class="form-check-inline">
												<label class="form-check-label"> <input
													type="checkbox" class="form-check-input" value="bookStock"
													style="width: 16px; height: 16px;" name="chkExcelUpload"><span>도서 수량</span>
												</label>
											</div>
											<div class="form-check-inline">
												<label class="form-check-label"> <input
													type="checkbox" class="form-check-input" value="bookStatus"
													style="width: 16px; height: 16px;" name="chkExcelUpload"><span>대출 가능 여부</span>
												</label>
											</div>
											<div class="form-check-inline">
												<label class="form-check-label"> <input
													type="checkbox" class="form-check-input" value="bookPrice"
													style="width: 16px; height: 16px;" name="chkExcelUpload"><span>매입 도서 가격</span>
												</label>
											</div>
											<div class="form-check-inline">
												<label class="form-check-label"> <input
													type="checkbox" class="form-check-input" value="bookDate"
													style="width: 16px; height: 16px;" name="chkExcelUpload"><span>도서 등록일</span>
												</label>
											</div></td>
									</tr>
									<tr>
										<td colspan="3"></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>

				<!-- Begin Page Content -->
				<div class="container-fluid">
					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">도서 목록</h6>
						</div>
						<div class="card-body">
							<div class="row">
								<div class="col-lg-3 mb-3">
									<select class="form-control" id="sortType">
										<option value="bookIdx">정 렬</option>
										<option value="bookPrice">매입 가격 순</option>
										<option value="bookDate">등록일 순</option>
										<option value="bookIdx">도서 고유 번호 순</option>
									</select>
								</div>
								<div class="col-lg-3 mb-3">
									<select class="form-control" id="selectShowImage">
										<option value="1">도서 이미지 포함</option>
										<option value="0">도서 이미지 미포함</option>
									</select>
								</div>
							</div>
							<div class="table-responsive">
								<table class="table table-bordered" width="100%" cellspacing="0">
									<thead>
										<tr>
											<th></th>
											<th>도서 고유 번호</th>
											<th>ISBN</th>
											<th class="showImg">이미지</th>
											<th>도서명</th>
											<th>도서 수량</th>
											<th>대출 가능 여부</th>
											<th></th>
										</tr>
									</thead>
									<tbody id="bookListSection">
									</tbody>
								</table>
							</div>
							<div class="btn-group" id="pageSection"></div>
						</div>
					</div>
				</div>
			</div>
			<!-- End of Main Content -->
			<%@include file="include/footer.html"%>
			<!-- End of Footer -->
		</div>
		<!-- End of Content Wrapper -->
	</div>
	<form id="formBookRead" method="post">
		<input type="hidden" value="" id="idx" name="idx" />
	</form>
	<!-- End of Page Wrapper -->
	<input type="hidden" id="hiddenSearchType" value="" />
	<input type="hidden" id="hiddenSearchInput" value="" />
	<input type="hidden" id="hiddenSearchCategory" value="" />
	<input type="hidden" id="hiddenSearchPublisher" value="" />
	<input type="hidden" id="hiddenSearchBeforeDate" value="" />
	<input type="hidden" id="hiddenSearchAfterDate" value="" />
	<%@include file="include/scrollButton.jsp"%>
	<%@include file="include/script.jsp"%>
	<!-- The Modal -->
	  <div class="modal fade" id="updateImg">
	    <div class="modal-dialog">
	      <div class="modal-content">
	      
	        <!-- Modal Header -->
	        <div class="modal-header">
	          <h4 class="modal-title">Modal Heading</h4>
	          <button type="button" class="close" data-dismiss="modal">&times;</button>
	        </div>
	        
	        <!-- Modal body -->
	        <div class="modal-body">
				<div class="row">
					<div class="col-lg-6">
			        	<label>* 변경 전 이미지 </label>
						<img id="imgUpdateImg" src="" style="width: 200px;height: 200px;">
					</div>
					<div class="col-lg-6">
			        	<label>* 변경 후 이미지 </label>
			        	<form id="formUpdateImg" action="./updateBookImg" method="post" enctype="multipart/form-data">
			        		<input type="hidden" id="originFileName" name="originFileName" class="col">
				        	<input type="hidden" id="inputUpdateIdx" name="bookIdx" value="">
			        		<input type="file" id="file" name="file" class="col">
							<img id="afterUpdateImg" src="" style="width: 200px;height: 180px;">
						</form>
					</div>
				</div>	        	
	        </div>
	        
	        <!-- Modal footer -->
	        <div class="modal-footer">
	          <button type="button" id="btnUpdateImg" class="btn btn-danger">이미지 변경</button>
	          <button type="button" class="btn btn-danger" data-dismiss="modal">닫 기</button>
	        </div>
	      </div>
	    </div>
	  </div>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#beforeDate, #afterDate").datepicker({
				dateFormat : 'yy-mm-dd'
			});

			$("#btnSearchBook").click(function() {
				btnSearchExecute();
				loadBookList(0);
			});

			$("#btnSearchClear").click(function() {
				btnSearchClear();
				loadBookList(0);
			});

			$("#sortType").change(function() {
				loadBookList(0);
				$("#selectShowImage option:eq(0)").prop("selected", true);
				$(".hideImg").attr("class", "showImg");
			});

			$("#selectShowImage").change(function() {
				if ($(this).val() === '0')
					$(".showImg").attr("class", "hideImg");
				else
					$(".hideImg").attr("class", "showImg");
			});
			
			$("#file").change(function(){
				readURL(this, 'afterUpdateImg');
			});
			
			$("#btnUpdateImg").click(function(){
				updateImgExecute();
			});
		});

		function updateImgExecute(){
			if($("#file").val() === '')
				alert("이미지를 선택해주시기 바랍니다.");
			else
				if(confirm("정말 이미지를 변경하시겠습니까?"))
					$("#formUpdateImg").submit();
		}
		
		function excelFileUpload() {
			var chkValue = '';
			var chkHead = '';
			$("input[name=chkExcelUpload]:checked").each(function() {
				chkValue += $(this).val() + ',';
				chkHead += $(this).next().text() + ',';
			});
			location.href = "./excelFileUpload?chkHead=" + chkHead
					+ "&chkValue=" + chkValue;
		}

		function btnSearchExecute() {
			$("#hiddenSearchType").val($("#searchType").val());
			$("#hiddenSearchInput").val($("#searchInput").val());
			$("#hiddenSearchCategory").val($("#searchCategory").val());
			$("#hiddenSearchPublisher").val($("#searchPublisher").val());
			$("#hiddenSearchBeforeDate").val($("#beforeDate").val());
			$("#hiddenSearchAfterDate").val($("#afterDate").val());
		}

		function btnSearchClear() {
			$("#searchCategory option:eq(0)").prop("selected", true);
			$("#searchPublisher option:eq(0)").prop("selected", true);
			$("#searchType option:eq(0)").prop("selected", true);
			$("#hiddenSearchType").val('');
			$("#searchInput").val('');
			$("#beforeDate").val('');
			$("#afterDate").val('');
			$("#hiddenSearchInput").val('');
			$("#hiddenSearchCategory").val('');
			$("#hiddenSearchPublisher").val('');
			$("#hiddenSearchBeforeDate").val('');
			$("#hiddenSearchAfterDate").val('');
		}

		function readBook(idx) {
			$("#idx").val(idx);
			$("#formBookRead").attr("action","./selectBook").submit();
		}

		function loadBookList(pageNum) {
			$
					.ajax({
						url : "./bookList/selectBookList",
						dataType : "json",
						data : {
							pageNum : pageNum,
							searchType : $("#hiddenSearchType").val(),
							searchInput : $("#hiddenSearchInput").val(),
							searchCategory : $("#hiddenSearchCategory").val(),
							searchPublisher : $("#hiddenSearchPublisher").val(),
							searchBeforeDate : $("#hiddenSearchBeforeDate")
									.val(),
							searchAfterDate : $("#hiddenSearchAfterDate").val(),
							sortType : $("#sortType").val()
						},
						success : function(data) {
							var bookListSection = '';
							var pageSection = '';
							var startBlock = data.startBlock;
							var endBlock = data.endBlock;
							var totalBlock = data.totalBlock;
							var bookList = data.result;
							for (var i = 0; i < bookList.length; i++) {
								bookListSection += "<tr>";
								bookListSection += '<td></td>';
								bookListSection += '<td width="20px;" style="text-align:center;">'
										+ bookList[i].bookIdx + '</td>';
								bookListSection += '<td>'
										+ bookList[i].bookISBN + '</td>';
								bookListSection += '<td class="showImg" width="130px;" style="text-align:center;"><img src="${pageContext.request.contextPath}/resources/bookImages/'+bookList[i].bookImg+'" style="width:100px; height:150px;"/><button type="button" class="btn btn-warning btn-block mt-1" data-toggle="modal" data-target="#updateImg" onclick="updateImg('+bookList[i].bookIdx+',\''+bookList[i].bookImg+'\')">변 경</button></td>';
								bookListSection += '<td>'
										+ bookList[i].bookName + '</td>';
								bookListSection += '<td>'
										+ bookList[i].bookStock + '</td>';
								var status = "대출 가능";
								if (bookList[i].bookStatus == 0)
									status = "대출 불가";
								bookListSection += '<td>' + status + '</td>';
								bookListSection += '<td width="120px;" style="text-align:center;"><button type="button" class="btn btn-primary" onclick="readBook('
										+ bookList[i].bookIdx
										+ ')">상세 보기</button></td>';
								bookListSection += "</tr>";
							}

							if (startBlock == 0)
								pageSection += '<button type="button" class="btn btn-outline-primary" disabled="disabled">Prev</button>';
							else
								pageSection += '<button type="button" class="btn btn-outline-primary">Prev</button>';

							for (var i = startBlock; i < endBlock; i++) {
								if (i == pageNum)
									pageSection += '<button type="button" class="btn btn-outline-primary" disabled="disabled">'
											+ (i + 1) + '</button>';
								else
									pageSection += '<button type="button" class="btn btn-outline-primary" onclick="loadBookList('
											+ i + ')">' + (i + 1) + '</button>';
							}

							if (endBlock == totalBlock)
								pageSection += '<button type="button" class="btn btn-outline-primary" disabled="disabled">Next</button>';
							else
								pageSection += '<button type="button" class="btn btn-outline-primary">Next</button>';
							$("#bookListSection").html(bookListSection);
							$("#pageSection").html(pageSection);
						}
					});
		}

		function updateImg(idx,img)
		{
			$("#inputUpdateIdx").val(idx);
			$("#imgUpdateImg").attr("src","${pageContext.request.contextPath}/resources/bookImages/"+img);
			$("#originFileName").val(img);
		}
		
		// 이미지 미리보기
		function readURL(input, area) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();
				reader.onload = function(e) {
					document.getElementById(area).src = e.target.result;
				};
				reader.readAsDataURL(input.files[0]);
			}
		}
		
		window.onload = function() {
			loadBookList(0);
		}
	</script>

</body>

</html>
