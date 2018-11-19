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
<section class="content">
     
      <div class="row">
        <!--/.col (left) -->
        <!-- right column -->
        <div class="col-xl-6 col-lg-12">
          <!-- Horizontal Form -->
          <div class="box">
            <div class="box-header with-border bg-dark">
              <h3 class="box-title">Enregistrement de client</h3>
               <div class="text-left" style=" float: right;">
       			   <a  href="${ctx}/Projects/add#step-1" class="btn btn-yellow btn-lg mx-auto">Affecter à un Projet</a>
      		  </div> 
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form:form role="form" action="${ctx}/client/reg"
               method="post" class="form-horizontal form-element" enctype="multipart/form-data">
              <div class="box-body">
                
                  <div class="form-group row">
                  <label for="username" class="col-sm-2 control-label">Username</label>

                  <div class="col-sm-10">
                    <input type="text" class="form-control" name="username" id="username" value="${client.username}" placeholder="">
                  </div>
                </div>
                   <div class="form-group row">
                  <label for="nom" class="col-sm-2 control-label">Nom</label>

                  <div class="col-sm-10">
                    <input type="text" class="form-control" name="nom" id="nom" value="${client.nom}" placeholder="">
                  </div>
                </div>
                   <div class="form-group row">
                  <label for="prenom" class="col-sm-2 control-label">Prénom</label>

                  <div class="col-sm-10">
                    <input type="text" class="form-control" name="prenom" id="prenom" value="${client.prenom}" placeholder="">
                  </div>
                </div>
                   <div class="form-group row">
                  <label for="tel" class="col-sm-2 control-label">Téléphone</label>

                  <div class="col-sm-10">
                    <input type="tel" class="form-control" name="tel" id="tel"  value="${client.tel}" placeholder="">
                  </div>
                </div>
                
                   <div class="form-group row">
                  <label for="fax" class="col-sm-2 control-label">Fax</label>

                  <div class="col-sm-10">
                    <input type="tel" class="form-control" name="fax" id="fax"  value="${client.fax}"  placeholder="">
                  </div>
                </div>
                   <div class="form-group row">
                  <label for="adresse" class="col-sm-2 control-label">Adresse</label>

                  <div class="col-sm-10">
                    <input type="text" class="form-control" name="adresse" id="adresse" value="${client.adresse}" placeholder="">
                  </div>
                </div>
             
                <div class="form-group row">
                  <label for="inputEmail3" class="col-sm-2 control-label">Email</label>

                  <div class="col-sm-10">
                    <input type="email" class="form-control" name="mail" id="inputEmail3" value="${client.mail}"   placeholder="">
                  </div>
                </div>
                <div class="form-group row">
                  <label for="inputPassword3" class="col-sm-2 control-label">Password</label>

                  <div class="col-sm-10">
                    <input type="password" class="form-control" name="password" minlength="6" id="inputPassword3" value="${client.password}" placeholder="">
                  </div>
                </div>
                 <div class="form-group row">
                  <label for="inputPassword4" class="col-sm-2 control-label">Confirm Password</label>

                  <div class="col-sm-10">
                    <input type="password" class="form-control" id="inputPassword4" placeholder="">
                  </div>
                </div>
                 <div class="form-group row">
               <label for="id_client">Liste Des projects</label>
								   <select class="form-control select2 w-p100"  name='project'>
											    <option value="" selected>Selectionner</option>
											    <c:forEach items="${page.result}" var="project">
											        <c:if test="${user != selected}">
											            <option value="${project.id}">${project.categorie}</option>
											        </c:if>
											    </c:forEach>
						</select>
                </div>
                 <div class="form-group row">
				                <label class="col-sm-2 control-label" for="logo">Logo de Client</label>
				                <div class="col-sm-10">
				                    <input type="file" id="logo" name="logo">
				                  <p class="help-block text-red">Logo ne doit pas dépassser 100MB</p>
				                </div>
				            </div>
              </div>
              <!-- /.box-body -->
              <div class="box-footer">
                <button type="submit" class="btn btn-default">Cancel</button>
                <button type="submit" class="btn btn-info pull-right">Submit</button>
              </div>
              <!-- /.box-footer -->
            </form:form>
          </div>
          <!-- /.box -->
        </div>
        <!--/.col (right) -->

	    
	      <!-- /.col -->
          <div class="col-xl-6 col-lg-12">

          

          <div class="box">
            <div class="box-header with-border">
              <h3 class="box-title">Liste des Admin</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
				<div class="table-responsive">
				  <table class="table table-hover">
					  <thead>
						<tr>
						  <th scope="col">#</th>
						  <th scope="col">Username</th>
						  <th scope="col">Password</th>
						  <th scope="col">Adresse mail</th>
						  <th scope="col">Action</th>
						</tr>
					  </thead>
					  <tbody>
					  <c:forEach items="${page2.result}" var="client">
					  <c:set var="task" value="${leave.task}" />
					  <c:set var="pi" value="${leave.processInstanace}" />
						<tr>
						<tr pid="${client.id}"> </tr>
						  <th scope="row">${client.id}</th>
						  <td>${client.username}</td>
						  <td>${client.password}</td>
						  <td>${client.mail}</td>
						  <td><a href="${ctx}/client/delete/${client.id}">Supprimer</a></td>
						</tr>
						</c:forEach>
					  </tbody>
					</table>
				</div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
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