<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="include/head.jsp"%>
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
										<td>
											<div class="col-lg-5">
												<select class="form-control text-center" id="choose">
													<option value="0">출판사</option>
													<option value="1">분 류</option>
												</select>
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<button type="button" class="btn btn-primary col-lg-5">검
												색</button>
										</td>
									</tr>
									<tr>
										<td>
											<div class="row" id="publisherArea">
												<div class="col-lg-4">
													<select class="form-control text-center"
														id="selectCategory">
														<c:forEach items="${category}" var="item">
															<option value="${item.categoryIdx}">${item.categoryName}</option>
														</c:forEach>
													</select>
												</div>
												<div class="col-lg-4">
													<button type="button" class="btn btn-success">일괄
														저장</button>
												</div>
											</div>
											<div class="row" id="categoryArea">
												<div class="col-lg-4">
													<select class="form-control text-center" id="selectPublisher">
														<c:forEach items="${publisher}" var="item">
															<option value="${item.publisherIdx}">${item.publisherName}</option>
														</c:forEach>
													</select>
												</div>
												<div class="col-lg-4">
													<button type="button" class="btn btn-success">일괄
														저장</button>
												</div>
											</div>
										</td>
									</tr>
									<tr>
										<td></td>
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
									<select class="form-control" id="sel1">
										<option>정 렬</option>
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
											<th>도서명</th>
											<th>도서 수량</th>
											<th>대출 가능 여부</th>
											<th></th>
										</tr>
									</thead>
									<tbody>
									</tbody>
								</table>
							</div>
							<div class="btn-group">
								<button type="button" class="btn btn-outline-primary">Prev</button>
								<button type="button" class="btn btn-outline-primary">1</button>
								<button type="button" class="btn btn-outline-primary">Next</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- End of Main Content -->
			<%@include file="include/footer.html"%>
		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	<%@include file="include/scrollButton.jsp"%>
	<%@include file="include/script.jsp"%>
	<script>
		$(document).ready(function() {
			$("#categoryArea").show();
			$("#publisherArea").hide();
			$("#choose").change(function() {
				if ($(this).val() === '1') {
					$("#categoryArea").hide();
					$("#publisherArea").show();
				} else {
					$("#categoryArea").show();
					$("#publisherArea").hide();
				}
			});
		});
	</script>
</body>

</html>
