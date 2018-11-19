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
        ${project.categorie} </h1><div class="col-lg-6 col-12" style=" width: 30%;  max-width: 30%; margin-left: 523px; margin-top: -39px;"> <div class="box-body pad res-tb-block"> <div class="alert alert-warning alert-dismissable">
					<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>Votre projet est en cours de réalisation ...</div> </div>
      </div>
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="breadcrumb-item"><a href="#">Project</a></li>
        <li class="breadcrumb-item active">${project.categorie}</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <div class="row">
        <div class="col-lg-3 col-12">

          <!-- Profile Image -->
          <div class="box bg-inverse bg-dark bg-hexagons-white">
            <div class="box-body box-profile">
              <img class="profile-user-img rounded-circle img-fluid mx-auto d-block" src="../../../common/images/Boomerang-Communications-logo-01.png" alt="User profile picture" style=" background-color: rgb(255, 255, 255);border-radius: 0% ! important;">

              <h3 class="profile-username text-center">BOOMERANG Communication</h3>
				
              <div class="row social-states">
				  <div class="col-6 text-right"><a href="#" class="link text-white"><i class="ion ion-ios-people-outline"></i> 254</a></div>
				  <div class="col-6 text-left"><a href="#" class="link text-white"><i class="ion ion-images"></i> 54</a></div>
			  </div>
            
              <div class="row">
              	<div class="col-12">
              		<div class="profile-user-info">
						<p><i class="fa fa-envelope pr-15"></i>contact@boomerang.com</p>
						<p><i class="fa fa-phone pr-15"></i>(+212)52299422</p>
						<p><i class="fa fa-map-marker pr-15"></i>Bd, Abdellatif Ben kadour Angle Bd,. Zektouni 4éme étage - Casablanca</p>
						<p class="mt-25">Social Profile</p>
						<div class="user-social-acount">
							<button class="btn btn-block btn-social btn-facebook"><i class="fa fa-linkedin"></i> Linkedin</button>
							<button class="btn btn-block btn-social btn-twitter"><i class="fa fa-twitter"></i> Twitter</button>
							<button class="btn btn-block btn-social btn-google"><i class="fa fa-google-plus"></i> Google</button>
						</div>
						<div class="map-box mt-25 mb-0">
							<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3323.4865143375723!2d-7.639573534591001!3d33.592679099254696!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xebb211690721d24c!2sBoomerang+Communication!5e0!3m2!1sfr!2sfr!4v1540385523927" height="150" class="w-p100 b-0" allowfullscreen></iframe>
						</div>
					</div>
             	</div>
              </div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
        <div class="col-lg-9 col-12">
          <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
              
              <li><a class="active show" href="#project" data-toggle="tab">Projet</a></li>
              <li><a href="#activity" data-toggle="tab" class="">Plan</a></li>
              <li><a href="#timeline" data-toggle="tab" class="">Phase</a></li>
              <li><a href="#planning" data-toggle="tab" class="">Planning</a></li>
            </ul>
                        
            <div class="tab-content">
             
             <div class="tab-pane" id="timeline">
                <!-- The timeline -->
				 <ul class="timeline2">
					<li>
					  <div class="timeline-badge bg-info"><i class="glyphicon glyphicon-check"></i></div>
					  <div class="timeline-panel">
						<div class="timeline-heading">
						  <h4 class="timeline-title">Mussum ipsum cacilds</h4>
						  <p><small class="text-muted"><i class="glyphicon glyphicon-time"></i> 11 hours ago via Twitter</small></p>
						</div>
						<div class="timeline-body">
						  <p>Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo.</p>
						</div>
					  </div>
					</li>
					<li class="timeline-inverted">
					  <div class="timeline-badge bg-warning"><i class="glyphicon glyphicon-credit-card"></i></div>
					  <div class="timeline-panel">
						<div class="timeline-heading">
						  <h4 class="timeline-title">Mussum ipsum cacilds</h4>
						</div>
						<div class="timeline-body">
						  <p>Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo.</p>
						  <p>Suco de cevadiss, é um leite divinis, qui tem lupuliz, matis, aguis e fermentis. Interagi no mé, cursus quis, vehicula ac nisi. Aenean vel dui dui. Nullam leo erat, aliquet quis tempus a, posuere ut mi. Ut scelerisque neque et turpis posuere pulvinar pellentesque nibh ullamcorper.</p>
						</div>
					  </div>
					</li>
					<li>
					  <div class="timeline-badge bg-danger"><i class="glyphicon glyphicon-credit-card"></i></div>
					  <div class="timeline-panel">
						<div class="timeline-heading">
						  <h4 class="timeline-title">Mussum ipsum cacilds</h4>
						</div>
						<div class="timeline-body">
						  <p>Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo.</p>
						</div>
					  </div>
					</li>
					<li class="timeline-inverted">
					  <div class="timeline-panel">
						<div class="timeline-heading">
						  <h4 class="timeline-title">Mussum ipsum cacilds</h4>
						</div>
						<div class="timeline-body">
						  <p>Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo.</p>
						</div>
					  </div>
					</li>
					<li>
					  <div class="timeline-badge bg-info"><i class="glyphicon glyphicon-floppy-disk"></i></div>
					  <div class="timeline-panel">
						<div class="timeline-heading">
						  <h4 class="timeline-title">Mussum ipsum cacilds</h4>
						</div>
						<div class="timeline-body">
						  <p>Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo.</p>
						  <hr>
						  <div class="btn-group">
							  <button class="btn btn-light dropdown-toggle" type="button" data-toggle="dropdown"><i class="icon ti-settings"></i></button>
							  <div class="dropdown-menu dropdown-menu-right">
								<a class="dropdown-item" href="#">Action</a>
								<a class="dropdown-item" href="#">Another action</a>
								<a class="dropdown-item" href="#">Something else here</a>
							  </div>
							</div>
						</div>
					  </div>
					</li>
					<li>
					  <div class="timeline-panel">
						<div class="timeline-heading">
						  <h4 class="timeline-title">Mussum ipsum cacilds</h4>
						</div>
						<div class="timeline-body">
						  <p>Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo.</p>
						</div>
					  </div>
					</li>
					<li class="timeline-inverted">
					  <div class="timeline-badge bg-success"><i class="glyphicon glyphicon-thumbs-up"></i></div>
					  <div class="timeline-panel">
						<div class="timeline-heading">
						  <h4 class="timeline-title">Mussum ipsum cacilds</h4>
						</div>
						<div class="timeline-body">
						  <p>Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo.</p>
						</div>
					  </div>
					</li>
				</ul>
                
              </div>    
              <!-- /.tab-pane -->
              
              <div class="tab-pane" id="activity">
                <!-- Post -->
                <div class="post">
                  <div class="user-block">
                        <span class="username">
                          <a href="#">Terrain BOOMERANG Communication</a>
                          <a href="#" class="pull-right btn-box-tool"><i class="fa fa-times"></i></a>
                        </span>
                  </div>
                  <!-- /.user-block -->
                  <div class="activitytimeline">
                     <img class="" src="" alt="image">

					  <p>
