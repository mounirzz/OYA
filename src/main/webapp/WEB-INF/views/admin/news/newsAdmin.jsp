<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="/common/global.jsp" %>
    <title>Gestion des produits</title>
    <%@ include file="/common/meta.jsp" %>
    <%@ include file="/common/include-base-styles.jsp" %>
    <link type="text/css" rel="stylesheet" href="${ctx}/css/product.css"/>
    <%@ include file="/common/include-base-js.jsp" %>
    <script src="${ctx }/js/news.js" type="text/javascript"></script>
</head>

<body>
<%@include file="/common/admin-admin-nav.jsp" %>
  <div class="dashboard-content">

		<!-- Titlebar -->
		<div id="titlebar">
			<div class="row">
				<div class="col-md-12">
					<h2>Liste des véhicules</h2>
					<!-- Breadcrumbs -->
					<nav id="breadcrumbs">
						<ul>
							<li><a href="#">Accueil</a></li>
							<li><a href="#">Dashboard</a></li>
							<li>Liste des véhicules</li>
						</ul>
					</nav>
				</div>
			</div>
		</div>

		<div class="row">
			
			<!-- Listings -->
			<div class="col-lg-12 col-md-12">
				<div class="dashboard-list-box margin-top-0">
					<h4>Liste des véhicules </h4>
					<ul>
         <c:forEach items="${page.result}" var="news">
						<li pid="${news.id}">
							<div class="list-box-listing">
								<div class="list-box-listing-img"><a href="#"><img src="images/blog-post-05.jpg" alt=""></a></div>
								<div class="list-box-listing-content">
									<div class="inner">
										<h3>${news.title}</h3>
										<span>${news.content}</span>
										<div class="star-rating" data-rating="5.0">
											<div class="rating-counter">${news.createTime}</div>
										<span class="star"></span><span class="star"></span><span class="star"></span><span class="star"></span><span class="star"></span></div>
									</div>
								</div>
							</div>
							<div class="buttons-to-right" style="margin-top: 43px;">
								<a href="${ctx}/admin/news/${news.id}" class="button gray"><i class="fa fa-close"></i> Pour voir</a>
							</div>
							<div class="buttons-to-right" style=" margin-top: -40px;">
								<a href="${ctx}/admin/news/edit/${news.id}" class="button gray"><i class="fa fa-close"></i> Modifier</a>
							</div>
							<div class="buttons-to-right">
								<a href="#" class="button gray btn btn-info btn-xs del-news-btn"><i class="fa fa-close"></i> Supprimer</a>
							</div>
						</li>
						   </c:forEach>
					</ul>
					  <div class="text-center">
    		    <tags:pagination page="${page}" paginationSize="${page.pageSize}"/>
   					 </div>
   					   <a class="button preview" href="${ctx}/admin/news/new">Ajouter</a>
				</div>
			</div>


			<!-- Copyrights -->
			<div class="col-md-12">
				<div class="copyrights">© 2017 Listeo. All Rights Reserved.</div>
			</div>
		</div>

	</div>
<!-- /container -->
     <%@include file="/common/footer.jsp" %>


        </div>

    </div>
    <!-- Content / End -->
</body>
</html>