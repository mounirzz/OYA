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
			<div class="col-md-6 col-lg-4">
            <div class="box">
              <div class="box-header with-border">
                <h5 class="box-title">Statut de la Tâche </h5>
				<div class="box-tools pull-right">
					<ul class="card-controls">
					  <li class="dropdown">
						<a data-toggle="dropdown" href="#"><i class="ion-android-more-vertical"></i></a>
					  </li>
					  <li><a href="" class="link card-btn-reload" data-toggle="tooltip" title="" data-original-title="Refresh"><i class="fa fa-circle-thin"></i></a></li>
					</ul>
				</div>
              </div>

              <div class="box-body">
              <p>Gardez une trace des tâches dans votre projet.</p>
                <div class="text-center py-20">                  
				  <div class="donut" data-peity="{ &quot;fill&quot;: [&quot;#00c292&quot;, &quot;#03a9f3&quot;, &quot;#fbae1c&quot;], &quot;radius&quot;: 78, &quot;innerRadius&quot;: 58  }" style="display: none;">20,18,32</div><svg class="peity" height="156" width="156"><path d="M 78 0 A 78 78 0 0 1 154.04437715018224 95.35663284859253 L 134.54581890654578 90.90621416946624 A 58 58 0 0 0 78 20" fill="#926dde"></path><path d="M 154.04437715018224 95.35663284859253 A 78 78 0 0 1 57.24912604579938 153.18910313427656 L 62.56986295713287 133.9098459203595 A 58 58 0 0 0 134.54581890654578 90.90621416946624" fill="#926dde"></path><path d="M 57.24912604579938 153.18910313427656 A 78 78 0 0 1 77.99999999999999 0 L 77.99999999999999 20 A 58 58 0 0 0 62.56986295713287 133.9098459203595" fill="#926dde"></path></svg>
                </div>
               <ul class="flexbox flex-justified text-center mt-30">
                  <li class="br-1">
                    <div class="font-size-20 text-purple">1</div>
                    <small>Ouvrir</small>
                  </li>

                  <li class="br-1">
                    <div class="font-size-20 text-pink">0</div>
                    <small>Fermé</small>
                  </li>

                  <li>
                    <div class="font-size-20 text-cyan">1</div>
                    <small>Total</small>
                  </li>
                </ul>
                
                
              </div>
            </div>
                      <div class="box box-danger box-inverse">
            <div class="box-header">
              <h3 class="box-title">événements à venir</h3>
            </div>
            <div class="box-body">
              Pour la Semaine en cours seulement
            </div>
            <!-- /.box-body -->
            <!-- Loading (remove the following to stop the loading)-->
            <div class="overlay">
              <i class="fa fa-refresh fa-spin"></i>
            </div>
            <!-- end loading -->
          </div>
          <!-- /.box -->
          </div>
          <div class="col-md-6 col-lg-4">
            <div class="box">
              <div class="box-header with-border">
                <h5 class="box-title red">Articles du travail en retard </h5>
				<div class="box-tools pull-right">
					<ul class="card-controls">
					  <li class="dropdown">
						<a data-toggle="dropdown" href="#"><i class="ion-android-more-vertical"></i></a>
					  </li>
					  <li><a href="" class="link card-btn-reload" data-toggle="tooltip" title="" data-original-title="Refresh"><i class="fa fa-circle-thin"></i></a></li>
					</ul>
				</div>
              </div>

              <div class="box-body">
              <p></p>
                <div class="text-center py-20">                  
				  <div class="donut" data-peity="{ &quot;fill&quot;: [&quot;#00c292&quot;, &quot;#03a9f3&quot;, &quot;#fbae1c&quot;], &quot;radius&quot;: 78, &quot;innerRadius&quot;: 58  }" style="display: none;">20,18,32</div><svg class="peity" height="156" width="156"><path d="M 78 0 A 78 78 0 0 1 154.04437715018224 95.35663284859253 L 134.54581890654578 90.90621416946624 A 58 58 0 0 0 78 20" fill="#00c292"></path><path d="M 154.04437715018224 95.35663284859253 A 78 78 0 0 1 57.24912604579938 153.18910313427656 L 62.56986295713287 133.9098459203595 A 58 58 0 0 0 134.54581890654578 90.90621416946624" fill="#00c292"></path><path d="M 57.24912604579938 153.18910313427656 A 78 78 0 0 1 77.99999999999999 0 L 77.99999999999999 20 A 58 58 0 0 0 62.56986295713287 133.9098459203595" fill="#00c292"></path></svg>
                </div>
				<ul class="list-inline">
					<p>Bon travail! Aucun (s) article (s) de travail en retard pour le moment.
					</p>
				</ul>
