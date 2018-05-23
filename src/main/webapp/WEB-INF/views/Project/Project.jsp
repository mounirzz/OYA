<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="content-wrapper" style="min-height: 1923.5px;">
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
        <div class="col-12">
         
          <div class="box">
            <div class="box-body">
            	<div class="table-responsive">
				  <div id="project-table_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer"><div class="row"><div class="col-sm-6"><div class="dataTables_length" id="project-table_length"><label>Show <select name="project-table_length" aria-controls="project-table" class="form-control input-sm"><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> entries</label></div></div><div class="col-sm-6"><div id="project-table_filter" class="dataTables_filter"><label>Search:<input type="search" class="form-control input-sm" placeholder="" aria-controls="project-table"></label></div></div></div><div class="row"><div class="col-sm-12"><table id="project-table" class="table table-bordered table-striped display nowrap margin-top-10 dataTable no-footer" role="grid" aria-describedby="project-table_info" style="width: 1596px;">
					<thead>
						<tr role="row"><th class="details-control sorting_disabled" rowspan="1" colspan="1" aria-label="" style="width: 15px;"></th><th class="sorting_asc" tabindex="0" aria-controls="project-table" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Projects: activate to sort column descending" style="width: 440px;">Projects</th><th class="sorting" tabindex="0" aria-controls="project-table" rowspan="1" colspan="1" aria-label=" EST: activate to sort column ascending" style="width: 113px;"><i class="fa fa-fw fa-user text-muted hidden-md hidden-sm hidden-xs"></i> EST</th><th class="sorting" tabindex="0" aria-controls="project-table" rowspan="1" colspan="1" aria-label="Contacts: activate to sort column ascending" style="width: 158px;">Contacts</th><th class="sorting" tabindex="0" aria-controls="project-table" rowspan="1" colspan="1" aria-label="Status: activate to sort column ascending" style="width: 114px;">Status</th><th class="sorting" tabindex="0" aria-controls="project-table" rowspan="1" colspan="1" aria-label=" Starts: activate to sort column ascending" style="width: 141px;"><i class="fa fa-fw fa-calendar text-muted hidden-md hidden-sm hidden-xs"></i> Starts</th><th class="sorting" tabindex="0" aria-controls="project-table" rowspan="1" colspan="1" aria-label=" Ends: activate to sort column ascending" style="width: 135px;"><i class="fa fa-fw fa-calendar text-muted hidden-md hidden-sm hidden-xs"></i> Ends</th><th class="sorting" tabindex="0" aria-controls="project-table" rowspan="1" colspan="1" aria-label="Tracker: activate to sort column ascending" style="width: 128px;">Tracker</th></tr>
					</thead>
				  <tbody><tr role="row" class="odd"><td class=" details-control"></td><td class="sorting_1">AngularJS UI design and development<br>
				  <small class="text-muted"><i>Budget: 5,000<i></i></i></small>
				  </td>
				  <td>
				  <div class="progress progress-sm">
				  <div class="progress-bar progress-bar-info progress-bar-striped" role="progressbar" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100" style="width: 15%"></div>
				  </div>
				  </td>
				  <td><div class="project-members"><a href="javascript:void(0)"></a><a href="javascript:void(0)">
				  <img src="../../../images/avatar/1.jpg" class="away"></a>
				  <a href="javascript:void(0)"><img src="../../../images/avatar/5.jpg" class="away"></a> </div>
				   </td>
				   <td>
				   <span class="badge badge-success">Active</span></td><td>01-9-2017</td>
				   <td><strong>08-01-2018</strong></td><td><button type="button" class="btn btn-sm btn-toggle btn-primary active" data-toggle="button" aria-pressed="true"><span class="handle"></span></button></td></tr><tr role="row" class="even"><td class=" details-control"></td><td class="sorting_1">Brick factory<br><small class="text-muted"><i>Budget: 1,000<i></i></i></small></td><td><div class="progress progress-sm"><div class="progress-bar progress-bar-info progress-bar-striped" role="progressbar" aria-valuenow="775" aria-valuemin="0" aria-valuemax="100" style="width: 75%"></div></div></td><td><div class="project-members"><a href="javascript:void(0)"><img src="../../../images/avatar/7.jpg" class="online"></a> <a href="javascript:void(0)"><img src="../../../images/avatar/3.jpg" class="busy"></a><a href="javascript:void(0)"><img src="../../../images/avatar/2.jpg" class="away"></a> </div> </td><td><span class="badge badge-success">Active</span></td><td>01-25-2017</td><td><strong>03-03-2018</strong></td><td><button type="button" class="btn btn-sm btn-toggle btn-primary" data-toggle="button" aria-pressed="true"><span class="handle"></span></button></td></tr><tr role="row" class="odd"><td class=" details-control"></td><td class="sorting_1">Car Industry Studies<br><small class="text-muted"><i>Budget: 1,000<i></i></i></small></td><td><div class="progress progress-sm"><div class="progress-bar progress-bar-primary progress-bar-striped" role="progressbar" aria-valuenow="55" aria-valuemin="0" aria-valuemax="100" style="width: 55%"></div></div></td><td><div class="project-members"><a href="javascript:void(0)"><img src="../../../images/avatar/1.jpg" class="online" alt="user"></a><a href="javascript:void(0)"><img src="../../../images/avatar/2.jpg" class="online"></a> <a href="javascript:void(0)"><img src="../../../images/avatar/3.jpg" class="busy"></a><a href="javascript:void(0)"><img src="../../../images/avatar/4.jpg" class="away"></a> </div> </td><td><span class="badge badge-success">Active</span></td><td>01-8-2017</td><td><strong>03-03-2018</strong></td><td><button type="button" class="btn btn-sm btn-toggle btn-primary active" data-toggle="button" aria-pressed="true"><span class="handle"></span></button></td></tr><tr role="row" class="even bg-pale-warning"><td class=" details-control"></td><td class="sorting_1">Create filters and directives<br><small class="text-muted"><i>Budget: 15,000<i></i></i></small></td><td><div class="progress progress-sm"><div class="progress-bar progress-bar-warning progress-bar-striped" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%"></div></div></td><td><div class="project-members"><a href="javascript:void(0)"><img src="../../../images/avatar/3.jpg" class="online" alt="user"></a><a href="javascript:void(0)"><img src="../../../images/avatar/2.jpg" class="online"></a> <a href="javascript:void(0)"><img src="../../../images/avatar/1.jpg" class="busy"></a><a href="javascript:void(0)"><img src="../../../images/avatar/7.jpg" class="away"></a> </div> </td><td><span class="badge badge-success">Active</span></td><td>01-6-2017</td><td><strong>11-09-2018</strong></td><td><button type="button" class="btn btn-sm btn-toggle btn-primary" data-toggle="button" aria-pressed="true"><span class="handle"></span></button></td></tr><tr role="row" class="odd"><td class=" details-control"></td><td class="sorting_1">IT Room Renovation<br><small class="text-muted"><i>Budget: 25,000<i></i></i></small></td><td><div class="progress progress-sm"><div class="progress-bar progress-bar-success progress-bar-striped" role="progressbar" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100" style="width: 30%"></div></div></td><td><div class="project-members"><a href="javascript:void(0)"><img src="../../../images/avatar/2.jpg" class="online"></a> <a href="javascript:void(0)"><img src="../../../images/avatar/4.jpg" class="busy"></a><a href="javascript:void(0)"><img src="../../../images/avatar/3.jpg" class="away"></a> </div> </td><td><span class="badge badge-success">Active</span></td><td>01-17-2017</td><td><strong>02-30-2018</strong></td><td><button type="button" class="btn btn-sm btn-toggle btn-primary" data-toggle="button" aria-pressed="true"><span class="handle"></span></button></td></tr><tr role="row" class="even"><td class=" details-control"></td><td class="sorting_1"><strong>Phase 1</strong>: Modual implimentations<br><small class="text-muted"><i>Budget: 7,000<i></i></i></small></td><td><div class="progress progress-sm"><div class="progress-bar progress-bar-primary progress-bar-striped" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%"></div></div></td><td><div class="project-members"><a href="javascript:void(0)"><img src="../../../images/avatar/4.jpg" class="online" alt="user"></a></div> </td><td><span class="badge badge-default">Inactive</span></td><td>01-4-2017</td><td><strong>09-11-2019</strong></td><td><button type="button" class="btn btn-sm btn-toggle btn-primary" data-toggle="button" aria-pressed="true"><span class="handle"></span></button></td></tr><tr role="row" class="odd bg-pale-warning"><td class=" details-control"></td><td class="sorting_1"><strong>Phase 2</strong>: Beta testing<br><small class="text-muted"><i>No budget was locked in<i></i></i></small></td><td><div class="progress progress-sm"><div class="progress-bar progress-bar-success progress-bar-striped" role="progressbar" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100" style="width: 15%"></div></div></td><td><div class="project-members"><a href="javascript:void(0)"><img src="../../../images/avatar/2.jpg" class="offline"></a> </div> </td><td><span class="badge badge-success">Active</span></td><td>01-11-2017</td><td><strong>07-11-2018</strong></td><td><button type="button" class="btn btn-sm btn-toggle btn-primary" data-toggle="button" aria-pressed="true"><span class="handle"></span></button></td></tr><tr role="row" class="even"><td class=" details-control"></td><td class="sorting_1"><strong>Phase 3</strong>: Deploy to management<br><small class="text-muted"><i>No budget was locked in<i></i></i></small></td><td><div class="progress progress-sm"><div class="progress-bar progress-bar-warning progress-bar-striped" role="progressbar" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100" style="width: 10%"></div></div></td><td><div class="project-members"><a href="javascript:void(0)"><img src="../../../images/avatar/1.jpg" class="offline"></a> <a href="javascript:void(0)"><img src="../../../images/avatar/2.jpg" class="busy"></a><a href="javascript:void(0)"><img src="../../../images/avatar/3.jpg" class="away"></a><a href="javascript:void(0)"><img src="../../../images/avatar/4.jpg" class="online" alt="user"></a><a href="javascript:void(0)"><img src="../../../images/avatar/5.jpg" class="online" alt="user"></a> </div> </td><td><span class="badge badge-success">Active</span></td><td>01-19-2017</td><td>08-30-2018</td><td><button type="button" class="btn btn-sm btn-toggle btn-primary" data-toggle="button" aria-pressed="true"><span class="handle"></span></button></td></tr><tr role="row" class="odd"><td class=" details-control"></td><td class="sorting_1">Preliminary studies of client intel<br><small class="text-muted"><i>Budget: 3,500<i></i></i></small></td><td><div class="progress progress-sm"><div class="progress-bar progress-bar-danger progress-bar-striped" role="progressbar" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100" style="width: 10%"></div></div></td><td><div class="project-members"><a href="javascript:void(0)"><img src="../../../images/avatar/6.jpg" class="online"></a> <a href="javascript:void(0)"><img src="../../../images/avatar/3.jpg" class="busy"></a></div> </td><td><span class="badge badge-success">Active</span></td><td>01-13-2017</td><td><strong>06-20-2018</strong></td><td><button type="button" class="btn btn-sm btn-toggle btn-primary" data-toggle="button" aria-pressed="true"><span class="handle"></span></button></td></tr><tr role="row" class="even"><td class=" details-control"></td><td class="sorting_1">Prepare property management contracts<br><small class="text-muted"><i>No budget was locked in<i></i></i></small></td><td><div class="progress progress-sm"><div class="progress-bar progress-bar-primary progress-bar-striped" role="progressbar" aria-valuenow="55" aria-valuemin="0" aria-valuemax="100" style="width: 55%"></div></div></td><td><div class="project-members"><a href="javascript:void(0)"><img src="../../../images/avatar/8.jpg" class="online"></a></div> </td><td><span class="badge badge-success">Active</span></td><td>01-20-2017</td><td><strong>02-30-2018</strong></td><td><button type="button" class="btn btn-sm btn-toggle btn-primary" data-toggle="button" aria-pressed="true"><span class="handle"></span></button></td></tr></tbody></table></div></div><div class="row"><div class="col-sm-5"><div class="dataTables_info" id="project-table_info" role="status" aria-live="polite">Showing 1 to 10 of 15 entries</div></div><div class="col-sm-7"><div class="dataTables_paginate paging_simple_numbers" id="project-table_paginate"><ul class="pagination"><li class="paginate_button previous disabled" id="project-table_previous"><a href="#" aria-controls="project-table" data-dt-idx="0" tabindex="0">Previous</a></li><li class="paginate_button active"><a href="#" aria-controls="project-table" data-dt-idx="1" tabindex="0">1</a></li><li class="paginate_button "><a href="#" aria-controls="project-table" data-dt-idx="2" tabindex="0">2</a></li><li class="paginate_button next" id="project-table_next"><a href="#" aria-controls="project-table" data-dt-idx="3" tabindex="0">Next</a></li></ul></div></div></div></div>
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
	
    <script type="text/javascript" src="${ctx}/common/scripts/project-table.js"></script>
	
</body>
</html>