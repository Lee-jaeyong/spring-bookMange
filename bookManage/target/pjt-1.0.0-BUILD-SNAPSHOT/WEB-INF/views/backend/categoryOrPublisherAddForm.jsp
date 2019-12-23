<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

				<!-- Begin Page Content -->
				<div class="container-fluid">
					<div class="row">
						<div class="col-xl-12 col-lg-7">

							<!-- Area Chart -->
							<div class="card shadow mb-4">
								<div class="card-header py-3">
									<h6 class="m-0 font-weight-bold text-primary">카테고리 목록</h6>
								</div>
								<div class="card-body">
									<div class="chart-area">
										<div class="row">
											<div class="col-lg-6">
												<a href="#" class="btn btn-success btn-icon-split"> <span
													class="icon text-white-50"> <i class="fas fa-check"></i>
												</span> <span class="text">Split Button Success</span>
												</a>
											</div>
											<div class="col-lg-6">
												<div class="card shadow mb-4">
													<div class="card-header py-3">
														<h6 class="m-0 font-weight-bold text-primary">카테고리(분류)
															등록</h6>
													</div>
													<div class="card-body">
														<div class="row">
															<div class="col-sm-2 mt-1">
																<label for="comment">카테고리명:</label>
															</div>
															<div class="col-sm-6 mb-3 mb-sm-0">
																<input type="text"
																	class="form-control form-control-user" id=""
																	placeholder="카테고리명">
															</div>
															<div class="col-sm-4 mb-3 mb-sm-0">
																<button type="button" class="btn btn-primary">카테고리
																	등록</button>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<hr>
								</div>
							</div>

							<!-- Bar Chart -->
							<div class="card shadow mb-4">
								<div class="card-header py-3">
									<h6 class="m-0 font-weight-bold text-primary">출판사 목록</h6>
								</div>
								<div class="card-body">
									<div class="chart-area">
										<div class="row">
											<div class="col-lg-6">
												<a href="#" class="btn btn-success btn-icon-split"> <span
													class="icon text-white-50"> <i class="fas fa-check"></i>
												</span> <span class="text">Split Button Success</span>
												</a>
											</div>
											<div class="col-lg-6">
												<div class="card shadow mb-4">
													<div class="card-header py-3">
														<h6 class="m-0 font-weight-bold text-primary">출판사 등록</h6>
													</div>
													<div class="card-body">
														<div class="row">
															<div class="col-sm-2 mt-1">
																<label for="comment">출판사명:</label>
															</div>
															<div class="col-sm-6 mb-3 mb-sm-0">
																<input type="text"
																	class="form-control form-control-user" id=""
																	placeholder="출판사명">
															</div>
															<div class="col-sm-4 mb-3 mb-sm-0">
																<button type="button" class="btn btn-primary">출판사
																	등록</button>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<hr>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->
			<%@include file="include/footer.html"%>
		</div>
		<!-- End of Content Wrapper -->
	</div>
	<!-- End of Page Wrapper -->
	<%@include file="include/scrollButton.jsp"%>
	<%@include file="include/script.jsp"%>
</body>

</html>
