<%@include file="/common/header-in.jsp" %>
<!-- Titlebar
================================================== -->
<div id="titlebar" class="gradient">
	<div class="container">
		<div class="row">
			<div class="col-md-12">

				<h2 style="color:white;">Blog</h2><span style="color:white;">Latest News</span>

				<!-- Breadcrumbs -->
				<nav id="breadcrumbs">
					<ul style="color:white;">
						<li><a href="#" >Home</a></li>
						<li>Blog</li>
					</ul>
				</nav>

			</div>
		</div>
	</div>
</div>


<!-- Content
================================================== -->
<div class="container">

	<!-- Blog Posts -->
	<div class="blog-page">
	<div class="row">
	 <c:forEach items="${page.result}" var="product">
            <c:set var="task" value="${leave.task }"/>
            <c:set var="pi" value="${leave.processInstance }"/>
            
		<div class="col-lg-9 col-md-8 padding-right-30">

			<!-- Blog Post -->
			<div class="blog-post">
				
				<!-- Img -->
                <a href="${ctx}/product/${product.id}" class="post-img"><img class="img-thumbnail" src="${ctx}${product.masterPic.url}">		
				</a>
				
				<!-- Content -->
				<div class="post-content">
					<h3><a href="${ctx}/product/${product.id}">${product.title}</a></h3>

					<ul class="post-meta">
						<li>August 22, 2017</li>
						<li><a href="#">Tips</a></li>
						<li><a href="#">${product.point}</a></li>
					</ul>

					<p>${product.note}</p>

					<a href="${ctx}/product/${product.id}" class="read-more">Read More <i class="fa fa-angle-right"></i></a>
				</div>

			</div>
			<!-- Blog Post / End -->
			
				</c:forEach>
				
			<!-- Pagination -->
			<div class="clearfix"></div>
			<div class="row">
				<div class="col-md-12">
					<!-- Pagination -->
					<div class="pagination-container margin-bottom-40">
						<nav class="pagination">
							<ul>
																<li>  <tags:pagination page="${page}" paginationSize="${page.pageSize}"/></li>
								
							</ul>
						</nav>
					</div>
				</div>
			</div>
			<!-- Pagination / End -->

		</div>

	<!-- Blog Posts / End -->


	<!-- Widgets -->
	<div class="col-lg-3 col-md-4">
		<div class="sidebar right">

			<!-- Widget -->
			<div class="widget">
				<h3 class="margin-top-0 margin-bottom-25">Search Blog</h3>
				<div class="search-blog-input">
					<div class="input"><input class="search-field" type="text" placeholder="Type and hit enter" style="color: #808080" value=""/></div>
				</div>
				<div class="clearfix"></div>
			</div>
			<!-- Widget / End -->


			<!-- Widget -->
			<div class="widget margin-top-40">
				<h3>Got any questions?</h3>
				<div class="info-box margin-bottom-10">
					<p>Having any questions? Feel free to ask!</p>
					<a href="pages-contact.html" class="button fullwidth margin-top-20"><i class="fa fa-envelope-o"></i> Drop Us a Line</a>
				</div>
			</div>
			<!-- Widget / End -->


			<!-- Widget -->
			<div class="widget margin-top-40">

				<h3>Popular Posts</h3>
				<ul class="widget-tabs">

					<!-- Post #1 -->
					<li>
						<div class="widget-content">
								<div class="widget-thumb">
								<a href="pages-blog-post.html"><img src="images/blog-widget-03.jpg" alt="" /></a>
							</div>
							
							<div class="widget-text">
								<h5><a href="pages-blog-post.html">Hotels for All Budgets </a></h5>
								<span>October 26, 2016</span>
							</div>
							<div class="clearfix"></div>
						</div>
					</li>
					
					<!-- Post #2 -->
					<li>
						<div class="widget-content">
							<div class="widget-thumb">
								<a href="pages-blog-post.html"><img src="images/blog-widget-02.jpg" alt="" /></a>
							</div>
							
							<div class="widget-text">
								<h5><a href="pages-blog-post.html">The 50 Greatest Street Arts In London</a></h5>
								<span>November 9, 2016</span>
							</div>
							<div class="clearfix"></div>
						</div>
					</li>
					
					<!-- Post #3 -->
					<li>
						<div class="widget-content">
							<div class="widget-thumb">
								<a href="pages-blog-post.html"><img src="images/blog-widget-01.jpg" alt="" /></a>
							</div>
							
							<div class="widget-text">
								<h5><a href="pages-blog-post.html">The Best Cofee Shops In Sydney Neighborhoods</a></h5>
								<span>November 12, 2016</span>
							</div>
							<div class="clearfix"></div>
						</div>
					</li>

				</ul>

			</div>
			<!-- Widget / End-->


			<!-- Widget -->
			<div class="widget margin-top-40">
				<h3 class="margin-bottom-25">Social</h3>
				<ul class="social-icons rounded">
					<li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
					<li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
					<li><a class="gplus" href="#"><i class="fa fa-google-plus"></i></a></li>
					<li><a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
				</ul>

			</div>
			<!-- Widget / End-->

			<div class="clearfix"></div>
			<div class="margin-bottom-40"></div>
		</div>
	</div>
	</div>
	<!-- Sidebar / End -->


</div>
</div>
  <%@include file="/common/footer-in.jsp" %>
  </body>
</html>
