<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- Wrapper -->
<div id="wrapper">
<!-- Header Container
================================================== -->
<header id="header-container" class="fixed fullwidth dashboard">

	<!-- Header -->
	<div id="header" class="not-sticky">
		<div class="container">
			
			<!-- Left Side Content -->
			<div class="left-side">
				
				<!-- Logo -->
				<div id="logo">
					<a href="${ctx}/"><img src="images/logo.png" alt=""></a>
					<a href="${ctx}/" class="dashboard-logo"><img src="images/logo2.png" alt=""></a>
				</div>

				<!-- Mobile Navigation -->
				<div class="menu-responsive">
					<i class="fa fa-reorder menu-trigger"></i>
				</div>

				<!-- Main Navigation -->
				<nav id="navigation" class="style-1">
					<ul id="responsive">

						<li><a href="${ctx}/">Accueil</a>
						
						</li>

						<li><a href="${ctx}/news/">Annonces</a>
						</li>

						<li><a href="${ctx}/product/">Liste des voitures</a>
						</li>

						<li><a href="#">Contact</a>
						</li>
					</ul>
				</nav>
				<div class="clearfix"></div>
				<!-- Main Navigation / End -->
				
			</div>
			<!-- Left Side Content / End -->

			<!-- Right Side Content / End -->
			<div class="right-side">
				<!-- Header Widget -->
				<div class="header-widget">
					
						  <c:choose>
                    <c:when test="${not empty login_user}">
					<!-- User Menu -->
					<div class="user-menu">
						<div class="user-name"><span><img src="images/dashboard-avatar.jpg" alt=""></span>${login_user.username}</div>
						<ul>
							<li><a href="dashboard.html"><i class="fa fa-tachometer"></i>Tableau de bord</a></li>
							<li><a href="${ctx}/order/"><i class="fa fa-envelope-o"></i> Commentaires</a></li>
							<li><a href="${ctx}/user/profile"><i class="fa fa-user"></i> Mon Profile</a></li>
							<li><a href="${ctx}/logout"><i class="fa fa-sign-out"></i> déconnecter</a></li>
						</ul>
					</div>
					<a href="${ctx}/order/" class="button border with-icon gris">Ajouter une annonce<i class="fa fa-plus"></i></a>
					
					</c:when>
                    <c:when test="${not empty login_admin}">
                    <!-- User Menu -->
					<div class="user-menu">
						<div class="user-name"><span><img src="images/dashboard-avatar.jpg" alt=""></span>${login_admin.username}</div>
						<ul>
							<li><a href="${ctx}/admin/product"><i class="fa fa-tachometer"></i>Tableau de bord</a></li>
							<li><a href="${ctx}/order/"><i class="fa fa-envelope-o"></i> Commentaires</a></li>
							<li><a href="${ctx}/admin/profile"><i class="fa fa-user"></i> Mon Profile</a></li>
							<li><a href="${ctx}/admin/logout"><i class="fa fa-sign-out"></i> déconnecter</a></li>
						</ul>
					</div>
					<a href="${ctx}/order/" class="button border with-icon">Ajouter une annonce<i class="fa fa-plus"></i></a>					
                    </c:when>
                      <c:otherwise>
								<a href="${ctx}/admin/login" class="button border with-icon">Ajouter une annonce<i class="fa fa-plus"></i></a>

                      </c:otherwise>
     </c:choose>

				</div>
				<!-- Header Widget / End -->
			</div>
			<!-- Right Side Content / End -->

		</div>
	</div>
	<!-- Header / End -->

</header>
<div class="clearfix"></div>
<!-- Header Container / End -->