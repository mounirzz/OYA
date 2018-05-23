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
<div class="container">
<div class="dashboard-content" style=" width: 100%; margin-left: -2px;">

		<!-- Titlebar -->
		<div id="titlebar">
			<div class="row">
				<div class="col-md-12">
					<h2>Reviews</h2>
					<!-- Breadcrumbs -->
					<nav id="breadcrumbs">
						<ul>
							<li><a href="#">Home</a></li>
							<li><a href="#">Dashboard</a></li>
							<li>Reviews</li>
						</ul>
					</nav>
				</div>
			</div>
		</div>

		<div class="row">
			
			<!-- Listings -->
			<div class="col-lg-6 col-md-12" style=" width: 100%;">

				<div class="dashboard-list-box margin-top-0">

					<h4>Visitor Reviews</h4> 	
					<ul>

						<li>
							<div class="comments listing-reviews">
								<ul>
									<li>
										<div class="avatar"><img src="http://www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&amp;s=70" alt=""></div>
										<div class="comment-content"><div class="arrow-comment"></div>
											<div class="comment-by">${news.title}<span class="date">${news.createTime}</span>
												<div class="star-rating" data-rating="5"><span class="star"></span><span class="star"></span><span class="star"></span><span class="star"></span><span class="star"></span></div>
											</div>
											<p>${news.content}</p>
											
										<!-- 	<div class="review-images mfp-gallery-container">
												<a href="images/review-image-01.jpg" class="mfp-gallery"><img src="images/review-image-01.jpg" alt=""></a>
											</div> -->
											<a href="${ctx}/admin/news/edit/${news.id}" class="rate-review"><i class="fa fa-edit"></i> Modification</a>
										</div>
									</li>
								</ul>
							</div>
						</li>

					</ul>
				</div>

				<!-- Pagination
				<div class="clearfix"></div>
				<div class="pagination-container margin-top-30 margin-bottom-0">
					<nav class="pagination">
						<ul>
							<li><a href="#" class="current-page">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#"><i class="sl sl-icon-arrow-right"></i></a></li>
						</ul>
					</nav>
				</div>
				 Pagination / End -->

			</div>
			<!-- Copyrights -->
		<!-- /container -->
     <%@include file="/common/footer.jsp" %>


        </div>

    </div>
    <!-- Content / End -->
</body>
</html>