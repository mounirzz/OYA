<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- <div class="row br">
    <ul class="nav nav-tabs">
        <li id="sub-nav-user"><a href="${ctx}/user/profile">Informations personnelles/a></li>
        <li id="sub-nav-order"><a href="${ctx}/order/">Gestion des commandes</a></li>
        <li id="sub-nav-address"><a href="${ctx}/user/userAddress">Gestion d'adresses</a></li>
        <%--<li id="sub-nav-security"><a href="${ctx}/user/security">Gestion de la sécurité</a></li>--%>
    </ul>
</div> -->

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
					<a href="index.html"><img src="images/logo.png" alt=""></a>
					<a href="index.html" class="dashboard-logo"><img src="images/logo2.png" alt=""></a>
				</div>

				<!-- Mobile Navigation -->
				<div class="menu-responsive">
					<i class="fa fa-reorder menu-trigger"></i>
				</div>

				<!-- Main Navigation -->
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
				<div class="header-widget">
				
				  <c:choose>
                    <c:when test="${not empty login_user}">
					<!-- User Menu -->
					<div class="user-menu">
						<div class="user-name"><span><img src="images/dashboard-avatar.jpg" alt=""></span>${login_user.username}</div>
						<ul>
							<li><a href="${ctx}/user/profile/${user.id}"><i class="fa fa-tachometer"></i>Tableau de bord</a></li>
							<li><a href="${ctx}/order/"><i class="fa fa-envelope-o"></i> Commentaires</a></li>
							<li><a href="${ctx}/user/profile/${user.id}"><i class="fa fa-user"></i> Mon Profile</a></li>
							<li><a href="${ctx}/user/logout"><i class="fa fa-sign-out"></i> déconnecter</a></li>
						</ul>
					</div>
					<a href="#" class="button border with-icon gris">Ajouter une annonce<i class="fa fa-plus"></i></a>
					
					</c:when>
                    <c:when test="${not empty login_admin}">
                    <!-- User Menu -->
					<div class="user-menu">
						<div class="user-name"><span><img src="images/dashboard-avatar.jpg" alt=""></span>${login_admin.username}</div>
						<ul>
							<li><a href="${ctx}/admin/product"><i class="fa fa-tachometer"></i>Tableau de bord</a></li>
							<li><a href="${ctx}/order/"><i class="fa fa-envelope-o"></i> Commentaires</a></li>
							<li><a href="${ctx}/user/profile"><i class="fa fa-user"></i> Mon Profile</a></li>
							<li><a href="${ctx}/admin/logout"><i class="fa fa-sign-out"></i> déconnecter</a></li>
						</ul>
					</div>
					<a href="${ctx}/admin/product" class="button border with-icon">Ajouter une annonce<i class="fa fa-plus"></i></a>
					
                    </c:when>
                    <c:otherwise>
         
					<a href="#sign-in-dialog" class="sign-in popup-with-zoom-anim"><i class="fa fa-sign-in"></i> M'identifier</a>
					<a href="dashboard-add-listing.html" class="button border with-icon">Ajouter une Annonce<i class="fa fa-plus"></i></a>
				</div>
			</div>
 				 </c:otherwise>
     </c:choose>
		</div>
	</div>
	<!-- Header / End -->

</header>
<div class="clearfix"></div>
<!-- Header Container / End -->

<!-- Dashboard -->
<div id="dashboard">

<div class="dashboard-nav">
		<div class="dashboard-nav-inner">

			<ul data-submenu-title="Main">
				<li class="active"><a href="dashboard.html"><i class="fa fa-tachometer"></i> Tableau de bord</a></li>
				<li><a href="dashboard-messages.html"><i class="fa fa-envelope-o"></i> Commentaires <span class="nav-tag messages">2</span></a></li>
			</ul>
			
			<ul data-submenu-title="Listings">
				<li><a><i class="${ctx}/order/"></i> Gestion de Production</a>
					<ul>
						<li><a href="${ctx}/admin/product">Liste des voitures<span class="nav-tag green">6</span></a></li>
						<li><a href="${ctx}/admin/product/new">Ajouter une voiture <span class="nav-tag yellow"></span></a></li>
						<li><a href="dashboard-my-listings.html">Expired <span class="nav-tag red">2</span></a></li>
					</ul>	
				</li>
				<li><a href="${ctx}/admin/order/"><i class="fa fa-star"></i>Liste des reservations</a></li>
				<li><a href="${ctx}/admin/news/"><i class="fa fa-heart"></i>Liste des annonces</a></li>
				<li><a href="${ctx}/admin/news/new"><i class="fa fa-plus"></i>Ajouter une annonces</a></li>
				<li><a href=""><i class="fa fa-heart"></i>Liste des clients</a></li>
			</ul>	

			<ul data-submenu-title="Account">
			<li><a href="${ctx}/user/userAddress"><i class="fa fa-user"></i>Gestion des adresses</a></li>
				<li><a href="${ctx}/user/profile"><i class="fa fa-user"></i>Mon Profile</a></li>
				<li><a href="${ctx}/user/security"><i class="fa fa-user"></i>Gestion de sécurité</a></li>
				<li><a href="index.html"><i class="fa fa-sign-out"></i>déconnecter</a></li>
			</ul>
			
		</div>
	</div>
	<!-- Navigation / End -->