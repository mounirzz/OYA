<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <%@ include file="/common/global.jsp" %>
    <title>Profile  ${login_user.username}</title>
    <%@ include file="/common/meta.jsp" %>
    <link type="text/css" rel="stylesheet" media="screen" href="${ctx }/common/css/bootstrap.css">
    
    <%@ include file="/common/include-base-style-man.jsp" %>
</head>

<body class="hold-transition skin-yellow sidebar-mini">
<%@ include file="/common/user-admin-nav-man.jsp" %>
 <%@ include file="/common/user-admin-nav-main-sidebar.jsp" %>
 <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Ajouter Votre Project
      </h1>
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="#"><i class="fa fa-dashboard"></i> Accueil</a></li>
        <li class="breadcrumb-item"><a href="#">Projects</a></li>
        <li class="breadcrumb-item active">Ajouter</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
     
     <!-- Basic Forms -->
      <div class="box">
        <div class="box-header with-border">
          <h3 class="box-title"></h3>
          <h6 class="box-subtitle">Formulaire de Enregistrement d'un project <a href="http://reactiveraven.github.io/jqBootstrapValidation/">official website </a></h6>

          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
            <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-remove"></i></button>
          </div>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
          <div class="row">
            <div class="col">
            <form:form role="form" action="${ctx}/Projects/add" method="post">
					<div class="form-group">
						<h5>Categorie du Projet <span class="text-danger">*</span></h5>
						<div class="controls">
							<input type="text" name="categorie" class="form-control" required data-validation-required-message="This field is required"> </div>
						<div class="form-control-feedback"><small>Add <code>required</code> attribute to field for required validation.</small></div>
					</div>
					<div class="form-group">
						<h5>Certificat Propriete<span class="text-danger">*</span></h5>
						<div class="controls">
							<input type="text" name="certificat_propriete" class="form-control" required data-validation-required-message="This field is required"> </div>
					</div>
					<div class="form-group">
						<h5>Description<span class="text-danger">*</span></h5>
						<div class="controls">
							<input type="description" name="description" class="form-control" required data-validation-required-message="This field is required"> </div>
					</div>
							<div class="form-group">
						<h5>Date de début <span class="text-danger">*</span></h5>
						<div class="controls">
							<input type="date" name="date_debut" class="form-control" required data-validation-required-message="This field is required"> </div>
						<div class="form-control-feedback"><small>Add <code>required</code> attribute to field for required validation.</small></div>
							
					</div>
						<div class="form-group">
						<h5>Date de realisation<span class="text-danger">*</span></h5>
						<div class="controls">
							<input type="date" name="date_realisation" class="form-control" required data-validation-required-message="This field is required"> </div>
						<div class="form-control-feedback"><small>Add <code>required</code> attribute to field for required validation.</small></div>
							
					</div>
					<div class="form-group">
						<h5>Etat du projet<span class="text-danger">*</span></h5>
						<div class="controls">
							<input type="text" name="etat" class="form-control" required data-validation-required-message="This field is required"> </div>
						<div class="form-control-feedback"><small>Add <code>required</code> attribute to field for required validation.</small></div>
					</div>
						<div class="form-group">
						<h5>Inititude <span class="text-danger">*</span></h5>
						<div class="controls">
							<input type="text" name="intitule" class="form-control" required data-validation-required-message="This field is required"> </div>
						<div class="form-control-feedback"><small>Add <code>required</code> attribute to field for required validation.</small></div>
					</div>
						<div class="form-group">
						<h5>Numéro Titre Financier <span class="text-danger">*</span></h5>
						<div class="controls">
							<input type="text" name="num_title_foncier" class="form-control" required data-validation-required-message="This field is required"> </div>
						<div class="form-control-feedback"><small>Add <code>required</code> attribute to field for required validation.</small></div>
					</div>
					
				<!-- <div class="form-group">
						<h5><span class="text-danger">*</span></h5>
						<div class="controls">
							<input type="file" name="" class="form-control" required> </div>
					</div> -->	
	
					<div class="text-xs-right">
						<button type="submit" class="btn btn-info">Enregister</button>
					</div>
				</form:form>
            	
            </div>
            <!-- /.col -->
          </div>
          <!-- /.row -->
        </div>
        <!-- /.box-body -->
      </div>
      <!-- /.box -->
      
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  
<script type="text/javascript" src="${ctx}/common/scripts/jquery/dist/jquery.min.js"></script>
	
	<!-- popper -->
	<script type="text/javascript" src="${ctx}/common/scripts/popper/dist/popper.min.js"></script>

  <script type="text/javascript" src="${ctx }/common/scripts/bootstrap.min.js"></script>

		<!-- (This is only for demo purposes) -->
	<script src="${ctx}/common/js/jquery-ui.min.js"></script>
	<!-- Data Tables  -->
	<script src="${ctx}/common/scripts/datatables.net/js/jquery.dataTables.min.js"></script>
	
	<!-- Slimscroll -->
	<script src="${ctx}/common/scripts/jquery-slimscroll/jquery.slimscroll.js"></script>
	
	<!-- FastClick -->
	<script src="${ctx}/common/scripts/fastclick/lib/fastclick.js"></script>
	
		<!-- App -->
	<script src="${ctx}/common/js/template.js"></script>
	
	<!-- demo purposes -->
	<script src="${ctx}/common/js/demo.js"></script>
	
    <script type="text/javascript" src="${ctx}/common/js/Validation.js"></script>
	
</body>
</html>