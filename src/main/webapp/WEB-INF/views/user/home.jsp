<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <%@ include file="/common/global.jsp" %>
    <title>Home  ${login_user.username}</title>
    <%@ include file="/common/meta.jsp" %>
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
        Tableau de bord
        <small>Control panel</small>
      </h1>
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="#"><i class="fa fa-dashboard"></i> Accueil</a></li>
        <li class="breadcrumb-item active">Tableau de bord</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
	
<div class="row">
        <div class="col-12">
          <div class="box">
            <div class="box-header with-border">
              <h3 class="box-title">Contenu</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body no-padding">
				<div class="table-responsive">
				  <table class="table table-hover">
					<tbody><tr>
					  <th>Projet</th>
					  <th>certificat de propriété</th>
					  <th>Date de début</th>
					  <th>Description</th>
					  <th>Etat du projet</th>
					  <th>Intitule</th>
					  <th>Numéro titre financier </th>
					</tr>
					<c:forEach items="${page.result}" var="project">
					 <c:set var="task" value="${leave.task }"/>
            		<c:set var="pi" value="${leave.processInstance }"/>
					<tr>
					<tr pid="${project.id}"></tr>
					  <td><a href="">${project.categorie}</a></td>
					  <td>${project.certificat_propriete} </td>
					  <td><span class="text-muted"><i class="fa fa-clock-o"></i> ${project.date_debut}</span> </td>
					  <td>${project.description}</td>
					  <td><span class="label label-danger">${project.etat}</span></td>
					  <td>${project.intitule}</td>
					  <td>${project.num_title_foncier}</td>
					</tr>
					</c:forEach>
				  </tbody></table>
				</div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
      </div>

		<div class="col-lg-6 col-12">
		<div class="row">			
			 <div class="box">
				<div class="box-header with-border">
				  <h4 class="box-title">Statut de l'équipe</h4>
				</div>
				<!-- /.box-header -->
				<div class="box-body">
					  <div class="col-12">
					<table class="table table-lg table-separated">
					  <thead>
						<tr>
						  <th>Utilisateur</th>
						  <th>Tâches</th>
						  <th>Problémes</th>
						</tr>
					  </thead>
					  <tbody>
						<tr class="bg-secondary">
						  <th scope="row">Mounir Test</th>
						  <td><span class="label label-danger">En retard</span></td>
						  <td><span class="label label-success">Aujourd'hui</span></td>
						</tr>
			<!--			<tr class="bg-gray">
						  <th scope="row">2</th>
						  <td>.bg-gray</td>
						  <td>Column content</td>
						</tr>
						<tr class="bg-dark">
						  <th scope="row">3</th>
						  <td>.bg-dark</td>
						  <td>Column content</td>
						</tr>
						<tr class="bg-primary">
						  <th scope="row">4</th>
						  <td>.bg-primary</td>
						  <td>Column content</td>
						</tr>
						<tr class="bg-info">
						  <th scope="row">5</th>
						  <td>.bg-info</td>
						  <td>Column content</td>
						</tr> -->
						<tr class="bg-success">
						  <th scope="row">Kamal Test</th>
						  <td><span class="label label-success">Non-retard</span></td>
						  <td><span class="label label-success">Non-Probléme</span></td>
						</tr>
						<tr class="bg-warning">
						  <th scope="row">Mehdi Test</th>
						  <td><span class="label label-danger">En retard</span></td>
						  <td><span class="label label-success">Non-Probléme</span></td>
						</tr>
						<tr class="bg-danger">
						  <th scope="row">Zineb Test</th>
						  <td><span class="label label-danger">En retard</span></td>
						  <td><span class="label label-danger">6 Probléme</span></td>
						</tr>
					<!--<tr class="bg-pink">
						  <th scope="row">9</th>
						  <td>.bg-pink</td>
						  <td>Column content</td>
							</tr>
						<tr class="bg-purple">
						  <th scope="row">10</th>
						  <td>.bg-purple</td>
						  <td>Column content</td>
						</tr>
						<tr class="bg-brown">
						  <th scope="row">11</th>
						  <td>.bg-brown</td>
						  <td>Column content</td>
						</tr>
						<tr class="bg-cyan">
						  <th scope="row">12</th>
						  <td>.bg-cyan</td>
						  <td>Column content</td>
						</tr>
						<tr class="bg-yellow">
						  <th scope="row">13</th>
						  <td>.bg-yellow</td>
						  <td>Column content</td>
						</tr>  -->
					  </tbody>
					</table>
				  </div>

				</div>
				<!-- /.box-body -->
			  <!-- /.box -->       
			</div>
			</div>
			
		   <div class="col-lg-6 col-12">
			  <!-- Chart -->
			  <div class="box">
				<div class="box-header with-border">
				  <h4 class="box-title">Les objets de travail d'aujourd'hui</h4>
			
					<div class="box-body">
				<div class="table-responsive">
				  	<table class="table">
					  <tbody>
						<tr>
						  <th scope="row">Nom_tache</th>
						  <td>Tâche_valid</td>
						</tr>
					  </tbody>
					</table>
				</div>
            </div>
				</div>
			  </div>
			  <!-- /.box -->
		   </div>

			
		</div>	
		
		
	</section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  
  <footer class="main-footer">
    <div class="pull-right d-none d-sm-inline-block">

    </div>
	  &copy; 2018 <a href="#">O.Y.A Office of Young Architecture</a>. All Rights Reserved.
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Create the tabs -->
    <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
      <li class="nav-item"><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
      <li class="nav-item"><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-cog fa-spin"></i></a></li>
    </ul>
    <!-- Tab panes -->
    <div class="tab-content">
      <!-- Home tab content -->
      <div class="tab-pane" id="control-sidebar-home-tab">
        <h3 class="control-sidebar-heading">Recent Activity</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-birthday-cake bg-red"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Admin Birthday</h4>

                <p>Will be July 24th</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-user bg-yellow"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Jhone Updated His Profile</h4>

                <p>New Email : jhone_doe@demo.com</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-envelope-o bg-light-blue"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Disha Joined Mailing List</h4>

                <p>disha@demo.com</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-file-code-o bg-green"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Code Change</h4>

                <p>Execution time 15 Days</p>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

        <h3 class="control-sidebar-heading">Tasks Progress</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Web Design
                <span class="label label-danger pull-right">40%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-danger" style="width: 40%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Update Data
                <span class="label label-success pull-right">75%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-success" style="width: 75%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Order Process
                <span class="label label-warning pull-right">89%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-warning" style="width: 89%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Development 
                <span class="label label-primary pull-right">72%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-primary" style="width: 72%"></div>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

      </div>
      <!-- /.tab-pane -->
      <!-- Stats tab content -->
      <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
      <!-- /.tab-pane -->
      <!-- Settings tab content -->
      <div class="tab-pane" id="control-sidebar-settings-tab">
        <form method="post">
          <h3 class="control-sidebar-heading">General Settings</h3>

          <div class="form-group">
            <input type="checkbox" id="report_panel" class="chk-col-grey" >
			<label for="report_panel" class="control-sidebar-subheading ">Report panel usage</label>

            <p>
              general settings information
            </p>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <input type="checkbox" id="allow_mail" class="chk-col-grey" >
			<label for="allow_mail" class="control-sidebar-subheading ">Mail redirect</label>

            <p>
              Other sets of options are available
            </p>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <input type="checkbox" id="expose_author" class="chk-col-grey" >
			<label for="expose_author" class="control-sidebar-subheading ">Expose author name</label>

            <p>
              Allow the user to show his name in blog posts
            </p>
          </div>
          <!-- /.form-group -->

          <h3 class="control-sidebar-heading">Chat Settings</h3>

          <div class="form-group">
            <input type="checkbox" id="show_me_online" class="chk-col-grey" >
			<label for="show_me_online" class="control-sidebar-subheading ">Show me as online</label>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <input type="checkbox" id="off_notifications" class="chk-col-grey" >
			<label for="off_notifications" class="control-sidebar-subheading ">Turn off notifications</label>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">              
              <a href="javascript:void(0)" class="text-red margin-r-5"><i class="fa fa-trash-o"></i></a>
              Delete chat history
            </label>
          </div>
          <!-- /.form-group -->
        </form>
      </div>
      <!-- /.tab-pane -->
    </div>
  </aside>
  <!-- /.control-sidebar -->
  
  <!-- Add the sidebar's background. This div must be placed immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
  
</div>
<!-- ./wrapper -->
  	
	    <%@ include file="/common/include-base-js-man.jsp" %>
	

</body>
</html>