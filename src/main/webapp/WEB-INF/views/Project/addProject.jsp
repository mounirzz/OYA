<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <%@ include file="/common/global.jsp" %>
    <title>Gestion des Projets  ${login_user.username}</title>
    <%@ include file="/common/meta.jsp" %>
        <link rel="stylesheet" href="${ctx}/common/scripts/fullcalendar/dist/fullcalendar.min.css">
        <link type="text/css" rel="stylesheet" media="screen" href="${ctx}/common/css/smart_wizard.css"/>
<link type="text/css" rel="stylesheet" media="screen" href="${ctx}/common/css/smart_wizard_theme_arrows.css"/>
    <%@ include file="/common/include-base-style-man.jsp" %>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<style>/*modal*/
.modal {
    background: rgba(0, 0, 0, .3);
}
.modal-content {
    border-radius: 0;
    -webkit-box-shadow: 0 2px 3px rgba(0, 0, 0, .125);
    box-shadow: 0 2px 3px rgba(0, 0, 0, .125);
    border: 0;
	background-color: #252525;
}
@media (min-width:768px) {
    .modal-content {
    -webkit-box-shadow: 0 2px 3px rgba(0, 0, 0, .125);
    box-shadow: 0 2px 3px rgba(0, 0, 0, .125);
}
}.modal-header {
    border-bottom-color: #585858;
}
.modal-footer {
    border-top-color: #585858;
	display: inline-block;
}
.modal-primary .modal-footer, .modal-primary .modal-header {
    border-color: #398bf7;
}
.modal-warning .modal-footer, .modal-warning .modal-header {
    border-color: #fbae1c;
}
.modal-info .modal-footer, .modal-info .modal-header {
    border-color: #398bf7;
}
.modal-success .modal-footer, .modal-success .modal-header {
    border-color: #00c292;
}
.modal-danger .modal-footer, .modal-danger .modal-header {
    border-color: #ef5350;
}</style>

    
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
                      <form:form id="inputForm" role="form" action="${ctx}/DossierAdministratif/dossier/add"
                   method="post" class="form-horizontal" enctype="multipart/form-data">
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
								<input type="text" name="estimation_trav" id="estimation_trav"  class="form-control">
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
                       <form:form id="inputForm" role="form" action="${ctx}/Plan/plan/add"
                   method="post" class="form-horizontal" enctype="multipart/form-data">
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
								<input type="date" name="datePlan" class="form-control" id="DatePlan"> </div>
						</div>
						</div>
					<div class="text-xs-right">
							<button type="submit" class="btn btn-info btn-wizard">Enregister</button>
						</div>
				</section>
				</form:form>
				</div>
				  <div id="step-4" class="">
				<form:form id="inputForm" role="form" action="${ctx}/Planning/planning/add">
       			  <section class="content">
					      <div class="row">
					        <div class="col-12">
					          <div class="box bg-hexagons-dark">
					            <div class="box-body">
					              <!-- the events -->
								  <div class="col-12">
									  <div id="external-events" class="row">
										<div class="col">
											<div class="external-event bg-success" data-class="bg-success"><i class="fa fa-hand-o-right"></i>Lunch</div>
										</div>
										<div class="col">
											<div class="external-event bg-warning" data-class="bg-warning"><i class="fa fa-hand-o-right"></i>Go home</div>
										</div>
										<div class="col">
											<div class="external-event bg-info" data-class="bg-info"><i class="fa fa-hand-o-right"></i>Do homework</div>
										</div>
										<div class="col">
											<div class="external-event bg-primary" data-class="bg-primary"><i class="fa fa-hand-o-right"></i>Work on UI design</div>
										</div>
										<div class="col">
											<div class="external-event bg-danger" data-class="bg-danger"><i class="fa fa-hand-o-right"></i>Sleep tight</div>
										</div>
									  </div>
									  <div class="event-fc-bt row">
										<!-- checkbox -->
										<div class="col checkbox margin-top-20">
											<input id="drop-remove" type="checkbox">
											<label for="drop-remove">
												Remove after drop
											</label>
										</div>
										<div class="col-md-2">
											<a href="#" data-toggle="modal" data-target="#add-new-events" class="btn btn-lg btn-dark btn-block margin-top-10">
												<i class="ti-plus"></i> Add New Event
											</a>
										</div>
									  </div>			
								  </div>
					            </div>
					            <!-- /.box-body -->
					          </div>
					          <!-- /. box -->
					        </div>
					        <!-- /.col -->
					        <div class="col-12">
					          <div class="box">
					            <div class="box-body no-padding">
					              <!-- THE CALENDAR -->
					              <div id="calendar"></div>
					            </div>
					            <!-- /.box-body -->
					          </div>
					          <!-- /. box -->
					        </div>
					        <!-- /.col -->
      </div>
      <!-- BEGIN MODAL -->
		<div class="modal none-border" id="my-event">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						<h4 class="modal-title"><strong>Add Event</strong></h4>
					</div>
					<div class="modal-body"></div>
					<div class="modal-footer">
						<button type="button" class="btn btn-white waves-effect" data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-success save-event waves-effect waves-light">Create event</button>
						<button type="button" class="btn btn-danger delete-event waves-effect waves-light" data-dismiss="modal">Delete</button>
					</div>
				</div>
			</div>
		</div>
		<!-- Modal Add Category -->
		<div class="modal fade none-border" id="add-new-events">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						<h4 class="modal-title"><strong>Add</strong> a category</h4>
					</div>
					<div class="modal-body">
						<form role="form">
							<div class="row">
								<div class="col-md-6">
									<label class="control-label">Category Name</label>
									<input class="form-control form-white" placeholder="Enter name" type="text" name="category-name" />
								</div>
								<div class="col-md-6">
									<label class="control-label">Choose Category Color</label>
									<select class="form-control form-white" data-placeholder="Choose a color..." name="category-color">
										<option value="success">Success</option>
										<option value="danger">Danger</option>
										<option value="info">Info</option>
										<option value="primary">Primary</option>
										<option value="warning">Warning</option>
										<option value="inverse">Inverse</option>
									</select>
								</div>
							</div>
						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-danger waves-effect waves-light save-category" data-dismiss="modal">Save</button>
						<button type="button" class="btn btn-white waves-effect" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>
		<!-- END MODAL -->
      
      <!-- /.row -->
    </section>
       				
       				</div>
       				</form:form>
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
	
		<!-- (This is only for demo purposes) -->
	<script src="${ctx}/common/js/jquery-ui.min.js"></script>
	
	<!-- Crypto_Admin App -->
	<script src=${ctx}/common/js/template.js"></script>
	
	<!-- Crypto_Admin for demo purposes -->
	<script src="${ctx}/common/js/demo.js"></script>
   
   <!-- validate  -->
    <script src="${ctx}/common/scripts/jquery/dist/jquery.validate.min.js"></script>
	
    
    <script src="${ctx}/common/scripts/jquery/dist/jquery.smartWizard.js"></script>
    
    <!-- wizard  -->
    <script src="${ctx}/common/js/MySteps.js"></script>
    	<script type="text/javascript" src="${ctx}/common/css/plugins/moment/moment.js"></script>
	  	<script type="text/javascript" src="${ctx}/common/scripts/fullcalendar/dist/fullcalendar.min.js"></script>
	
	<script type="text/javascript" src="${ctx}/common/js/calendar.js"></script>
		
</body>
</html>