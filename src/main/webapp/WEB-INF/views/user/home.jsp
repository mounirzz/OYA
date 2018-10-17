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



  <div class="content-wrapper" style="min-height: 1923.5px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Tickets
      </h1>
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="breadcrumb-item"><a href="#">Examples</a></li>
        <li class="breadcrumb-item active">Tickets</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        
        <div class="row">
            <!-- Column -->
            <div class="col-md-6 col-lg-3 col-xlg-3">
                <div class="box box-inverse box-info pull-up bg-hexagons-dark">
                    <div class="box-body text-center">
                        <div class="flexbox align-content-end"> 
                            <h2 class="text-white mb-10">Total Project</h2>                     
                            <h1 class="font-light text-white">164</h1>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Column -->
            <div class="col-md-6 col-lg-3 col-xlg-3">
                <div class="box box-success box-inverse pull-up bg-hexagons-dark">
                    <div class="box-body text-center">
                        <div class="flexbox align-content-end">
                            <h2 class="text-white mb-10">Projets réaliser</h2>
                            <h1 class="font-light text-white">244</h1>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Column -->
            <div class="col-md-6 col-lg-3 col-xlg-3">
                <div class="box box-inverse box-danger pull-up bg-hexagons-dark">
                    <div class="box-body text-center">
                        <div class="flexbox align-content-end">
                            <h2 class="text-white mb-10">Projets En cours</h2>
                            <h1 class="font-light text-white">10</h1>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Column -->
            <div class="col-md-6 col-lg-3 col-xlg-3">
                <div class="box box-inverse box-dark pull-up bg-hexagons-white">
                    <div class="box-body text-center">
                        <div class="flexbox align-content-end">
                            <h2 class="text-white mb-10">Clients</h2>
                            <h1 class="font-light text-white">90</h1>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Column -->
        </div>
      <div class="row">
        <div class="col-12">
            <div class="box">
                <div class="box-body">
                    <div class="table-responsive">
                        <div id="tickets_wrapper" class="dataTables_wrapper no-footer"><table id="tickets" class="table mt-0 table-hover no-wrap dataTable no-footer" data-page-size="10" role="grid" aria-describedby="tickets_info">
                            <thead>
                                <tr class="bg-light" role="row"><th class="sorting" tabindex="0" aria-controls="tickets" rowspan="1" colspan="1" aria-label="ID #: activate to sort column ascending">ID #</th><th class="sorting" tabindex="0" aria-controls="tickets" rowspan="1" colspan="1" aria-label="Opened By: activate to sort column ascending">Par Clients</th><th class="sorting" tabindex="0" aria-controls="tickets" rowspan="1" colspan="1" aria-label="Cust. Email: activate to sort column ascending">Clients Email</th><th class="sorting" tabindex="0" aria-controls="tickets" rowspan="1" colspan="1" aria-label="Sbuject: activate to sort column ascending">Nom Projects</th><th class="sorting" tabindex="0" aria-controls="tickets" rowspan="1" colspan="1" aria-label="Status: activate to sort column ascending">Etats du projets</th><th class="sorting_desc" tabindex="0" aria-controls="tickets" rowspan="1" colspan="1" aria-label="Assign to: activate to sort column ascending" aria-sort="descending">Intitule</th><th class="sorting" tabindex="0" aria-controls="tickets" rowspan="1" colspan="1" aria-label="Date: activate to sort column ascending">Date de début</th><th class="sorting" tabindex="0" aria-controls="tickets" rowspan="1" colspan="1" aria-label="Action: activate to sort column ascending">Action</th></tr>
                            </thead>
                            <tbody>
                                
                                 <c:forEach items="${page.result}" var="project">
                                  <c:set var="task" value="${leave.task }"/>
                                  <c:set var="pi" value="${leave.processInstance }"/>
                                <tr role="row" class="odd">
                                     <tr pid="${project.id}"></tr>
                                    <td class="">${project.id}</td>
                                    <td>
                                        <a href="javascript:void(0)"><img src="../../../images/avatar/3.jpg" alt="user" class="avatar avatar-sm mr-5"> William</a>
                                    </td>
                                    <td>William@gmail.com</td>
                                    <td>${project.categorie}</td>
                                    <td><span class="label label-success">${project.etat}</span> </td>
                                    <td class="sorting_1">${project.intitule}</td>
                                    <td>${project.date_debut}</td>
                                    <td class="">
                                        <button type="button" class="btn btn-sm btn-danger-outline" data-toggle="tooltip" data-original-title="Delete"><i class="ti-trash" aria-hidden="true"></i></button>
                                    </td>
                                </tr>
                                </c:forEach> 
                                </tbody>
                        </table><div class="dataTables_info" id="tickets_info" role="status" aria-live="polite">Showing 1 to 10 of 20 entries</div><div class="dataTables_paginate paging_simple_numbers" id="tickets_paginate"><a class="paginate_button previous disabled" aria-controls="tickets" data-dt-idx="0" tabindex="0" id="tickets_previous">Previous</a><span><a class="paginate_button current" aria-controls="tickets" data-dt-idx="1" tabindex="0">1</a><a class="paginate_button " aria-controls="tickets" data-dt-idx="2" tabindex="0">2</a></span><a class="paginate_button next" aria-controls="tickets" data-dt-idx="3" tabindex="0" id="tickets_next">Next</a></div></div>
                    </div>
                </div>
            </div>
        </div>
        </div>
      <!-- /.row -->

    </section>
    <!-- /.content -->
  </div>
  
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
	
<script type="text/javascript" src="${ctx}/common/js/data-table.js"></script>
</body>
</html>