<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <%@ include file="/common/global.jsp" %>
    <title>Profile  ${login_user.username}</title>
    <%@ include file="/common/meta.jsp" %>
    <link type="text/css" rel="stylesheet" media="screen" href="${ctx }/common/css/bootstrap.css">
    
    <%@ include file="/common/include-base-style-man.jsp" %>
    <link rel="stylesheet" href="${ctx}/common/scripts/fullcalendar/dist/fullcalendar.min.css">
  <!-- <link rel="stylesheet" href="${ctx}/common/scripts/fullcalendar/dist/fullcalendar.print.min.css"> -->  
</head>

<body class="hold-transition skin-yellow sidebar-mini">
<%@ include file="/common/user-admin-nav-man.jsp" %>
 <%@ include file="/common/user-admin-nav-main-sidebar.jsp" %>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Planning des projets
      </h1>
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="breadcrumb-item active">Planning</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-12">
          <div class="box bg-hexagons-dark">
            <div class="box-header with-border">
              <h4 class="box-title">Draggable Events</h4>
            </div>
            <div class="box-body">
              <!-- the events -->
			  <div class="col-12">
				  <div id="external-events" class="row">
					<div class="col">
						<div class="external-event bg-success" data-class="bg-success"><i class="fa fa-hand-o-right"></i>Congé</div>
					</div>
					<div class="col">
						<div class="external-event bg-warning" data-class="bg-warning"><i class="fa fa-hand-o-right"></i>Journée férier</div>
					</div>
					<div class="col">
						<div class="external-event bg-info" data-class="bg-info"><i class="fa fa-hand-o-right"></i>Fin de projet</div>
					</div>
					<div class="col">
						<div class="external-event bg-primary" data-class="bg-primary"><i class="fa fa-hand-o-right"></i>réunion avec le client</div>
					</div>
					<div class="col">
						<div class="external-event bg-danger" data-class="bg-danger"><i class="fa fa-hand-o-right"></i>réunion des collaborateurs</div>
					</div>
				  </div>
				  <div class="event-fc-bt row">
					<!-- checkbox -->
					<div class="col checkbox margin-top-20">
						<input id="drop-remove" type="checkbox">
						<label for="drop-remove">
							supprimer apres le glissage
						</label>
					</div>
					<div class="col-md-2">
						<a href="#" data-toggle="modal" data-target="#add-new-events" class="btn btn-lg btn-dark btn-block margin-top-10">
							<i class="ti-plus"></i> Ajouter un event
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
						<h4 class="modal-title"><strong>Ajouter event</strong></h4>
					</div>
					<div class="modal-body"></div>
					<div class="modal-footer">
						<button type="button" class="btn btn-white waves-effect" data-dismiss="modal">Fermer</button>
						<button type="button" class="btn btn-success save-event waves-effect waves-light">Creation de l'évenement</button>
						<button type="button" class="btn btn-danger delete-event waves-effect waves-light" data-dismiss="modal">Supprimer</button>
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
						<h4 class="modal-title"><strong>Ajouter</strong>une categorie</h4>
					</div>
					<div class="modal-body">
						<form role="form">
							<div class="row">
								<div class="col-md-6">
									<label class="control-label">Nom Categorie</label>
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
						<button type="button" class="btn btn-danger waves-effect waves-light save-category" data-dismiss="modal">Enregister</button>
						<button type="button" class="btn btn-white waves-effect" data-dismiss="modal">Fermer</button>
					</div>
				</div>
			</div>
		</div>
		<!-- END MODAL -->
      
      <!-- /.row -->
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
	
	<!-- Slimscroll -->
	<script src="${ctx}/common/scripts/jquery-slimscroll/jquery.slimscroll.js"></script>
	
	<!-- FastClick -->
	<script src="${ctx}/common/scripts/fastclick/lib/fastclick.js"></script>
	
		<!-- App -->
	<script src="${ctx}/common/js/template.js"></script>
	
	<!-- demo purposes -->
	<script src="${ctx}/common/js/demo.js"></script>
	
	<script type="text/javascript" src="${ctx}/common/css/plugins/moment/moment.js"></script>
	  	<script type="text/javascript" src="${ctx}/common/scripts/fullcalendar/dist/fullcalendar.min.js"></script>
	
	<script type="text/javascript" src="${ctx}/common/js/calendar.js"></script>
	
	
</body>
</html>