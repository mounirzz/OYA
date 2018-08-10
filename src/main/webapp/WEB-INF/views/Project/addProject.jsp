<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <%@ include file="/common/global.jsp" %>
    <title>Gestion des Projets  ${login_user.username}</title>
    <%@ include file="/common/meta.jsp" %>
        <link type="text/css" rel="stylesheet" media="screen" href="${ctx}/common/css/smart_wizard.css"/>
<link type="text/css" rel="stylesheet" media="screen" href="${ctx}/common/css/smart_wizard_theme_arrows.css"/>
    <%@ include file="/common/include-base-style-man.jsp" %>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">


    
</head>

<body class="hold-transition skin-yellow sidebar-mini">
<%@ include file="/common/user-admin-nav-man.jsp" %>
 <%@ include file="/common/user-admin-nav-main-sidebar.jsp" %>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Form Wizard
      </h1>
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="breadcrumb-item"><a href="#">Forms</a></li>
        <li class="breadcrumb-item active">Form Wizard</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">  
      <!-- Validation wizard -->
      <div class="box box-solid bg-dark">
        <div class="box-header with-border">
          <h3 class="box-title">Step wizard with validation</h3>
          <h6 class="box-subtitle">You can us the validation like what we did</h6>

          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
            <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-remove"></i></button>
          </div>
        </div>
        
 
        <!-- SmartWizard html -->
        <div id="smartwizard">
            <ul>
                <li><a href="#step-1">Projet<br /><small>Information sur le projet</small></a></li>
                <li><a href="#step-2">Dossier Administratif<br /><small>Dossier Administratif du Projet</small></a></li>
                <li><a href="#step-3">Plan<br /><small>Plan du projet</small></a></li>
                <li><a href="#step-4">Planning<br /><small>Plannification du Projet</small></a></li>
            </ul>

            <div>
                <div id="step-1">
                    <form:form id="inputForm" role="form" action="${ctx}/Projects/add"
                   method="post" class="form-horizontal" enctype="multipart/form-data">
				<h6>Projet</h6>
				<section class="bg-hexagons-dark">
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label > Categorie du Projet : <span class="danger">*</span> </label>
								<input type="text" name="categorie" class="form-control required" > </div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
				                  <label for="exampleInputFile">Certificat Propriete</label>
				                  <input type="file" name="certificat_propriete" id="exampleInputFile">

				                  <p class="help-block text-red">La certife ne doit pas dépassser 100MB</p>
                		</div>
							</div>
							</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label > Description : <span class="danger">*</span> </label>
								<textarea rows="4" name="description" class="form-control required" > </textarea></div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label for="wdate2">Date de début :</label>
								<input type="date" name="date_debut" class="form-control" id="wdate2"> </div>
						</div>
					</div>
					<div class="row">
					<div class="col-md-6">
							<div class="form-group">
								<label for="wdate2">Date de realisation :</label>
								<input type="date" name="date_debut" class="form-control" id="wdate2"> </div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label for="wdate2">Etat du projet :</label>
								<input type="text" name="etat" class="form-control" id="wdate2"> </div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label for="wdate2">Inititude :</label>
								<input type="text" name="intitule" class="form-control" id="wdate2"> </div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label for="wdate2">Numéro Titre Financier :</label>
								<input type="text" name="num_title_foncier" class="form-control" id="wdate2"> </div>
						</div>
                </div>
                	<div class="text-xs-right">
						<button type="submit" class="btn btn-info btn-wizard">Enregister</button>
					</div>
				</section>
				</form:form>
				 </div>
                <div id="step-2">
                <form:form>
				<h6>Dossier Administratif</h6>
				<section class="bg-hexagons-dark">
					<div class="row">
							<div class="col-md-6">
							<div class="form-group">
								<label for="idContrat">Numéro de Contrat :</label>
								<input type="text" name="idContrat" class="form-control" id="idContrat" > </div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label for="objetcontrat">Objet de contrat :</label>
								<input type="text" name="Objet_contrat" class="form-control" id="objetcontrat" > </div>
						</div>
						</div>
						<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label for="estimation_trav">Estimation travaux :</label>
								<text name="estimation_trav" id="estimation_trav" type="text" class="form-control">
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label for="honoraires">Honoraires :</label>
								<input name="honoraires" id="honoraires" type="text" class="form-control">			
								</div>
						</div>
						</div>
							<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label for="Devis_topographe">Devis topographe :</label>
								<input name="Devis_topographe" id="Devis_topographe" type="text" class="form-control">
							</div>
						</div>
						</div>
						<div class="text-xs-right">
							<button type="submit" class="btn btn-info btn-wizard">Enregister</button>
						</div>
				</section>
				</form:form>
                </div>
                <div id="step-3" class="">
                   <h6>Plan</h6>
                       <form:form>
				<section class="bg-hexagons-dark">
						<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label > Type de Plan : <span class="danger">*</span> </label>
								<input type="text" name="type_Plan" class="form-control required" > </div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
				                  <label for="plan">Fichier Plan :</label>
				                  <input type="file" name="plan" id="plan">

				                  <p class="help-block text-red">Le plan ne doit pas dépassser 100MB</p>
                		</div>
							</div>
							</div>
					<div class="row">
							<div class="col-md-6">
							<div class="form-group">
								<label for="DatePlan">Date du plan :</label>
								<input type="date" name="DatePlan" class="form-control" id="DatePlan"> </div>
						</div>
						</div>
					<div class="text-xs-right">
							<button type="submit" class="btn btn-info btn-wizard">Enregister</button>
						</div>
				</section>
				</form:form>
				</div>
				  <div id="step-4" class="">
       				<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label for="behName3">Behaviour :</label>
								<input type="text" class="form-control required" id="behName3">
							</div>
							<div class="form-group">
								<label for="participants3">Confidance</label>
								<input type="text" class="form-control required" id="participants3">
							</div>
							<div class="form-group">
								<label for="participants4">Result</label>
								<select class="custom-select form-control required" id="participants4" name="location">
									<option value="">Select Result</option>
									<option value="Selected">Selected</option>
									<option value="Rejected">Rejected</option>
									<option value="Call Second-time">Call Second-time</option>
								</select>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label for="decisions2">Comments</label>
								<textarea name="decisions" id="decisions2" rows="4" class="form-control"></textarea>
							</div>
							<div class="form-group">
								<label>Rate Interviwer :</label>
								<div class="c-inputs-stacked">
									<input type="checkbox" id="checkbox_6">
									<label for="checkbox_6" class="block">1 star</label>
									<input type="checkbox" id="checkbox_7">
									<label for="checkbox_7" class="block">2 star</label>
									<input type="checkbox" id="checkbox_8">
									<label for="checkbox_8" class="block">3 star</label>
									<input type="checkbox" id="checkbox_9">
									<label for="checkbox_9" class="block">4 star</label>
									<input type="checkbox" id="checkbox_10">
									<label for="checkbox_10" class="block">5 star</label>
								</div>
							</div>
						</div>
					</div>
       				
       				</div>
            </div>
        </div>

        </div>
      </div>
      <!-- /.box -->
      
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  </div>
  <!-- /.content-wrapper -->

	
	<!-- jQuery 3 -->
	<script src="${ctx}/common/scripts/jquery/dist/jquery.min.js"></script>
	
	<!-- popper -->
	<script src="${ctx}/common/scripts/popper/dist/popper.min.js"></script>
	
	<!-- Bootstrap 4.0-->
	<script src="${ctx}/common/scripts/bootstrap.min.js"></script>
	
	<!-- SlimScroll -->
	<script src="${ctx}/common/scripts/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	
	<!-- FastClick -->
	<script src="../../../assets/vendor_components/fastclick/lib/fastclick.js"></script>
	
	<!-- Crypto_Admin App -->
	<script src=${ctx}/common/js/template.js"></script>
	
	<!-- Crypto_Admin for demo purposes -->
	<script src="${ctx}/common/js/demo.js"></script>
   
   <!-- validate  -->
    <script src="${ctx}/common/scripts/jquery/dist/jquery.validate.min.js"></script>
	
    
    <script src="${ctx}/common/scripts/jquery/dist/jquery.smartWizard.js"></script>
    
    <!-- wizard  -->
    <script src="${ctx}/common/js/MySteps.js"></script>
		
</body>
</html>