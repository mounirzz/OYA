<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <%@ include file="/common/global.jsp" %>
    <title>Profile  ${login_user.username}</title>
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
        User Profile
      </h1>
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="#"><i class="fa fa-dashboard"></i> Tableau de bord</a></li>
        <li class="breadcrumb-item"><a href="#">Utilisateur</a></li>
        <li class="breadcrumb-item active">Profile</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <div class="row">
        <div class="col-lg-3 col-12">

          <!-- Profile Image -->
          <div class="box bg-inverse bg-dark bg-hexagons-white">
            <div class="box-body box-profile">
              <img class="profile-user-img rounded-circle img-fluid mx-auto d-block" src="/images/user-thumbnail.png" alt="User profile picture">

              <h3 class="profile-username text-center">${user.username}</h3>

              <p class="text-center">${user.spc}</p>
				
              <div class="row social-states">
				  <div class="col-6 text-right"><a href="#" class="link text-white"><i class="ion ion-md-paper"></i> 254</a></div>
				  <div class="col-6 text-left"><a href="#" class="link text-white"><i class="ion ion-md-folder-open"></i> 54</a></div>
			  </div>
            
              <div class="row">
              	<div class="col-12">
              		<div class="profile-user-info">
						<p><i class="fa fa-envelope pr-15"></i>${user.slat} </p>
						<p><i class="fa fa-phone pr-15"></i>${user.phone}</p>
						<p><i class="fa fa-map-marker pr-15"></i>${user.address}</p>
						<p class="mt-25">Social Profile</p>
						<div class="user-social-acount">
							<button class="btn btn-block btn-social btn-facebook"><i class="fa fa-facebook"></i> Facebook</button>
							<button class="btn btn-block btn-social btn-twitter"><i class="fa fa-twitter"></i> Twitter</button>
							<button class="btn btn-block btn-social btn-instagram"><i class="fa fa-instagram"></i> Instagram</button>
							<button class="btn btn-block btn-social btn-google"><i class="fa fa-google-plus"></i> Google</button>
						</div>
						<div class="map-box mt-25 mb-0">
							<iframe src="https://www.google.com/maps/place/Rabat,+Morocco/@33.9692851,-6.8922821,13z/data=!3m1!4b1!4m5!3m4!1s0xda76b871f50c5c1:0x7ac946ed7408076b!8m2!3d33.9715904!4d-6.8498129?hl=en-US" height="150" class="w-p100 b-0" allowfullscreen=""></iframe>
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
              
        <!--      <li><a class="active" href="#timeline" data-toggle="tab">Timeline</a></li>	-->
          <!--    <li><a href="#activity" data-toggle="tab">Activity</a></li>   -->
              <li><a href="#settings" data-toggle="tab">Settings</a></li>
            </ul>
                        
            <div class="tab-content">
             
           <!--  <div class="active tab-pane" id="timeline">
                <!-- The timeline -->
			<!--	 <ul class="timeline2">
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
              
          <!--    <div class="tab-pane" id="activity">
                <!-- Post -->
          <!--      <div class="post">
                  <div class="user-block">
                    <img class="img-bordered-sm rounded-circle" src="../../../images/user1-128x128.jpg" alt="user image">
                        <span class="username">
                          <a href="#">John Doe</a>
                          <a href="#" class="pull-right btn-box-tool"><i class="fa fa-times"></i></a>
                        </span>
                    <span class="description">5 minutes ago</span>
                  </div>
                  <!-- /.user-block -->
           <!--       <div class="activitytimeline">
					  <p>
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum.
					  </p>
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
         <!--       <div class="post">
                  <div class="user-block">
                    <img class="img-bordered-sm rounded-circle" src="../../../images/user6-128x128.jpg" alt="user image">
                        <span class="username">
                          <a href="#">John Doe</a>
                          <a href="#" class="pull-right btn-box-tool"><i class="fa fa-times"></i></a>
                        </span>
                    <span class="description">5 minutes ago</span>
                  </div>
                  <!-- /.user-block -->
          <!--        <div class="activitytimeline">
					  <div class="row margin-bottom">
						<div class="col-sm-6">
						  <img class="img-fluid" src="../../../images/photo1.png" alt="Photo">
						</div>
						<!-- /.col -->
			<!--			<div class="col-sm-6">
						  <div class="row">
							<div class="col-sm-6">
							  <img class="img-fluid" src="../../../images/photo2.png" alt="Photo">
							  <br><br>
							  <img class="img-fluid" src="../../../images/photo3.jpg" alt="Photo">
							</div>
							<!-- /.col -->
				<!--			<div class="col-sm-6">
							  <img class="img-fluid" src="../../../images/photo4.jpg" alt="Photo">
							  <br><br>
							  <img class="img-fluid" src="../../../images/photo1.png" alt="Photo">
							</div>
							<!-- /.col -->
			<!--			  </div>
						  <!-- /.row -->
			<!--			</div>
						<!-- /.col -->
			<!--		  </div>
					  <!-- /.row -->

		<!--			  <ul class="list-inline">
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
       <!--         <div class="post clearfix">
                  <div class="user-block">
                    <img class="img-bordered-sm rounded-circle" src="../../../images/user7-128x128.jpg" alt="user image">
                        <span class="username">
                          <a href="#">John Doe</a>
                          <a href="#" class="pull-right btn-box-tool"><i class="fa fa-times"></i></a>
                        </span>
                    <span class="description">5 minutes ago</span>
                  </div>
                  <!-- /.user-block -->
        <!--            <div class="activitytimeline">
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
                
      <!--        </div>
              <!-- /.tab-pane -->
              
              <div class="active tab-pane" id="settings">
              <form:form  action="${ctx}/user/updateUser"  method="post" id="regForm" class="form-horizontal form-element col-12">
                  <div class="form-group row">
                    <label for="inputName" class="col-sm-2 control-label">Nom et prenom</label>

                    <div class="col-sm-10">
                      <input name="account" type="text"  value="${user.account}" class="form-control" id="inputName" placeholder="Votre Nom et Prenom">
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="inputEmail" class="col-sm-2 control-label">Téléphone</label>

                    <div class="col-sm-10">
                      <input type="tel" name="phone" value="${user.phone}" class="form-control" id="inputPhone" placeholder="Votre numéro de Téléphone">
                    </div>
                  </div>
                         <div class="form-group row">
                    <label for="inputEmail" class="col-sm-2 control-label">Fax</label>

                    <div class="col-sm-10">
                      <input type="tel" name="telPhone" value="${user.telPhone}" class="form-control" id="inputPhone" placeholder="Votre numéro de Fax">
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="inputPhone" class="col-sm-2 control-label">Adresse</label>

                    <div class="col-sm-10">
                      <input type="text" class="form-control" value="${user.address}" name="address" id="inputPhone" placeholder="Votre Adresse">
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="inputExperience" class="col-sm-2 control-label">Description</label>

                    <div class="col-sm-10">
                      <textarea class="form-control" name="slat" value="${user.slat}" id="inputExperience" placeholder="A propos de vous"></textarea>
                    </div>
                  </div>
    
                  <div class="form-group row">
                    <div class="ml-auto col-sm-10">
                      <div class="checkbox">
                       	<input type="checkbox" id="basic_checkbox_1" checked="">
						<label for="basic_checkbox_1">Je suis d'accord avec les </label>
                          &nbsp;&nbsp;&nbsp;&nbsp;<a href="#">Termes et les Conditions</a>
                      </div>
                    </div>
                  </div>
                  <div class="form-group row">
                    <div class="ml-auto col-sm-10">
                      <button type="submit" class="btn btn-success">Envoyer</button>
                    </div>
                  </div>
                </form:form>
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
  	<script type="text/javascript" src="${ctx}/common/scripts/jquery/dist/jquery.min.js"></script>
  	
	 	<script src="${ctx}/common/js/demo.js"></script>
		<script src="${ctx}/common/js/template.js"></script>
		<script type="text/javascript" src="${ctx }/common/scripts/bootstrap.min.js"></script>
			<script src="${ctx}/common/scripts/fastclick/lib/fastclick.js"></script>
				<script src="${ctx}/common/scripts/jquery-slimscroll/jquery.slimscroll.min.js"></script>
				<script type="text/javascript" src="${ctx }/common/scripts/popper.min.js"></script>
	

</body>
</html>