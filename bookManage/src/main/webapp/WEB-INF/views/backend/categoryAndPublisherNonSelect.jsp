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
												<select class="form-control text-center" id="sel1"
													name="sellist1">
													<option>출판사</option>
													<option>분 류</option>
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
											<div class="row">
												<div class="col-lg-4">
													<select class="form-control text-center" id="sel1"
														name="sellist1">
														<option>출판사</option>
														<option>분 류</option>
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
									<tr>
										<td></td>
										<td>Developer</td>
										<td>San Francisco</td>
										<td>30</td>
										<td>2010/07/14</td>
										<td>$86,500</td>
										<td></td>
									</tr>
									<tr>
										<td></td>
										<td>Shad Decker</td>
										<td>Regional Director</td>
										<td>51</td>
										<td>2008/11/13</td>
										<td>$183,000</td>
										<td></td>
									</tr>
									<tr>
										<td></td>
										<td>Michael Bruce</td>
										<td>Javascript Developer</td>
										<td>29</td>
										<td>2011/06/27</td>
										<td>$183,000</td>
										<td></td>
									</tr>
									<tr>
										<td></td>
										<td>Donna Snider</td>
										<td>Customer Support</td>
										<td>27</td>
										<td>2011/01/25</td>
										<td>$112,000</td>
										<td></td>
									</tr>
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
</body>

</html>