<!-- 
               <ul class="list-inline">
                  <li class="flexbox mb-5">
                    <div>
                      <span class="badge badge-dot badge-lg mr-1" style="background-color: #fbae1c"></span>
                      <span>Ouvrir</span>
                    </div>
                    <div>1</div>
                  </li>

                  <li class="flexbox mb-5">
                    <div>
                      <span class="badge badge-dot badge-lg mr-1" style="background-color: #03a9f3"></span>
                      <span>Fermé</span>
                    </div>
                    <div>0</div>
                  </li>

                  <li class="flexbox">
                    <div>
                      <span class="badge badge-dot badge-lg mr-1" style="background-color: #00c292"></span>
                      <span>Total</span>
                    </div>
                    <div>1</div>
                  </li>
                </ul> --> 
              </div>
            </div>
             <div class="box">
              <div class="box-header with-border">
                <h5 class="box-title">Statut d'étape</h5>
				<div class="box-tools pull-right">
					<ul class="card-controls">
					  <li class="dropdown">
						<a data-toggle="dropdown" href="#"><i class="ion-android-more-vertical"></i></a>
					  </li>
					  <li><a href="" class="link card-btn-reload" data-toggle="tooltip" title="" data-original-title="Refresh"><i class="fa fa-circle-thin"></i></a></li>
					</ul>
				</div>
              </div>

              <div class="box-body">
                <div class="text-center py-20">
					<div class="donut" data-peity="{ &quot;fill&quot;: [&quot;#57c7d4&quot;, &quot;#f96197&quot;, &quot;#926dde&quot;], &quot;radius&quot;: 80, &quot;innerRadius&quot;: 60  }" style="display: none;">9,6,5</div><svg class="peity" height="160" width="160">
					<path d="M 80 0 A 80 80 0 0 1 104.7213595499958 156.0845213036123 L 98.54101966249685 137.06339097770922 A 60 60 0 0 0 80 20" fill="#faa64b"></path>
					<path d="M 104.7213595499958 156.0845213036123 A 80 80 0 0 1 0 80.00000000000001 L 20 80.00000000000001 A 60 60 0 0 0 98.54101966249685 137.06339097770922" fill="#faa64b"></path><path d="M 0 80.00000000000001 A 80 80 0 0 1 79.99999999999999 0 L 79.99999999999999 20 A 60 60 0 0 0 20 80.00000000000001" fill="#faa64b"></path></svg>
                </div>

                <ul class="flexbox flex-justified text-center mt-30">
                  <li class="br-1">
                    <div class="font-size-20 text-warning">1</div>
                    <small>Ouvrir</small>
                  </li>

                  <li class="br-1">
                    <div class="font-size-20 text-pink">0</div>
                    <small>Fermé</small>
                  </li>

                  <li>
                    <div class="font-size-20 text-cyan">1</div>
                    <small>Total</small>
                  </li>
                </ul>
              </div>
            </div>
          </div>
          
  <div class="col-lg-4 col-md-6">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Statut Probléme</h3>
               <p class="m-0">(Click sur l'image)</p> 
            </div>
            <div class="box-body pad res-tb-block">
              <img src="/images/alert/alert5.png" alt="alert" class="model_img img-fluid" id="sa-params">              
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