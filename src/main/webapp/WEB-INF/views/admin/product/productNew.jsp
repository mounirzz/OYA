<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="/common/global.jsp" %>
    <title>Liste de commande</title>
    <%@ include file="/common/meta.jsp" %>
    <%@ include file="/common/include-base-styles.jsp" %>
    <%@ include file="/common/include-base-js.jsp" %>
      </head>

<body>
    <%@include file="/common/admin-admin-nav.jsp" %>


<div class="container" >
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
      <form:form id="inputForm" role="form" action="${ctx}/admin/product/new"
                   method="post" class="form-horizontal" enctype="multipart/form-data">
				<div id="add-listing">

					<!-- Section -->
					<div class="add-listing-section">

						<!-- Headline -->
						<div class="add-listing-headline">
							<h3><i class="fa fa-folder-open"></i>Informations sur vehicule</h3>
						
						<div class="radio-vertical" style="float: right; margin-top: -30px;">
							<div class="radio-button" style=" padding: 5px 0px;">
									<input value="publie" id="radio-button4" name="status" type="radio">
									<span>publier votre annonce (nouvelle !)</span>
							</div>
							<div class="radio-button">
									<input value="non-publie" id="radio-button5" name="status" type="radio">
									<span>non publier  (Normale !)</span>
							</div>
							</div>		
						</div>
						
				
	
						<!-- Title -->
						<div class="row with-forms">
							<div class="col-md-12">
								<h5>Titre Annonces <i class="tip" data-tip-content="Nouvelle titre de l'annonce"></i></h5>
								<input class="search-field" minlength="6"  id="title" name="title" type="text" style="color:black;" value=""/>
							</div>
						</div>
							<!-- Title -->
						<div class="row with-forms">
							<div class="col-md-12">
								<h5> Référence annonce <i class="tip" data-tip-content="Nouvelle Référence de l'annonce"></i></h5>
								<input class="search-field" minlength="6"  id="code" name="Code" type="text" style="color:black;" value=""/>
							</div>
						</div>

						<!-- Row -->
						<div class="row with-forms">

							<!-- Status -->
							<div class="col-md-6">
								<h5>Category</h5>
								<select class="chosen-select-no-single" >
									<option label="blank" name="point" value="-1">Select Category</option>	
											<option value="Berline"   >Berline</option>
											<option value="Break" >Break</option>
											<option value="Coup&eacute;" >Coup&eacute;</option>
											<option value="D&eacute;capotable" >D&eacute;capotable</option>
											<option value="Autres" >Autres</option>
								</select>
									<h5>Carburant</h5>
								<select class="chosen-select-no-single" >
									<option label="blank" name="carburant" value="-11">Select Carburant</option>	
											<option value="Diesel" >Diesel</option>
											<option value="Essence" >Essence</option>
											<option value="Autres" >Autres</option>
								</select>
							</div>
							<div class="col-md-6">
								<h5>Marque</h5>
										<select class="chosen-select-no-single" name="marquePro">
												<option  value=""> Selection Marque</option>
										    	<c:forEach items="${ListMarque}" var="Marque" >
       													<option value="${Marque.id}">${Marque.title}</option>
    											  </c:forEach>
								</select>

									
								<h5>Type</h5>
									<input type="text" name="model" style="color:black;" placeholder="Model">
					
									<!-- Address 
							<select name="csid">
						<c:forEach var="cs" items="${categorySeconds }">
							<option value="<c:out value="${cs.csid}"/>"><c:out
									value="${cs.csname}" /></option>
						</c:forEach>
				</select> 
			
				
				  -->
				
							</div>
						<div class="col-md-6">
									<h5>KM</h5>
									<input type="text" name="model" style="color:black;" placeholder="KM">
								</div>
									<div class="col-md-6">
									<h5>première mise en circulation :</h5>
									<input type="date" style="color:black;" placeholder="Modele" name="anneecirculation">
								</div>
									<!-- Title -->

							<div class="col-md-12">
								<h5>Prix <i class="tip" data-tip-content="Prix de véhicule"></i></h5>
								<input class="search-field"  id="prix" name="prix" type="text" style="color:black;" value=""/>
							</div>
						</div>
						<!-- Row / End -->

					</div>
					<!-- Section / End -->
								<!-- Section -->
					<div class="add-listing-section margin-top-45">

						<!-- Headline -->
						<div class="add-listing-headline">
							<h3><i class="fa fa-folder-open"></i> Details</h3>
						</div>
						<div class="form">
							<h5>Données Techniques</h5>
							<textarea class="WYSIWYG" style="color:black;" name="immatriculation" cols="40" rows="3" id="summary" spellcheck="true"></textarea>
						</div>

						<!-- Description -->
						<div class="form">
							<h5>Description</h5>
							<textarea class="WYSIWYG" style="color:black;" name="note" cols="40" rows="3" id="summary" spellcheck="true"></textarea>
						</div>
					</div>


					<!-- Section -->
					<div class="add-listing-section margin-top-45">

						<!-- Headline -->
						<div class="add-listing-headline">
							<h3><i class="fa fa-picture-o"></i> Gallery</h3>
						</div>

						<!-- Dropzone 
						<div class="submit-section">
							 <div class="form-group">
						            <div class="file-loading" for="pic">
						                <input id="file-5" class="file" type="file" id="pic" name="file">
						            </div>
		      				  </div>				
						</div>-->
			

					</div>
					<!-- Section / End -->
			<button type="submit" class="button preview btn btn-primary">Ajouter <i class="fa fa-arrow-circle-right"></i></button>
						</form:form>	
						
						
					<!-- Section -->
					<div class="add-listing-section margin-top-45">

						<!-- Headline -->
						<div class="add-listing-headline">
							<h3><i class="sl sl-icon-picture"></i> Gallery</h3>
						</div>

						<!-- Dropzone -->
						<div class="submit-section">
							<form action="/file-upload" class="dropzone" ></form>
						</div>

					</div>
					<!-- Section / End -->
						</div>
				
			</div>
<%@include file="/common/footer.jsp" %>
      <%@ include file="/js/header-updatefile.jsp" %>
      	<script src="${ctx }/common/bootstrap/js/bootstrapValidator.js" type="text/javascript"></script>
	<script>
    $(function () { $("input,select,textarea").not("[type=submit]").bootstrapValidator(); } );
	</script>

	</div>
	<!-- Content / End -->
</div>
<!-- Dashboard / End -->
</div>
<!-- Wrapper / End -->
</body>
</html>