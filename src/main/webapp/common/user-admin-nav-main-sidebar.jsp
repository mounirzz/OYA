<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
		 <div class="ulogo">
			 <a href="index.html">
			  <!-- logo for regular state and mobile devices -->
			  <span><b>O.Y.A</b>Admin</span>
			</a>
		</div>
        <div class="image">
          <img src="/images/user-thumbnail.png" class="rounded-circle" alt="User Image">
        </div>
        
        <div class="info">
			<a href="${ctx}/user/profile" class="link" data-toggle="tooltip" title="" data-original-title="Settings"><i class="ion ion-gear-b"></i></a>
            <a href="" class="link" data-toggle="tooltip" title="" data-original-title="Email"><i class="ion ion-android-mail"></i></a>
            <a href="${ctx}/user/logout" class="link" data-toggle="tooltip" title="" data-original-title="Logout"><i class="ion ion-power"></i></a>
        </div>
      </div>
      <!-- sidebar menu -->
      <ul class="sidebar-menu" data-widget="tree">
		<li class="nav-devider"></li>
        <li class="header nav-small-cap">PERSONAL</li>
        <li class="active">
          <a href="${ctx}/user/home">
            <i class="icon-home"></i> <span>Tableau de bord</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-right pull-right"></i>
            </span>
          </a>
        </li>
        <li class="">
          <a href="${ctx}/order/">
            <i class="icon-list"></i>
            <span>Alimentation</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-right pull-right"></i>
            </span>
          </a>
        </li>
        <li class="">
          <a href="#">
            <i class="icon-directions"></i>
            <span>Les Tâches</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-right pull-right"></i>
            </span>
          </a>
        </li>
        <li>
          <a href="pages/currency-ex/exchange.html">
            <i class="icon-close"></i> <span>Problèmes</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-right pull-right"></i>
            </span>
          </a>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="icon-people"></i>
            <span>Utilisateurs</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-right pull-right"></i>
            </span>
          </a>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="icon-equalizer"></i>
            <span>Les étapes</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-right pull-right"></i>
            </span>
          </a>
        </li>
        <li class="treeview">
          <a href="${ctx}/user/Documents">
             <i class="icon-folder-alt"></i> 
            <span>Documents</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-right pull-right"></i>
            </span>
          </a>
        </li>
        <li class="">
          <a href="${ctx}/user/userAddress">
            <i class="icon-calendar"></i>
            <span>Planning</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-right pull-right"></i>
            </span>
          </a>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="icon-speedometer"></i>
            <span>Emploi du temps</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-right pull-right"></i>
            </span>
          </a>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="icon-envelope"></i> <span>Mailbox</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-right pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="pages/mailbox/mailbox.html">Inbox</a></li>
            <li><a href="pages/mailbox/compose.html">Compose</a></li>
            <li><a href="pages/mailbox/read-mail.html">Read</a></li>
          </ul>
        </li>
          </ul>     
        
      </ul>
    </section>
  </aside>