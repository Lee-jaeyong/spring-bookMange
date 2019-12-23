<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
										<td><select class="form-control" id="sel1"
											name="sellist1">
												<option>분 류</option>
										</select></td>
										<td><input type="text"
											class="form-control form-control-user" id=""
											placeholder="도서 수량"></td>
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
											<button type="button" class="btn btn-primary col-lg-7">검
												색</button>
										</td>
									</tr>
									<tr>
										<td colspan="3" style="text-align: center;">
											<button type="button" class="btn btn-secondary col-lg-7">검색
												초기화</button>
										</td>
									</tr>
									<tr>
										<td colspan="3" style="text-align: center;"><a href="#"
											class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm mr-3"><i
												class="fas fa-download fa-sm text-white-50"></i> 엑셀 파일 업로드</a>
											<div class="form-check-inline">
												<label class="form-check-label"> <input
													type="checkbox" class="form-check-input" value=""
													style="width: 16px; height: 16px;" checked="checked">도서
													번호
												</label>
											</div>
											<div class="form-check-inline">
												<label class="form-check-label"> <input
													type="checkbox" class="form-check-input" value=""
													style="width: 16px; height: 16px;" checked="checked">ISBN
												</label>
											</div>
											<div class="form-check-inline">
												<label class="form-check-label"> <input
													type="checkbox" class="form-check-input" value=""
													style="width: 16px; height: 16px;">도서명
												</label>
											</div>
											<div class="form-check-inline">
												<label class="form-check-label"> <input
													type="checkbox" class="form-check-input" value=""
													style="width: 16px; height: 16px;">도서 수량
												</label>
											</div>
											<div class="form-check-inline">
												<label class="form-check-label"> <input
													type="checkbox" class="form-check-input" value=""
													style="width: 16px; height: 16px;">대출 가능 여부
												</label>
											</div>
											<div class="form-check-inline">
												<label class="form-check-label"> <input
													type="checkbox" class="form-check-input" value=""
													style="width: 16px; height: 16px;">매입 도서 가격
												</label>
											</div>
											<div class="form-check-inline">
												<label class="form-check-label"> <input
													type="checkbox" class="form-check-input" value=""
													style="width: 16px; height: 16px;">총 대출 횟수
												</label>
											</div>
											<div class="form-check-inline">
												<label class="form-check-label"> <input
													type="checkbox" class="form-check-input" value=""
													style="width: 16px; height: 16px;">도서 등록일
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
			<!-- End of Footer -->

		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	<%@include file="include/scrollButton.jsp"%>
	<%@include file="include/script.jsp"%>

	<script type="text/javascript">
		$(document).ready(function() {
			$("#beforeDate, #afterDate").datepicker({
				dateFormat : 'yy-mm-dd'
			});
		});
	</script>

</body>

</html>
