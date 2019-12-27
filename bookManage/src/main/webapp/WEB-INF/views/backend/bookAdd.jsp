<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="include/head.jsp"%>
<c:if test="${not empty error}">
	<input type="hidden" id="error" value="${error}"/>
	<script>
		alert(document.getElementById("error").value);
	</script>
</c:if>
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
									<h6 class="m-0 font-weight-bold text-primary">도서 등록</h6>
								</div>
								<div class="card-body">
									<form id="addBookForm" action="./addBookExecute" method="post" enctype = "multipart/form-data">
										<div class="col-lg-12">
											<div class="card mb-4 py-3 border-left-primary">
												<div class="card-body">
													<div class="form-group row">
														<div class="col-sm-6 mb-3 mb-sm-0">
															<label for="comment">도서명:</label><input type="text"
																class="form-control form-control-user" name="bookName"
																id="bookName" placeholder="도서명"
																value="${book.bookName }">
														</div>
														<div class="col-sm-6">
															<label for="comment">ISBN:</label> <input type="text"
																class="form-control form-control-user" name="isbn"
																id="isbn" placeholder="ISBN" value="${book.isbn }">
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
																class="form-control form-control-user" name="stock"
																id="stock" placeholder="도서 수량" value="${book.stock }">
														</div>
													</div>
													<hr>
													<div class="form-group row">
														<div class="col-sm-6 mb-3 mb-sm-0">
															<label for="comment">저 자:</label> <input type="text"
																class="form-control form-control-user" name="author"
																id="author" placeholder="저 자" value="${book.author }">
														</div>
														<div class="col-sm-6 mt-3">
															<label for="comment" class="mr-2">대출 가능 여부:</label>
															<div class="form-check-inline">
																<label class="form-check-label"> <input
																	type="radio" class="form-check-input" name="lendStatus"
																	value="1" checked="checked">대출 가능
																</label>
															</div>
															<div class="form-check-inline">
																<label class="form-check-label"> <input
																	type="radio" class="form-check-input" name="lendStatus"
																	value="0">대출 불가
																</label>
															</div>
														</div>
													</div>
													<hr>
													<div class="form-group row">
														<div class="col-sm-6 mt-3">
															<label for="comment" class="mr-2">매입 종류:</label>
															<div class="form-check-inline">
																<label class="form-check-label"> <input
																	type="radio" class="form-check-input" name="bookBuyType"
																	value="0" checked="checked">기 부
																</label>
															</div>
															<div class="form-check-inline">
																<label class="form-check-label"> <input
																	type="radio" class="form-check-input" name="bookBuyType"
																	value="1">구 매
																</label>
															</div>
														</div>
														<div class="col-sm-6 mt-3">
															<label for="comment" class="mr-2">국내 및 해외 도서:</label>
															<div class="form-check-inline">
																<label class="form-check-label"> <input
																	type="radio" class="form-check-input" name="country"
																	value="0" checked="checked">국 내
																</label>
															</div>
															<div class="form-check-inline">
																<label class="form-check-label"> <input
																	type="radio" class="form-check-input" name="country"
																	value="1">해 외
																</label>
															</div>
														</div>
													</div>
													<hr>
													<div class="form-group row">
														<div class="col-sm-6 mb-3 mb-sm-0">
															<label for="comment">분 류:</label> <select
																class="form-control" id="sel1" name="categoryNum">
																<c:forEach items="${category}" var="item">
																	<option value="${item.categoryIdx}">${item.categoryName}</option>
																</c:forEach>
															</select>
														</div>
														<div class="col-sm-6">
															<label for="comment">출판사:</label> <select
																class="form-control" id="sel1" name="publisherNum">
																<c:forEach items="${publisher}" var="item">
																	<option value="${item.publisherIdx}">${item.publisherName}</option>
																</c:forEach>
															</select>
														</div>
													</div>
													<hr>
													<div class="form-group row">
														<div class="col-sm-12 mb-3 mb-sm-0">
															<input type="file" class="form-control" name="bookImg"
																id="bookImg" value="${book.bookImg }">
														</div>
													</div>
													<hr>
													<div class="form-group row">
														<div class="col-sm-12 mb-3 mb-sm-0">
															<label for="comment">줄거리:</label>
															<textarea class="form-control" rows="5"
																name="bookContent" id="bookContent">${book.bookContent }</textarea>
														</div>
													</div>
													<hr>
													<div class="form-group row">
														<div class="col-sm-12 mb-3 mb-sm-0">
															<label for="comment">상세 내용:</label>
															<textarea class="form-control" rows="5" name="bookDetail"
																id="bookDetail">${book.bookDetail }</textarea>
														</div>
													</div>
													<hr>
													<div class="form-group row">
														<div class="col-sm-12 mb-3 mb-sm-0">
															<div class="form-check">
																<label class="form-check-label"> <input
																	type="checkbox" class="form-check-input" id="submitCheck">위
																	모든 항목으로 도서를 등록하겠습니다
																</label>
															</div>
														</div>
													</div>
													<hr>
													<button type="button" id="btnSubmitButton" class="btn btn-primary btn-block">도서
														등록</button>
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
		$(document).ready(function(){
			$("#btnSubmitButton").click(function(){
				btnSubmit();
			});
		});
		
		function btnSubmit(){
			if(!$("input:checkbox[id='submitCheck']").is(":checked"))
			{
				alert("도서 등록 확인을 체크해주세요.");
				$("#submitCheck").focus();
			}
			else if($("#bookName").val().trim() === '')
			{
				alert("도서명을 입력해주세요.");
				$("#bookName").focus();				
			}
			else if($("#isbn").val().trim() === '')
			{
				alert("ISBN을 입력해주세요.");
				$("#isbn").focus();				
			}
			else if($("#bookPrice").val().trim() === '')
			{
				alert("매입 도서가격을 입력해주세요.");
				$("#bookPrice").focus();				
			}
			else if($("#stock").val().trim() === '')
			{
				alert("수량을 입력해주세요.");
				$("#stock").focus();				
			}
			else if($("#author").val().trim() === '')
			{
				alert("저자를 입력해주세요.");
				$("#author").focus();				
			}
			else if($("#bookImg").val().trim() === '')
			{
				alert("도서 이미지를 선택해주세요.");
				$("#bookImg").focus();				
			}
			else if($("#bookContent").text().trim() === '')
			{
				alert("줄거리를 입력해주세요.");
				$("#bookContent").focus();				
			}
			else if($("#bookDetail").text().trim() === '')
			{
				alert("상세내용을 입력해주세요.");
				$("#bookDetail").focus();				
			}else if(isNaN($("#bookPrice").val()))
			{
				alert("도서 매입가격은 숫자만 입력해주세요.");
				$("#bookPrice").focus();	
			}else if(isNaN($("#stock").val()))
			{
				alert("수량은 숫자만 입력해주세요.");
				$("#stock").focus();	
			}else
			{
				$("#addBookForm").submit();
			}
		}
	</script>
</body>

</html>
