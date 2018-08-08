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
        Project
      </h1>
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="breadcrumb-item"><a href="#">Tables</a></li>
        <li class="breadcrumb-item active">Project</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
	  <div class="callout bg-pale-info">
        <h4>Nots!</h4>
        <p>All the data is loaded from a seperate JS file</p>
      </div>
      <div class="row">
      
              <div class="col-md-12 col-lg-4">
          <div class="box box-default">
            <div class="box-header with-border">
              <h3 class="box-title">Tab with dropdown</h3>
              <h6 class="box-subtitle">Use default tab with class <code>nav-tabs & tabcontent-border</code></h6>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
            	<!-- Nav tabs -->
				<ul class="nav nav-tabs" id="myTab" role="tablist">
					<li class="nav-item"> <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home5" role="tab" aria-controls="home5" aria-expanded="true"><span class="hidden-sm-up"><i class="ion-home"></i></span> <span class="hidden-xs-down">Home</span></a> </li>
					<li class="nav-item"> <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile5" role="tab" aria-controls="profile"><span class="hidden-sm-up"><i class="ion-person"></i></span> <span class="hidden-xs-down">Profile</span></a></li>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
							<span class="hidden-sm-up"><i class="ion-email"></i></span> <span class="hidden-xs-down">Dropdown</span>
						</a>
						<div class="dropdown-menu"> <a class="dropdown-item" id="dropdown1-tab" href="#dropdown1" role="tab" data-toggle="tab" aria-controls="dropdown1">@fat</a> <a class="dropdown-item" id="dropdown2-tab" href="#dropdown2" role="tab" data-toggle="tab" aria-controls="dropdown2">@mdo</a> </div>
					</li>
				</ul>
				<!-- Tab panes -->
				<div class="tab-content tabcontent-border pad" id="myTabContent">
					<div role="tabpanel" class="tab-pane fade show active" id="home5" aria-labelledby="home-tab">
						<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. </p>
					</div>
					<div class="tab-pane fade" id="profile5" role="tabpanel" aria-labelledby="profile-tab">
						<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. </p>
					</div>
					<div class="tab-pane fade" id="dropdown1" role="tabpanel" aria-labelledby="dropdown1-tab">
						<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. </p>
					</div>
					<div class="tab-pane fade" id="dropdown2" role="tabpanel" aria-labelledby="dropdown2-tab">
						<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. </p>
					</div>
				</div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
        <div class="col-12">
         
          <div class="box">
            <div class="box-body">
            	<div class="table-responsive">
				  <table id="project-table" class="table table-bordered table-striped display nowrap margin-top-10">
					<thead>
						<tr>
							<th></th>
							<th>Projects</th>
							<th><i class="fa fa-fw fa-user text-muted hidden-md hidden-sm hidden-xs"></i> EST</th>
							<th>Contacts</th>
							<th>Status</th>
							<th><i class="fa fa-fw fa-calendar text-muted hidden-md hidden-sm hidden-xs"></i> Starts</th>
							<th><i class="fa fa-fw fa-calendar text-muted hidden-md hidden-sm hidden-xs"></i> Ends</th>
							<th>Tracker</th>
						</tr>
					</thead>
				  </table>
            	</div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->          
        </div>
        <!-- /.col -->
      </div>
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
	
    <script type="text/javascript" src="${ctx}/common/scripts/project-table.js"></script>
	
</body>
</html>