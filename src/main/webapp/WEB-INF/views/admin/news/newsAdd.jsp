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

	<!-- Content
	================================================== -->
	<div class="dashboard-content" style="margin-left: 0px;">

		<!-- Titlebar -->
		<div id="titlebar">
			<div class="row">
				<div class="col-md-12">
					<h2>Ajouter une Annonce</h2>
					<!-- Breadcrumbs -->
					<nav id="breadcrumbs">
						<ul>
							<li><a href="#">Accueil</a></li>
							<li><a href="#">Dashboard</a></li>
							<li>Ajouter une Annonce</li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
                      <form:form id="inputForm" role="form" action="${ctx}/admin/news/add"
                   method="post" class="form-horizontal" enctype="multipart/form-data">
				<div id="add-listing">

					<!-- Section -->
					<div class="add-listing-section">

						<!-- Headline -->
						<div class="add-listing-headline">
							<h3><i class="fa fa-folder-open"></i>Informations sur vehicule</h3>
						</div>

						<!-- Title -->
						<div class="row with-forms">
							<div class="col-md-12">
								<h5>Titre de l'annonce <i class="tip" data-tip-content="Nouvelle titre de l'annonce"></i></h5>
								<input class="search-field" minlength="6"  id="title" name="title" type="text" style="color:black;" value=""/>
							</div>
						</div>
					

			

					</div>
					<!-- Section / End -->
								<!-- Section -->
					<div class="add-listing-section margin-top-45">

						<!-- Headline -->
						<div class="add-listing-headline">
							<h3><i class="fa fa-folder-open"></i> Contenu de l'annonce</h3>
						</div>

						<!-- Description -->
						<div class="form">
							<h5>Description</h5>
							<textarea class="WYSIWYG" style="color:black;" name="content" cols="40" rows="3" id="summary" spellcheck="true"></textarea>
						</div>

						<!-- Row 
						<div class="row with-forms">

							
							<div class="col-md-4">
								<h5 class="fb-input"><i class="fa fa-facebook-square"></i> Facebook <span>(optional)</span></h5>
								<input type="text" style="color:black;" placeholder="https://www.facebook.com/">
							</div>

							
							<div class="col-md-4">
								<h5 class="twitter-input"><i class="fa fa-twitter"></i> Twitter <span>(optional)</span></h5>
								<input type="text" style="color:black;" placeholder="https://www.twitter.com/">
							</div>

						
							<div class="col-md-4">
								<h5 class="gplus-input"><i class="fa fa-google-plus"></i> Google Plus <span>(optional)</span></h5>
								<input type="text" style="color:black;" placeholder="https://plus.google.com">
							</div>

						</div>
						 Row / End 


					
						<h5 class="margin-top-30 margin-bottom-10">Amenities <span>(optional)</span></h5>
						<div class="checkboxes in-row margin-bottom-20">
					
							<input id="check-a" style="color:black;" type="checkbox" name="check">
							<label for="check-a">Elevator in building</label>

							<input id="check-b" style="color:black;" type="checkbox" name="check">
							<label for="check-b">Friendly workspace</label>

							<input id="check-c" style="color:black;" type="checkbox" name="check">
							<label for="check-c">Instant Book</label>

							<input id="check-d"  style="color:black;" type="checkbox" name="check">
							<label for="check-d">Wireless Internet</label>

							<input id="check-e" style="color:black;" type="checkbox" name="check" >
							<label for="check-e">Free parking on premises</label>

							<input id="check-f" style="color:black;" type="checkbox" name="check" >
							<label for="check-f">Free parking on street</label>

							<input id="check-g" style="color:black;" type="checkbox" name="check">
							<label for="check-g">Smoking allowed</label>	

							<input id="check-h" style="color:black;" type="checkbox" name="check">
							<label for="check-h">Events</label>
					
						</div>
						Checkboxes / End -->

					</div>


					<!-- Section -->
					<div class="add-listing-section margin-top-45">

						<!-- Headline -->
						<div class="add-listing-headline">
							<h3><i class="fa fa-picture-o"></i> Gallery</h3>
						</div>

						<!-- Dropzone -->
						<div class="submit-section">
							<form action="/file-upload" type="file" id="pic" name="masterPic" class="dropzone" ></form>
						</div>

					</div>
					<!-- Section / End -->
			<button type="submit" class="button preview">Ajouter <i class="fa fa-arrow-circle-right"></i></button>
						</div>
						</form:form>
			</div>
			</div>

		
     <%@include file="/common/footer.jsp" %>

        </div>

    </div>
    <!-- Content / End -->

     </div>
     </div>
<!-- Wrapper / End -->
</body>
</html>