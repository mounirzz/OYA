<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>

	<title>Autocar ATRIEM FRANCE</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <%@ include file="/common/global.jsp" %>
    <%@ include file="/common/meta.jsp" %>
    <%@ include file="/common/include-base-styles.jsp" %>
  <%@ include file="/common/header-nav.jsp" %>
      <script src="${ctx }/js/news.js" type="text/javascript"></script>
  
 
</head>
         

   
<!-- Banner
================================================== -->
<div class="main-search-container" data-background-image="${ctx}/common/images/main-search-background-01.png">
	<div class="main-search-inner">

		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h2>Autocar</h2>
					<h4>voitures de collection et véhicules anciens pour les passionnés</h4>
			<form:form name="Search" action="${ctx}/Search" method="post" role="form">
					
					<div class="main-search-input">

						<div class="main-search-input-item">
							<input type="text" placeholder="Que recherchez-vous ?" style="color:black;" value=""/>
						</div>

							<div class="main-search-input-item">
							<select style="color: #fff" data-placeholder="All Categories" class="chosen-select" >
								<option >Selectionné la marque</option>	
								<c:forEach items="${ListMarque}" var="Marque" >
       													<option value="${Marque.id}">${Marque.title}</option>
    											  </c:forEach>
								</select>
						</div>

						<div class="main-search-input-item">
							<select style="color: #fff" data-placeholder="Selectionné le type" class="chosen-select" >
							<option >Selectionné Model</option>	
									  <c:forEach items="${ListMarque}" var="Model" >
       													<option value="${Model.id}">${Model.title}</option>
    											  </c:forEach>
							</select>
						</div>

						<a class="button" href="${ctx}/Search">Search</a>
		
					</div>
				</form:form>
				</div>
			</div>
		</div>

	</div>
</div>


<!-- Content
=================================================
<div class="container">
	<div class="row">

		<div class="col-md-12">
			<h3 class="headline centered margin-top-75">
				Popular Categories
				<span>Browse <i>the most desirable</i> categories</span>
			</h3>
		</div>

	</div>
</div>= -->
<c:forEach items="${page.result}" var="marque" >
       		  <tr>
                        <td>${marque.id}</td>
			 			 <td>${marque.name}</td></tr>
    	</c:forEach>

<!-- Categories Carousel -->
<div class="fullwidth-carousel-container margin-top-25">
	<div class="fullwidth-slick-carousel category-carousel">

		<!-- Item -->
		<div class="fw-carousel-item">

			<!-- this (first) box will be hidden under 1680px resolution -->
			<div class="category-box-container half">
				<a th:href="@{/cars}" class="category-box" data-background-image="${ctx}/common/images/blog-post-05.jpg">
					<div class="category-box-content">
						<h3>VINCENT HURRICANE</h3>
						<span>64 Vues</span>
					</div>
					<span class="category-box-btn">Browse</span>
				</a>
			</div>

			<div class="category-box-container half">
				<a th:href="@{/cars}" class="category-box" data-background-image="${ctx}/common/images/blog-post-04.jpg">
					<div class="category-box-content">
						<h3>VOLVO</h3>
						<span>14 Vues</span>
					</div>
					<span class="category-box-btn">Browse</span>
				</a>
			</div>
		</div>

		<!-- Item -->
		<div class="fw-carousel-item">
			<div class="category-box-container">
				<a th:href="@{/cars}" class="category-box" data-background-image="${ctx}/common/images/oldtimer-dashboard-picjumbo-com.jpg">
					<div class="category-box-content">
						<h3>TOYOTA</h3>
						<span>67 Vues</span>
					</div>
					<span class="category-box-btn">Browse</span>
				</a>
			</div>
		</div>

		<!-- Item -->
		<div class="fw-carousel-item">
			<div class="category-box-container">
				<a th:href="@{/cars}" class="category-box" data-background-image="${ctx}/common/images/blog-post-06.jpg">
					<div class="category-box-content">
						<h3>Fitness</h3>
						<span>27 Vues</span>
					</div>
					<span class="category-box-btn">Browse</span>
				</a>
			</div>
		</div>

		<!-- Item -->
		<div class="fw-carousel-item">
			<div class="category-box-container">
				<a th:href="@{/cars}" class="category-box" data-background-image="${ctx}/common/images/blog-post-02.jpg">
					<div class="category-box-content">
						<h3>Nightlife</h3>
						<span>22 Vues</span>
					</div>
					<span class="category-box-btn">Browse</span>
				</a>
			</div>
		</div>

		<!-- Item -->
		<div class="fw-carousel-item">
			<div class="category-box-container">
				<a th:href="@{/cars}" class="category-box" data-background-image="${ctx}/common/images/blog-post-01.jpg">
					<div class="category-box-content">
						<h3>TURCAT-MÉRY</h3>
						<span>130 Vues</span>
					</div>
					<span class="category-box-btn">Browse</span>
				</a>
			</div>
		</div>            

	</div>
</div>
<!-- Categories Carousel / End -->

  <%@include file="/common/footer-in.jsp" %>

</body>
</html>