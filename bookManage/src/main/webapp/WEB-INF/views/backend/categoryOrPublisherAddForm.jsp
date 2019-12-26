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
											<div class="col-lg-6" id="categorySection"></div>
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
																	class="form-control form-control-user"
																	id="inputCategoryName" placeholder="카테고리명">
															</div>
															<div class="col-sm-4 mb-3 mb-sm-0">
																<button id="btnAddCategory" type="button"
																	class="btn btn-primary">카테고리 등록</button>
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
											<div class="col-lg-6" id="publisherSection"></div>
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
																	class="form-control form-control-user"
																	id="inputPublisherName" placeholder="출판사명">
															</div>
															<div class="col-sm-4 mb-3 mb-sm-0">
																<button id="btnAddPublisher" type="button"
																	class="btn btn-primary">출판사 등록</button>
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
	<!-- The Modal -->
	<div class="modal fade" id="updateModal">
		<div class="modal-dialog">
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title" id="modalHead"></h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<!-- Modal body -->
				<div class="modal-body">
					<div class="form-group">
						<label for="usr"><span id="nowUpdate"></span>를 수정합니다.</label> <input
							type="text" class="form-control"
							id="inputUpdateCategoryOrPublisher">
					</div>
					<input type="hidden" id="nowUpdateUrl" value="" /> <input
						type="hidden" id="nowUpdateIdx" value="" />
				</div>

				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" id="btnUpdateCategoryOrPublisherExecute"
						class="btn btn-danger">수정 완료</button>
					<button type="button" id="btnUpdateCencel" class="btn btn-danger" data-dismiss="modal">닫
						기</button>
				</div>
			</div>
		</div>
	</div>
	<!-- End of Page Wrapper -->
	<%@include file="include/scrollButton.jsp"%>
	<%@include file="include/script.jsp"%>
	<script>
		$(document).ready(function(){
			$("#btnAddCategory").click(function(){
				btnAddCategoryOrPublisherExecute('inputCategoryName','카테고리','./category/addCategory');
			});
			
			$("#btnAddPublisher").click(function(){
				btnAddCategoryOrPublisherExecute('inputPublisherName','출판사','./publisher/addPublisher');
			});
			
			$("#btnUpdateCategoryOrPublisherExecute").click(function(){
				btnUpdateCategoryOrPublisherExecute();
			});
		});
		
		function loadCategory(){
			$.ajax({
				url : "./category/selectCategory",
				dataType : "json",
				success : function(data){
					var categorySection = '';
					for(var i =0;i<data.length;i++)
					{
						categorySection += '<div class="btn btn-success btn-icon-split ml-2 mb-2">';
						categorySection += '<span class="icon text-white-50" data-toggle="modal" data-target="#updateModal" onclick="updateCategoryOrPublisher(\'카테고리\',\'./category/updateCategory\','+data[i].categoryIdx+',\''+data[i].categoryName+'\')">수 정</span>';
						categorySection += '<span class="icon text-white-50" onclick="deleteCategoryOrPublisher(\'카테고리\',\''+data[i].categoryName+'\',\'./category/deleteCategory\','+data[i].categoryIdx+')">삭 제</span>';
						categorySection += '<span class="text">'+data[i].categoryName+'</span></div>';
					}
					$("#categorySection").html(categorySection);
				}
			});
		}
		
		function loadPublisher(){
			$.ajax({
				url : "./publisher/selectPublisher",
				dataType : "json",
				success : function(data){
					var publisherSection = '';
					for(var i =0;i<data.length;i++)
					{
						publisherSection += '<div class="btn btn-success btn-icon-split ml-2 mb-2">';
						publisherSection += '<span class="icon text-white-50" data-toggle="modal" data-target="#updateModal" onclick="updateCategoryOrPublisher(\'출판사\',\'./publisher/updatePublisher\','+data[i].publisherIdx+',\''+data[i].publisherName+'\')">수 정</span>';
						publisherSection += '<span class="icon text-white-50" onclick="deleteCategoryOrPublisher(\'출판사\',\''+data[i].publisherName+'\',\'./publisher/deletePublisher\','+data[i].publisherIdx+')">삭 제</span>';
						publisherSection += '<span class="text">'+data[i].publisherName+'</span></div>';
					}
					$("#publisherSection").html(publisherSection);
				}
			});
		}
		
		function deleteCategoryOrPublisher(type,name,url,idx)
		{
			if(confirm("정말 [" + name + "] " + type + "를 삭제하시겠습니까?"))
			{
				$.ajax({
					url : url,
					data : {
						idx : idx
					},
					success : function(data){
						alert(data);
						loadCategory();
						loadPublisher();
					}
				});
			}
		}
		
		//Modal update part
		function updateCategoryOrPublisher(type,url,idx,nowUpdate){
			$("#modalHead").text(type+"를 수정합니다.");
			$("#nowUpdateUrl").val(url);
			$("#nowUpdateIdx").val(idx);
			$("#nowUpdate").text(nowUpdate);
			$("#inputUpdateCategoryOrPublisher").val('');
		}
		
		function btnUpdateCategoryOrPublisherExecute(){
			var updateInput = $("#inputUpdateCategoryOrPublisher").val().trim();
			if(updateInput === '')
			{
				alert("항목을 입력해주세요.");
				return;
			}
			if(confirm("정말 수정하시겠습니까?"))
			{
				$.ajax({
					url : $("#nowUpdateUrl").val(),
					data : {
						idx : $("#nowUpdateIdx").val(),
						name : updateInput
					},
					success : function(data){
						alert(data);
						loadCategory();
						loadPublisher();
						$("#btnUpdateCencel").click();
					}
				});
			}
		}
		
		function btnAddCategoryOrPublisherExecute(inputArea,inputType,url){
			var categoryName = $("#"+inputArea).val().trim();
			if(categoryName === '' || categoryName.length > 10)
			{
				alert(inputType+"를 다시 입력해주세요.");
				$("#"+inputArea).val('').focus();
				return;
			}
			if(confirm("정말 입력하신 "+inputType+"를 등록하시겠습니까?"))
			{
				$.ajax({
					url : url,
					data : {
						name : categoryName
					},
					success : function(data){
						alert(data);
						$("#"+inputArea).val('');
						if(inputType === '카테고리')
							loadCategory();
						else if(inputType === '출판사')
							loadPublisher();
					}
				});
			}
		}
		
		window.onload = function(){
			loadCategory();
			loadPublisher();
		}
	</script>
</body>

</html>
