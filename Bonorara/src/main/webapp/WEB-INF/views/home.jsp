<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:import url="/WEB-INF/views/include/head_meta.jsp" />
<c:import url="/WEB-INF/views/include/top_menu.jsp" />
  
<body>
        <!-- Page Header-->
        <header class="masthead" style="background-image: url('resources/assets_main/img/home-bg.jpg')">
            <div class="container position-relative px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-md-10 col-lg-8 col-xl-7">
                        <div class="site-heading">
                            <h1>Bonorara</h1>
                            <span class="subheading">ilsang community</span>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- Main Content-->
        <div class="container">
		<div class="row">
			<%-- <c:forEach var="board" items="${popularBoard}" varStatus="status"> --%>
				<div class="col-md-6">
					<div class="card shadow-sm">
						<div class="card-body">
							<h4 class="card-title" style="cursor: pointer" onclick="">게시판1</h4>
									<table class="table table-hover" id="board_list">
										<thead>
										<tr>
											<th class="text-left">제목</th>
											<th class="text-right">작성일</th>
										</tr>
										</thead>
										<tbody style="font-size: 13px">
										<tr onclick="goBoard()" style="cursor: pointer;">
											<td class="text-left">제목입니다.
												<span class="badge badge-pill badge-light" ><img src="${pageContext.request.contextPath}/resources/images_post/reply_image.PNG" style="width:15px; height:15px;">0</span>
												<span class="badge badge-pill badge-light" ><img src="${pageContext.request.contextPath}/resources/images_post/good_image.PNG" style="width:15px; height:15px;">1</span>
											</td>
											<td class="text-right">
												시간존
											</td>
										</tr>
										<tr onclick="goBoard()" style="cursor: pointer;">
											<td class="text-left">제목입니다.
												<span class="badge badge-pill badge-light" ><img src="${pageContext.request.contextPath}/resources/images_post/reply_image.PNG" style="width:15px; height:15px;">0</span>
												<span class="badge badge-pill badge-light" ><img src="${pageContext.request.contextPath}/resources/images_post/good_image.PNG" style="width:15px; height:15px;">1</span>
											</td>
											<td class="text-right">
												시간존
											</td>
										</tr>
										</tbody>
									</table>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="card shadow-sm">
						<div class="card-body">
							<h4 class="card-title" style="cursor: pointer" onclick="">게시판2</h4>
									<table class="table table-hover" id="board_list">
										<thead>
										<tr>
											<th class="text-left">제목</th>
											<th class="text-right">작성일</th>
										</tr>
										</thead>
										<tbody style="font-size: 13px">
										<tr onclick="goBoard()" style="cursor: pointer;">
											<td class="text-left">제목입니다.
												<span class="badge badge-pill badge-light" ><img src="${pageContext.request.contextPath}/resources/images_post/reply_image.PNG" style="width:15px; height:15px;">0</span>
												<span class="badge badge-pill badge-light" ><img src="${pageContext.request.contextPath}/resources/images_post/good_image.PNG" style="width:15px; height:15px;">1</span>
											</td>
											<td class="text-right">
												시간존
											</td>
										</tr>
										<tr onclick="goBoard()" style="cursor: pointer;">
											<td class="text-left">제목입니다.
												<span class="badge badge-pill badge-light" ><img src="${pageContext.request.contextPath}/resources/images_post/reply_image.PNG" style="width:15px; height:15px;">0</span>
												<span class="badge badge-pill badge-light" ><img src="${pageContext.request.contextPath}/resources/images_post/good_image.PNG" style="width:15px; height:15px;">1</span>
											</td>
											<td class="text-right">
												시간존
											</td>
										</tr>
										</tbody>
									</table>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="card shadow-sm">
						<div class="card-body">
							<h4 class="card-title" style="cursor: pointer" onclick="">게시판3</h4>
									<table class="table table-hover" id="board_list">
										<thead>
										<tr>
											<th class="text-left">제목</th>
											<th class="text-right">작성일</th>
										</tr>
										</thead>
										<tbody style="font-size: 13px">
										<tr onclick="goBoard()" style="cursor: pointer;">
											<td class="text-left">제목입니다.
												<span class="badge badge-pill badge-light" ><img src="${pageContext.request.contextPath}/resources/images_post/reply_image.PNG" style="width:15px; height:15px;">0</span>
												<span class="badge badge-pill badge-light" ><img src="${pageContext.request.contextPath}/resources/images_post/good_image.PNG" style="width:15px; height:15px;">1</span>
											</td>
											<td class="text-right">
												시간존
											</td>
										</tr>
										<tr onclick="goBoard()" style="cursor: pointer;">
											<td class="text-left">제목입니다.
												<span class="badge badge-pill badge-light" ><img src="${pageContext.request.contextPath}/resources/images_post/reply_image.PNG" style="width:15px; height:15px;">0</span>
												<span class="badge badge-pill badge-light" ><img src="${pageContext.request.contextPath}/resources/images_post/good_image.PNG" style="width:15px; height:15px;">1</span>
											</td>
											<td class="text-right">
												시간존
											</td>
										</tr>
										</tbody>
									</table>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="card shadow-sm">
						<div class="card-body">
							<h4 class="card-title" style="cursor: pointer" onclick="">게시판4</h4>
									<table class="table table-hover" id="board_list">
										<thead>
										<tr>
											<th class="text-left">제목</th>
											<th class="text-right">작성일</th>
										</tr>
										</thead>
										<tbody style="font-size: 13px">
										<tr onclick="goBoard()" style="cursor: pointer;">
											<td class="text-left">제목입니다.
												<span class="badge badge-pill badge-light" ><img src="${pageContext.request.contextPath}/resources/images_post/reply_image.PNG" style="width:15px; height:15px;">0</span>
												<span class="badge badge-pill badge-light" ><img src="${pageContext.request.contextPath}/resources/images_post/good_image.PNG" style="width:15px; height:15px;">1</span>
											</td>
											<td class="text-right">
												시간존
											</td>
										</tr>
										<tr onclick="goBoard()" style="cursor: pointer;">
											<td class="text-left">제목입니다.
												<span class="badge badge-pill badge-light" ><img src="${pageContext.request.contextPath}/resources/images_post/reply_image.PNG" style="width:15px; height:15px;">0</span>
												<span class="badge badge-pill badge-light" ><img src="${pageContext.request.contextPath}/resources/images_post/good_image.PNG" style="width:15px; height:15px;">1</span>
											</td>
											<td class="text-right">
												시간존
											</td>
										</tr>
										</tbody>
									</table>
						</div>
					</div>
				</div>
			<%-- </c:forEach> --%>
		</div>
		</div>
        <!-- Footer-->
        <footer class="border-top">
            <div class="container px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-md-10 col-lg-8 col-xl-7">
                        <ul class="list-inline text-center">
                            <li class="list-inline-item">
                                <a href="#!">
                                    <span class="fa-stack fa-lg">
                                        <i class="fas fa-circle fa-stack-2x"></i>
                                        <i class="fab fa-twitter fa-stack-1x fa-inverse"></i>
                                    </span>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#!">
                                    <span class="fa-stack fa-lg">
                                        <i class="fas fa-circle fa-stack-2x"></i>
                                        <i class="fab fa-facebook-f fa-stack-1x fa-inverse"></i>
                                    </span>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#!">
                                    <span class="fa-stack fa-lg">
                                        <i class="fas fa-circle fa-stack-2x"></i>
                                        <i class="fab fa-github fa-stack-1x fa-inverse"></i>
                                    </span>
                                </a>
                            </li>
                        </ul>
                        <div class="small text-center text-muted fst-italic">Copyright &copy; Your Website 2021</div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="resources/js_main/scripts.js"></script>
</body>

</html>
