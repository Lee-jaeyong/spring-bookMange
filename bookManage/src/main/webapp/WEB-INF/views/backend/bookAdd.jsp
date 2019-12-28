<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="include/head.jsp"%>
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
					<div class="row">
						<div class="col-lg-12">
							<div class="card shadow mb-4">
								<div class="card-header py-3">
									<c:choose>
										<c:when test="${!empty book }">
											<h6 class="m-0 font-weight-bold text-success">도서 수정</h6>
										</c:when>
										<c:otherwise>
											<h6 class="m-0 font-weight-bold text-primary">도서 등록</h6>
										</c:otherwise>
									</c:choose>
								</div>
								<div class="card-body">
									<c:choose>
										<c:when test="${empty book }">
											<form id="bookForm" action="./addBookExecute" method="post"
												enctype="multipart/form-data">
										</c:when>
										<c:otherwise>
											<form id="bookForm" action="./updateBookExecute"
												method="post" enctype="multipart/form-data">
												<input type="hidden" value="${book.bookIdx} " name="bookIdx" />
										</c:otherwise>
									</c:choose>
									<div class="col-lg-12">
										<c:choose>
											<c:when test="${empty book }">
												<div class="card mb-4 py-3 border-left-primary">
											</c:when>
											<c:otherwise>
												<div class="card mb-4 py-3 border-left-success">
											</c:otherwise>
										</c:choose>
										<div class="card-body">
											<div class="form-group row">
												<div class="col-sm-6 mb-3 mb-sm-0">
													<label for="comment">도서명:</label><input type="text"
														class="form-control form-control-user" name="bookName"
														id="bookName" placeholder="도서명" value="${book.bookName }">
												</div>
												<div class="col-sm-6">
													<label for="comment">ISBN:</label> <input type="text"
														class="form-control form-control-user" name="bookISBN"
														id="isbn" placeholder="ISBN" value="${book.bookISBN }">
												</div>
											</div>
											<hr>
											<div class="form-group row">
												<div class="col-sm-6 mb-3 mb-sm-0">
													<label for="comment">매입 도서 가격:</label> <input type="text"
														class="form-control form-control-user" name="bookPrice"
														id="bookPrice" placeholder="매입 도서 가격"
														value="${book.bookPrice }">
												</div>
												<div class="col-sm-6">
													<label for="comment">도서 수량:</label> <input type="text"
														class="form-control form-control-user" name="bookStock"
														id="stock" placeholder="도서 수량" value="${book.bookStock }">
												</div>
											</div>
											<hr>
											<div class="form-group row">
												<div class="col-sm-6 mb-3 mb-sm-0">
													<label for="comment">저 자:</label> <input type="text"
														class="form-control form-control-user" name="bookAuthor"
														id="author" placeholder="저 자" value="${book.bookAuthor }">
												</div>
												<div class="col-sm-6 mt-3">
													<label for="comment" class="mr-2">대출 가능 여부:</label>
													<c:choose>
														<c:when test="${book.bookStatus eq 1 }">
															<div class="form-check-inline">
																<label class="form-check-label"> <input
																	type="radio" class="form-check-input" name="bookStatus"
																	value="1" checked="checked">대출 가능
																</label>
															</div>
															<div class="form-check-inline">
																<label class="form-check-label"> <input
																	type="radio" class="form-check-input" name="bookStatus"
																	value="0">대출 불가
																</label>
															</div>
														</c:when>
														<c:otherwise>
															<div class="form-check-inline">
																<label class="form-check-label"> <input
																	type="radio" class="form-check-input" name="bookStatus"
																	value="1">대출 가능
																</label>
															</div>
															<div class="form-check-inline">
																<label class="form-check-label"> <input
																	type="radio" class="form-check-input" name="bookStatus"
																	value="0" checked="checked">대출 불가
																</label>
															</div>
														</c:otherwise>
													</c:choose>
												</div>
											</div>
											<hr>
											<div class="form-group row">
												<div class="col-sm-6 mt-3">
													<label for="comment" class="mr-2">매입 종류:</label>
													<c:choose>
														<c:when test="${book.bookBuyType eq 0 }">
															<div class="form-check-inline">
																<label class="form-check-label"> <input
																	type="radio" class="form-check-input"
																	name="bookBuyType" value="0" checked="checked">기
																	부
																</label>
															</div>
															<div class="form-check-inline">
																<label class="form-check-label"> <input
																	type="radio" class="form-check-input"
																	name="bookBuyType" value="1">구 매
																</label>
															</div>
														</c:when>
														<c:otherwise>
															<div class="form-check-inline">
																<label class="form-check-label"> <input
																	type="radio" class="form-check-input"
																	name="bookBuyType" value="0">기 부
																</label>
															</div>
															<div class="form-check-inline">
																<label class="form-check-label"> <input
																	type="radio" class="form-check-input"
																	name="bookBuyType" value="1" checked="checked">구
																	매
																</label>
															</div>
														</c:otherwise>
													</c:choose>
												</div>
												<div class="col-sm-6 mt-3">
													<label for="comment" class="mr-2">국내 및 해외 도서:</label>
													<c:choose>
														<c:when test="${book.bookCountry eq 0 }">
															<div class="form-check-inline">
																<label class="form-check-label"> <input
																	type="radio" class="form-check-input"
																	name="bookCountry" value="0" checked="checked">국
																	내
																</label>
															</div>
															<div class="form-check-inline">
																<label class="form-check-label"> <input
																	type="radio" class="form-check-input"
																	name="bookCountry" value="1">해 외
																</label>
															</div>
														</c:when>
														<c:otherwise>
															<div class="form-check-inline">
																<label class="form-check-label"> <input
																	type="radio" class="form-check-input"
																	name="bookCountry" value="0">국 내
																</label>
															</div>
															<div class="form-check-inline">
																<label class="form-check-label"> <input
																	type="radio" class="form-check-input"
																	name="bookCountry" value="1" checked="checked">해
																	외
																</label>
															</div>
														</c:otherwise>
													</c:choose>
												</div>
											</div>
											<hr>
											<div class="form-group row">
												<div class="col-sm-6 mb-3 mb-sm-0">
													<label for="comment">분 류:</label> <select
														class="form-control" name="categoryIdx">
														<c:forEach items="${category}" var="item">
															<c:choose>
																<c:when test="${book.categoryIdx eq item.categoryIdx }">
																	<option value="${item.categoryIdx}" selected="selected">${item.categoryName}</option>
																</c:when>
																<c:otherwise>
																	<option value="${item.categoryIdx}">${item.categoryName}</option>
																</c:otherwise>
															</c:choose>
														</c:forEach>
													</select>
												</div>
												<div class="col-sm-6">
													<label for="comment">출판사:</label> <select
														class="form-control" name="publisherIdx">
														<c:forEach items="${publisher}" var="item">
															<c:choose>
																<c:when
																	test="${book.publisherIdx eq item.publisherIdx }">
																	<option value="${item.publisherIdx}"
																		selected="selected">${item.publisherName}</option>
																</c:when>
																<c:otherwise>
																	<option value="${item.publisherIdx}">${item.publisherName}</option>
																</c:otherwise>
															</c:choose>
														</c:forEach>
													</select>
												</div>
											</div>
											<hr>
											<div class="form-group row">
												<div class="col-sm-12 mb-3 mb-sm-0">
													<c:choose>
														<c:when test="${!empty book }">
															<label for="comment">도서 이미지 :</label>
															<img
																src="${pageContext.request.contextPath}/resources/bookImages/${book.bookImg}"
																class="col-lg-12" style="height: 500px;">
														</c:when>
														<c:otherwise>
															<input type="file" class="form-control" name="file"
																id="file">
															<img src="" class="col-lg-12" style="height: 500px;"
																id="bookMainImg">
														</c:otherwise>
													</c:choose>
												</div>
											</div>
											<hr>
											<div class="form-group row">
												<div class="col-sm-12 mb-3 mb-sm-0">
													<label for="comment">줄거리:</label>
													<textarea class="form-control" rows="5" name="bookContent"
														id="bookContent">${book.bookContent }</textarea>
												</div>
											</div>
											<hr>
											<div class="form-group row">
												<div class="col-sm-12 mb-3 mb-sm-0">
													<label for="comment">상세 내용:</label>
													<textarea class="form-control" rows="5"
														name="bookDetailContent" id="bookDetail">${book.bookDetailContent }</textarea>
												</div>
											</div>
											<hr>
											<div class="form-group row">
												<div class="col-sm-12 mb-3 mb-sm-0">
													<div class="form-check">
														<label class="form-check-label"> <input
															type="checkbox" class="form-check-input" id="submitCheck">
															<c:choose>
																<c:when test="${!empty book }">
																	위 모든 항목으로 도서를 수정하겠습니다.
																	</c:when>
																<c:otherwise>
																	위 모든 항목으로 도서를 등록하겠습니다.
																	</c:otherwise>
															</c:choose>
														</label>
													</div>
												</div>
											</div>
											<hr>
											<c:choose>
												<c:when test="${!empty book }">
													<button type="button" id="btnUpdateBook"
														class="btn btn-success btn-block">도서 수정</button>
												</c:when>
												<c:otherwise>
													<button type="button" id="btnInsertBook"
														class="btn btn-primary btn-block">도서 등록</button>
												</c:otherwise>
											</c:choose>
										</div>
									</div>
								</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<%@include file="include/footer.html"%>
	</div>
	<!-- End of Content Wrapper -->
	</div>
	<!-- End of Page Wrapper -->
	<%@include file="include/scrollButton.jsp"%>
	<%@include file="include/script.jsp"%>
	<script>
		$(document).ready(function() {
			$("#btnInsertBook").click(function() {
				btnInsertSubmit();
			});

			$("#btnUpdateBook").click(function() {
				btnUpdateSubmit();
			});

			$("#file").change(function() {
				readURL(this, 'bookMainImg');
			});
		});

		function btnUpdateSubmit() {
			if (!$("input:checkbox[id='submitCheck']").is(":checked")) {
				alert("도서 확인을 체크해주세요.");
				$("#submitCheck").focus();
			} else if ($("#bookName").val().trim() === '') {
				alert("도서명을 입력해주세요.");
				$("#bookName").focus();
			} else if ($("#isbn").val().trim() === '') {
				alert("ISBN을 입력해주세요.");
				$("#isbn").focus();
			} else if ($("#bookPrice").val().trim() === '') {
				alert("매입 도서가격을 입력해주세요.");
				$("#bookPrice").focus();
			} else if ($("#stock").val().trim() === '') {
				alert("수량을 입력해주세요.");
				$("#stock").focus();
			} else if ($("#author").val().trim() === '') {
				alert("저자를 입력해주세요.");
				$("#author").focus();
			} else if ($("#bookContent").text().trim() === '') {
				alert("줄거리를 입력해주세요.");
				$("#bookContent").focus();
			} else if ($("#bookDetail").text().trim() === '') {
				alert("상세내용을 입력해주세요.");
				$("#bookDetail").focus();
			} else if (isNaN($("#bookPrice").val())) {
				alert("도서 매입가격은 숫자만 입력해주세요.");
				$("#bookPrice").focus();
			} else if (isNaN($("#stock").val())) {
				alert("수량은 숫자만 입력해주세요.");
				$("#stock").focus();
			} else if (parseInt($("#bookPrice").val()) <= 0
					|| parseInt($("#bookPrice").val()) > 1000000) {
				alert("도서 매입 가격을 1원 이상 1,000,000원 이하로  다시 입력해주세요.");
				$("#bookPrice").focus();
			} else if (parseInt($("#stock").val()) < 0
					|| parseInt($("#stock").val()) > 200) {
				alert("도서 수량을 0개 이상 200개 이하로  다시 입력해주세요.");
				$("#stock").focus();
			} else {
				if (confirm("정말 도서를 수정하시겠습니까?"))
					$("#bookForm").submit();
			}
		}

		function btnInsertSubmit() {
			if (!$("input:checkbox[id='submitCheck']").is(":checked")) {
				alert("도서 확인을 체크해주세요.");
				$("#submitCheck").focus();
			} else if ($("#bookName").val().trim() === '') {
				alert("도서명을 입력해주세요.");
				$("#bookName").focus();
			} else if ($("#isbn").val().trim() === '') {
				alert("ISBN을 입력해주세요.");
				$("#isbn").focus();
			} else if ($("#bookPrice").val().trim() === '') {
				alert("매입 도서가격을 입력해주세요.");
				$("#bookPrice").focus();
			} else if ($("#stock").val().trim() === '') {
				alert("수량을 입력해주세요.");
				$("#stock").focus();
			} else if ($("#author").val().trim() === '') {
				alert("저자를 입력해주세요.");
				$("#author").focus();
			} else if ($("#file").val().trim() === '') {
				alert("도서 이미지를 선택해주세요.");
				$("#file").focus();
			} else if ($("#bookContent").text().trim() === '') {
				alert("줄거리를 입력해주세요.");
				$("#bookContent").focus();
			} else if ($("#bookDetail").text().trim() === '') {
				alert("상세내용을 입력해주세요.");
				$("#bookDetail").focus();
			} else if (isNaN($("#bookPrice").val())) {
				alert("도서 매입가격은 숫자만 입력해주세요.");
				$("#bookPrice").focus();
			} else if (isNaN($("#stock").val())) {
				alert("수량은 숫자만 입력해주세요.");
				$("#stock").focus();
			} else if (parseInt($("#bookPrice").val()) <= 0
					|| parseInt($("#bookPrice").val()) > 1000000) {
				alert("도서 매입 가격을 1원 이상 1,000,000원 이하로  다시 입력해주세요.");
				$("#bookPrice").focus();
			} else if (parseInt($("#stock").val()) < 0
					|| parseInt($("#stock").val()) > 200) {
				alert("도서 수량을 0개 이상 200개 이하로  다시 입력해주세요.");
				$("#stock").focus();
			} else {
				if (confirm("정말 도서를 등록하시겠습니까?"))
					$("#bookForm").submit();
			}
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
	</script>
</body>

</html>
