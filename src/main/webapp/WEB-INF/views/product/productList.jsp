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
  </head>

<!-- Titlebar
================================================== -->
<div id="titlebar" class="gradient">
	<div class="container">
		<div class="row">
			<div class="col-md-12">

				<h2>Listings</h2><span>Grid Layout With Sidebar</span>

				<!-- Breadcrumbs -->
				<nav id="breadcrumbs">
					<ul>
						<li><a href="#">Home</a></li>
						<li>Listings</li>
					</ul>
				</nav>

			</div>
		</div>
	</div>
</div>


<!-- Content
================================================== -->
<div class="container">
	<div class="row">
		
		<!-- Search -->
		<div class="col-md-12">
			<div class="main-search-input gray-style margin-top-0 margin-bottom-10">

				<div class="main-search-input-item" style="color:black">
					<input type="text" placeholder="Que recherchez-vous ?" style="color:black" value=""/>
				</div>

					<div class="main-search-input-item">
							<select style="color: #fff" data-placeholder="Selectionné le type" class="chosen-select" >
								<option >Selectionné le type</option>	
								<option value="11" > !!!!!!</option>
							</select>
						</div>

				<div class="main-search-input-item">
					<select data-placeholder="All Categories" class="chosen-select" >
						<option value="-1">Marque</option>
						<option value="MA1239" >ZIMMER</option>
					</select>
				</div>

				<button class="button">Search</button>
			</div>
		</div>
		<!-- Search Section / End -->


		<div class="col-md-12">

			<!-- Sorting - Filtering Section -->
			<div class="row margin-bottom-25 margin-top-30">

				<div class="col-md-6">
					<!-- Layout Switcher -->
					<div class="layout-switcher">
						<a href="/liste-grid-annonce" class="grid"><i class="fa fa-th"></i></a>
						<a href="#" class="list active"><i class="fa fa-align-justify"></i></a>
					</div>
				</div>

				<div class="col-md-6">
					<div class="fullwidth-filters">
						
						<!-- Panel Dropdown -->
						<div class="panel-dropdown wide float-right">
							<a href="#">More Filters</a>
							<div class="panel-dropdown-content checkboxes">

								<!-- Checkboxes -->
								<div class="row">
									<div class="col-md-6">
									
									</div>	

									<div class="col-md-6">
								
									</div>
								</div>
								
								<!-- Buttons -->
								<div class="panel-buttons">
									<button class="panel-cancel">Cancel</button>
									<button class="panel-apply">Apply</button>
								</div>

							</div>
						</div>
						<!-- Panel Dropdown / End -->

						<!-- Panel Dropdown-->
						<div class="panel-dropdown float-right">
							<a href="#">Distance Radius</a>
							<div class="panel-dropdown-content">
								<input class="distance-radius" type="range" min="1" max="100" step="1" value="50" data-title="Radius around selected destination"/>
								<div class="panel-buttons">
									<button class="panel-cancel">Disable</button>
									<button class="panel-apply">Apply</button>
								</div>
							</div>
						</div>
						<!-- Panel Dropdown / End -->

						<!-- Sort by -->
						<div class="sort-by">
							<div class="sort-by-select">
								<select data-placeholder="Default order" class="chosen-select-no-single">
									
								</select>
							</div>
						</div>
						<!-- Sort by / End -->

					</div>
				</div>

			</div>


			</div>


	 <c:forEach items="${page.result}" var="product">
            <c:set var="task" value="${leave.task }"/>
            <c:set var="pi" value="${leave.processInstance }"/>
			<li pid="${product.id}" style="list-style: none;">
				<!-- Listing Item -->
				<div class="col-lg-12 col-md-12">
					<div class="listing-item-container list-layout">
						<a href="${ctx}/product/${product.id}" class="listing-item">
							
							<!-- Image -->
							<div class="listing-item-image">
								<img data-background-image="${ctx}/common/images/blog-post-04.jpg" alt="">
								<span class="tag">${product.title}</span>
							</div>
							
							<!-- Content -->
							<div class="listing-item-content">
								<div class="listing-badge now-open">Nouvelle</div>

								<div class="listing-item-inner">
									<h3>${product.title}</h3>
									<span>${product.note}</span>
									<div class="star-rating" data-rating="3.5">
										<div class="rating-counter">${product.createTime}</div>
									<span class="star"></span><span class="star"></span><span class="star"></span><span class="star half"></span><span class="star empty"></span></div>
								</div>

								<span class="like-icon"></span>
							</div>
						</a>
					</div>
				</div>
				<!-- Listing Item / End -->
</li>
</c:forEach> 
			<!-- Pagination -->
			<div class="clearfix"></div>
			<div class="row">
				<div class="col-md-12">
					<!-- Pagination -->
					<div class="pagination-container margin-top-20 margin-bottom-40">
						<nav class="pagination">
							<ul>
								<li>        <tags:pagination page="${page}" paginationSize="${page.pageSize}"/> </li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
			<!-- Pagination / End -->

		</div>

	</div>

  <%@include file="/common/footer-in.jsp" %>

</body>
</html>