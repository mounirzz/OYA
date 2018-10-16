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
<div class="content-wrapper" style="min-height: 1923.5px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Blog widgets
      </h1>
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="breadcrumb-item active">Blog widgets</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      
      <div class="row">

          <div class="col-12">
            <div class="box">

              <div class="row no-gutters">
                <div class="col-md-8">
                  <div class="box-body">
                    <h4><a href="#">Integer efficitur nunc in blandit maximus.</a></h4>
                    <p><span>April 28, 2022</span></p>

                    <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>

                    <div class="flexbox align-items-center mt-3">
                      <a class="btn btn-info" href="#">Read more</a>

                      <div class="gap-items-4">
                        <a class="text-muted" href="#">
                          <i class="fa fa-heart mr-1"></i> 12
                        </a>
                        <a class="text-muted" href="#">
                          <i class="fa fa-comment mr-1"></i> 3
                        </a>
                      </div>
                    </div>
                  </div>
                </div>

                <div class="col-4 bg-img d-none d-md-block" style="background-image: url(../../../images/gallery/thumb/13.jpg)"></div>
              </div>
            </div>
          </div>


          <div class="col-12">
            <div class="box">

              <div class="row no-gutters">
                <a class="col-4 bg-img d-none d-md-block" style="background-image: url(../../../images/gallery/thumb/9.jpg)" href="#"></a>

                <div class="col-md-8">
                  <div class="box-body">
                    <h4><a href="#">Integer efficitur nunc in blandit maximus.</a></h4>
                    <hr class="w-50 ml-0 bt-2">

                    <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>

                    <div class="flexbox align-items-center mt-3">
                      <a class="text-gray" href="#">
                        <img class="avatar avatar-sm" src="../../../images/avatar/1.jpg" alt="...">
                        <span class="ml-2">Hos Shams</span>
                      </a>

                      <a href="#">
                        <i class="ion-heart text-danger font-size-11"></i>
                        <span class="font-size-11 text-fade ml-1">128</span>
                      </a>
                    </div>
                  </div>
                </div>

              </div>
            </div>
          </div>


          <div class="col-md-6">
            <div class="box">
              <div class="card-body bg-img py-70" style="background-image: url(../../../images/gallery/thumb/5.jpg)" data-overlay="5">
                <blockquote class="blockquote blockquote-inverse no-border no-margin">
                  <p class="font-size-22">Integer efficitur nunc in blandit maximus.</p>
                  <footer>Someone famous in <cite title="Source Title">Source Title</cite></footer>
                </blockquote>
              </div>

              <div class="box-body">
                <h4><a href="#">Nullam id arcu dictum, volutpat dui nec</a></h4>
                <p><span>April 28, 2022</span></p>

                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>

                <div class="flexbox align-items-center mt-3">
                  <a class="btn btn-bold btn-info" href="#">Read more</a>

                  <div class="gap-items-4">
                    <a class="text-muted" href="#">
                      <i class="fa fa-heart mr-1"></i> 12
                    </a>
                    <a class="text-muted" href="#">
                      <i class="fa fa-comment mr-1"></i> 3
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-md-6">
            <div class="box card-inverse bg-img text-center py-80" style="background-image: url(../../../images/gallery/thumb/12.jpg)" data-overlay="5">
              <div class="card-body">
                <span class="bb-1 opacity-80 pb-2">16 October, 2022</span>
                <br><br>
                <h3>Integer efficitur nunc in blandit maximus.</h3>
                <br><br>
                <a class="btn btn-outline no-radius btn-light btn-default" href="#">Read More</a>
              </div>
            </div>
          </div>

          <div class="col-md-6">
            <div class="box">
              <figure class="img-hov-zoomin">
                <img src="../../../images/gallery/thumb/11.jpg" alt="...">
              </figure>

              <div class="box-body">
                <p class="text-info text-uppercase">Nature</p>
                <h4><a href="#">Proin at libero id erat tristique convallis.</a></h4>
                <br>
                <br>
                <hr class="my-0">

                <div class="flexbox align-items-center mt-15">
                  <small>14 minutes ago</small>

                  <a class="text-muted" href="#">
                    <i class="ion-chatbox"></i>
                    <span>4</span>
                  </a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-md-6">
            <div class="box">
              <figure class="img-hov-zoomin">
                <img src="../../../images/gallery/thumb/18.jpg" alt="...">
              </figure>

              <div class="box-body">
                <p class="text-info text-uppercase">People</p>
                <h4><a href="#">Proin at libero id erat tristique convallis.</a></h4>
                <p>Conveniently reintermediate bleeding-edge metrics with unique initiatives. Credibly pontificate efficient relationships before corporate action items. Distinctively optimize interactive meta services.</p>
              </div>
            </div>
          </div>

          <div class="col-md-6">
            <div class="box">
              <figure class="img-hov-zoomin">
                <img src="../../../images/gallery/thumb/2.jpg" alt="...">
              </figure>

              <div class="box-body">
                <h4><a href="#">Proin at libero id erat tristique convallis.</a></h4>
                <p><span>April 28, 2022</span></p>

                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>

                <div class="flexbox align-items-center mt-3">
                  <a class="btn btn-bold btn-info" href="#">Read more</a>

                  <div class="gap-items-4">
                    <a class="text-muted" href="#">
                      <i class="fa fa-heart mr-1"></i> 12
                    </a>
                    <a class="text-muted" href="#">
                      <i class="fa fa-comment mr-1"></i> 3
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>


          <div class="col-md-6">
            <div class="box">
              <div class="embed-responsive embed-responsive-16by9">
                <iframe src="https://www.youtube.com/embed/kN9SZtwP1ys" class="b-0" allowfullscreen=""></iframe>
              </div>

              <div class="box-body">
                <h4><a class="hover-info" href="#">Proin at libero id erat tristique convallis.</a></h4>
                <p><span>April 28, 2022</span></p>

                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>

                <div class="flexbox align-items-center mt-3">
                  <a class="btn btn-bold btn-info" href="#">Read more</a>

                  <div class="gap-items-4">
                    <a class="text-muted" href="#">
                      <i class="fa fa-heart mr-1"></i> 12
                    </a>
                    <a class="text-muted" href="#">
                      <i class="fa fa-comment mr-1"></i> 3
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-md-6">
            <div class="box">
              <div id="#carousel-example-generic" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                  <div class="carousel-item">
                    <img src="../../../images/gallery/thumb/8.jpg" alt="First slide">
                  </div>
                  <div class="carousel-item">
                    <img src="../../../images/gallery/thumb/1.jpg" alt="Second slide">
                  </div>
                  <div class="carousel-item active">
                    <img src="../../../images/gallery/thumb/6.jpg" alt="Third slide">
                  </div>
                </div>

                <ol class="carousel-indicators">
                  <li data-target="#carousel-example-generic" data-slide-to="0" class=""></li>
                  <li data-target="#carousel-example-generic" data-slide-to="1" class=""></li>
                  <li data-target="#carousel-example-generic" data-slide-to="2" class="active"></li>
                </ol>
              </div>

              <div class="box-body">
                <ul class="nav nav-dot-separated no-gutters mb-1">
                  <li class="nav-item">
                    <a class="nav-link" href="#">16 Oct</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#"><i class="ion-heart mr-1"></i> 15</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#"><i class="ion-chatbubble"></i> 4</a>
                  </li>
                </ul>

                <h4><a class="hover-info" href="#">Proin at libero id erat tristique convallis.</a></h4>

                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>

                <p class="text-right">
                  <a class="btn btn-bold btn-info" href="#">Read more</a>
                </p>
              </div>
            </div>
          </div>


          <div class="col-md-6">
            <div class="box">
              <div class="embed-responsive embed-responsive-16by9">
                <iframe height="450" class="b-0 w-p100" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/5203969&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true"></iframe>
              </div>

              <div class="box-body">
                <h4><a href="#">Proin at libero id erat tristique convallis.</a></h4>
                <p><span>April 28, 2022</span></p>

                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
              </div>

              <div class="box-body bg-lightest bt-1">
                <div class="flexbox align-items-center">
                  <a class="text-primary font-size-15" href="#">Continue reading...</a>

                  <ul class="flexbox">
                    <li class="px-15 br-1">
                      <a class="text-muted" href="#">
                        <i class="fa fa-share-alt"></i>
                      </a>
                    </li>

                    <li class="px-15 br-1">
                      <a class="text-muted" href="#">
                        <i class="fa fa-heart mr-1"></i> 12
                      </a>
                    </li>

                    <li class="px-15">
                      <a class="text-muted" href="#">
                        <i class="fa fa-comment mr-1"></i> 3
                      </a>
                    </li>
                  </ul>
                </div>
              </div>

            </div>
          </div>

        </div>
      
      <!-- /.row -->

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