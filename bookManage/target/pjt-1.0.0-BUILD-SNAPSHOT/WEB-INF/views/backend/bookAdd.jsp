<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
									<h6 class="m-0 font-weight-bold text-primary">도서 등록</h6>
								</div>
								<div class="card-body">
									<form action="./addBook" method="post">
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
																id="bookPrice" placeholder="매입 도서 가격" value="${book.bookPrice }">
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
																	value="1">대출 가능
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
														<div class="col-sm-6 mb-3 mb-sm-0">
															<label for="comment">분 류:</label> <select
																class="form-control" id="sel1" name="categoryNum">
																<option value="0">분 류</option>
															</select>
														</div>
														<div class="col-sm-6">
															<label for="comment">출판사:</label> <select
																class="form-control" id="sel1" name="publisherNum">
																<option value="0">출판사</option>
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
																	type="checkbox" class="form-check-input" value="">위
																	모든 항목으로 도서를 등록하겠습니다
																</label>
															</div>
														</div>
													</div>
													<hr>
													<button type="submit" class="btn btn-primary btn-block">도서
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
</body>

</html>
