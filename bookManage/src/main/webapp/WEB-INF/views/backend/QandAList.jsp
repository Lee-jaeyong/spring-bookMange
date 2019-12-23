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
							<h6 class="m-0 font-weight-bold text-primary">Q/A 검색</h6>
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
							<h6 class="m-0 font-weight-bold text-primary">Q/A 목록</h6>
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
											<th>사용자 아이디</th>
											<th>사용자 명</th>
											<th>제 목</th>
											<th>등록일</th>
											<th>답변 여부</th>
											<th></th>
										</tr>
									</thead>
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
	<script type="text/javascript">
		$(document).ready(function() {
			$("#beforeDate, #afterDate").datepicker({
				dateFormat : 'yy-mm-dd'
			});
		});
	</script>

</body>

</html>