At Boomerang Communications, we provide businesses with the best quality, yet cost efficient telecommunication equipment, data networking, security & surveillance systems, optic fibre and PA systems.

Bommerang Communications provides first rate telecommunication solutions to help keep your business running smoothly. We pride ourselves on expert advice, unbeatable service and the latest products, backed up with helpful support when you need it most.					  </p>
					  <ul class="list-inline">
						<li><a href="#" class="link-black text-sm"><i class="fa fa-share margin-r-5"></i> Share</a></li>
						<li><a href="#" class="link-black text-sm"><i class="fa fa-thumbs-o-up margin-r-5"></i> Like</a>
						</li>
					  </ul>
					  <form class="form-element">
						  <input class="form-control input-sm" type="text" placeholder="Type a comment">
					 </form>
                  </div>
                </div>
                <!-- /.post -->
                
                <!-- Post -->
                <div class="post">
                  <div class="user-block">
                    <img class="img-bordered-sm rounded-circle" src="../../../images/user6-128x128.jpg" alt="user image">
                        <span class="username">
                          <a href="#">John Doe</a>
                          <a href="#" class="pull-right btn-box-tool"><i class="fa fa-times"></i></a>
                        </span>
                    <span class="description">5 minutes ago</span>
                  </div>
                  <!-- /.user-block -->
                  <div class="activitytimeline">
					  <div class="row margin-bottom">
						<div class="col-sm-6">
						  <img class="img-fluid" src="../../../images/photo1.png" alt="Photo">
						</div>
						<!-- /.col -->
						<div class="col-sm-6">
						  <div class="row">
							<div class="col-sm-6">
							  <img class="img-fluid" src="../../../images/photo2.png" alt="Photo">
							  <br><br>
							  <img class="img-fluid" src="../../../images/photo3.jpg" alt="Photo">
							</div>
							<!-- /.col -->
							<div class="col-sm-6">
							  <img class="img-fluid" src="../../../images/photo4.jpg" alt="Photo">
							  <br><br>
							  <img class="img-fluid" src="../../../images/photo1.png" alt="Photo">
							</div>
							<!-- /.col -->
						  </div>
						  <!-- /.row -->
						</div>
						<!-- /.col -->
					  </div>
					  <!-- /.row -->

					  <ul class="list-inline">
						<li><a href="#" class="link-black text-sm"><i class="fa fa-share margin-r-5"></i> Share</a></li>
						<li><a href="#" class="link-black text-sm"><i class="fa fa-thumbs-o-up margin-r-5"></i> Like</a>
						</li>
						<li class="pull-right">
						  <a href="#" class="link-black text-sm"><i class="fa fa-comments-o margin-r-5"></i> Comments
							(5)</a></li>
					  </ul>

					  <form class="form-element">
						  <input class="form-control input-sm" type="text" placeholder="Type a comment">
					 </form>
					</div>
				</div>
                <!-- /.post -->

                <!-- Post -->
                <div class="post clearfix">
                  <div class="user-block">
                    <img class="img-bordered-sm rounded-circle" src="../../../images/user7-128x128.jpg" alt="user image">
                        <span class="username">
                          <a href="#">John Doe</a>
                          <a href="#" class="pull-right btn-box-tool"><i class="fa fa-times"></i></a>
                        </span>
                    <span class="description">5 minutes ago</span>
                  </div>
                  <!-- /.user-block -->
                    <div class="activitytimeline">
					  <p>
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.
					  </p>

					  <form class="form-horizontal form-element">
						<div class="form-group row no-gutters">
						  <div class="col-sm-9">
							<input class="form-control input-sm" placeholder="Response">
						  </div>
						  <div class="col-sm-3">
							<button type="submit" class="btn btn-danger pull-right btn-block btn-sm">Send</button>
						  </div>
						</div>
					  </form>
					</div>
                </div>
                <!-- /.post -->
                
              </div>
              <!-- /.tab-pane -->
              
              <div class="tab-pane active show" id="project">
                <form class="form-horizontal form-element col-12" action="${ctx}/Projects/edit/{id}">
                  <div class="form-group row">
                    <label for="inputName" class="col-sm-2 control-label">Catégorie</label>

                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="inputName" value="${project.categorie}"    placeholder="">
                    </div>
                  </div>
                  <!--  <div class="form-group row">
                    <label for="inputEmail" class="col-sm-2 control-label">Certificat de propriété</label>

                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="inputEmail" value="${project.certificat_propriete}"     placeholder="">
                    </div>
                  </div>-->
                  
                  
                  
                  
                  <div class="form-group row">
                    <label for="inputPhone" class="col-sm-2 control-label">Date début</label>

                    <div class="col-sm-10">
                      <input type="date" class="form-control" id="inputPhone" value="${project.date_debut}"  placeholder="">
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="inputExperience" class="col-sm-2 control-label">Description</label>

                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="inputExperience"   value="${project.description}" placeholder=""></input>
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="inputSkills" class="col-sm-2 control-label">Etat</label>

                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="inputSkills" value="${project.etat}"  placeholder="">
                    </div>
                  </div>
                              <div class="form-group row">
                    <label for="inputSkills" class="col-sm-2 control-label">Intitulé</label>

                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="inputSkills" value="${project.intitule}"  placeholder="">
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="inputSkills" class="col-sm-2 control-label">Titre foncier</label>

                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="inputSkills" value="${project.num_title_foncier}"  placeholder="">
                    </div>
                  </div>
                      <div class="form-group row">
                    <label for="inputSkills" class="col-sm-2 control-label">Titre foncier</label>

                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="inputSkills" value="${project.num_title_foncier}"  placeholder="">
                    </div>
                  </div>
                  <div class="form-group row">
                 <%--  <div class="col-md-5 text-center">
              		  <img class="img-responsive img-rounded" src="${ctx}${product.ProjectPic.url}">
          				  </div> --%>
          		</div>
                  <!--  <div class="form-group row">
                    <div class="ml-auto col-sm-10">
                      <div class="checkbox">
                       	<input type="checkbox" id="basic_checkbox_1" checked="">
						<label for="basic_checkbox_1"> I agree to the</label>
                          &nbsp;&nbsp;&nbsp;&nbsp;<a href="#">Terms and Conditions</a>
                      </div>
                    </div>
                  </div>
                  <div class="form-group row">
                    <div class="ml-auto col-sm-10">
                      <button type="submit" class="btn btn-success">Submit</button>
                    </div>
                  </div>
                  -->
                </form>
              </div>
              <!-- /.tab-pane -->
            </div>
            <!-- /.tab-content -->
          </div>
          <!-- /.nav-tabs-custom -->
        </div>
        <!-- /.col -->
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
	

</body>
</html>