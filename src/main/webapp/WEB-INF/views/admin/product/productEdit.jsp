<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="/common/global.jsp" %>
    <title>Liste de commande</title>
    <%@ include file="/common/meta.jsp" %>
    <%@ include file="/common/include-base-styles.jsp" %>
    <%@ include file="/common/include-base-js.jsp" %>
    <script src="${ctx }/common/bootstrap/js/jqBootstrapValidation.js" type="text/javascript"></script>
    <script>
    $(function () { $("input,select,textarea").not("[type=submit]").jqBootstrapValidation(); } );
    </script>
    <script src="${ctx }/js/order.js" type="text/javascript"></script>
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
      <form:form id="inputForm" role="form" action="${ctx}/product/edit"
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
                            <input type="hidden" name="id" value="${product.id}"/>
                    <input type="hidden" name="inputUser.id" value="${product.inputUser.id}"/>
                            <div class="col-md-12">
                                <h5>Titre Annonces <i class="tip" data-tip-content="Nouvelle titre de l'annonce"></i></h5>
                                <input class="search-field" minlength="6"  id="title" name="title" type="text" style="color:black;" value="${product.title}"/>
                            </div>
                        </div>
                            <!-- Title -->
                        <div class="row with-forms">
                            <div class="col-md-12">
                                <h5> Référence annonce <i class="tip" data-tip-content="Nouvelle Référence de l'annonce"></i></h5>
                                <input class="search-field" minlength="6"  id="code" name="Code" type="text" style="color:black;" value="${product.code}"/>
                            </div>
                        </div>

                      		<!-- Row -->
						<div class="row with-forms">

							<!-- Status -->
							<div class="col-md-6">
								<h5>Category</h5>
								<select class="chosen-select-no-single" >
									<option label="blank" name="model" value="-1">Select Category</option>	
											<option value="Berline"   >Berline</option>
											<option value="Break" >Break</option>
											<option value="Coup&eacute;" >Coup&eacute;</option>
											<option value="D&eacute;capotable" >D&eacute;capotable</option>
											<option value="5" >Autres</option>
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
									<select class="chosen-select-no-single" name="marque">
											 <c:forEach var = "marque" items="${product.marque}">
       													<option value="<c:out value = "${marque.id}"/>">  Item <c:out value = "${marque.name}"/><p>
    											  </c:forEach>
									</select>

									
								<h5>Type</h5>
									<select class="chosen-select-no-single" name="model">
											<c:forEach var="model" items="${product.marque.model}">
													<option  value="<c:out value="${model.id}"/>"> <c:out value="${model.name}"></c:out></option>
											</c:forEach>
									</select>
					
								<select class="chosen-select-no-single" >
									<option label="blank" name="model" value="-11">Select le Modele</option>	
											<option value="11" ><<<<>>>>></option>
											<option value="11" >${model.name}</option>
								</select>
									<!-- Address 
							<select name="csid">
						<c:forEach var="cs" items="${categorySeconds }">
							<option value="<c:out value="${cs.csid}"/>"><c:out
									value="${cs.csname}" /></option>
						</c:forEach>
				</select>  -->
				
							</div>
						<div class="col-md-6">
									<h5>KM</h5>
									<input type="text" name="km" style="color:black;" placeholder="KM">
								</div>
									<div class="col-md-6">
									<h5>première mise en circulation :</h5>
									<input type="text" style="color:black;" placeholder="Modele" name="anneecirculation">
								</div>
								<div class="col-md-12">
									<h5>Téléphone</h5>
									<input type="text" name="Point" style="color: black;" placeholder="Téléphone">
								</div>
						</div>

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
                            <textarea class="WYSIWYG" style="color:black;" name="immatriculation" cols="40" rows="3" id="summary" spellcheck="true" value="${product.immatriculation}"></textarea>
                        </div>

                        <!-- Description -->
                        <div class="form">
                            <h5>Description</h5>
                            <textarea class="WYSIWYG" style="color:black;" name="note" cols="40" rows="3" id="summary" spellcheck="true" value="${product.note}"></textarea>
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
                            <form action="/file-upload" type="file" id="pic" name="file" src="${ctx}${product.masterPic.url}" class="dropzone" >

                            </form>
                        </div>

                    </div>
                    <!-- Section / End -->
            <a href="#" class="button preview">Ajouter <i class="fa fa-arrow-circle-right"></i></a>
                        </div>
                        </form:form>
            </div>
<%@include file="/common/footer.jsp" %>


    </div>
    <!-- Content / End -->
</div>
<!-- Dashboard / End -->
</div>
<!-- Wrapper / End -->
</body>
</html>