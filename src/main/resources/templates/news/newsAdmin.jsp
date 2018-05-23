<!-- <!DOCTYPE html>
<html>
<head>
   
</head>

<body>

<div class="container">

    <div class="row">
        <div id="addNewsSuccess" style="display: none" class="alert alert-success">Ajouter le succès/div>
        <table class="table table-responsive table-striped">
                <thead>
                <tr>
                    <td>Date</td>
                    <td>Titre de l'avis</td>
                    <td>Fonctionnement</td>
                </tr>
                </thead>
            <tbody>
            <c:forEach items="${page.result}" var="news">
                <tr pid="${news.id}">
                    <td>${news.createTime}</td>
                    <td>${news.title}</td>
                    <td><a class="btn btn-info btn-xs">Pour voir</a> <a class="btn btn-info btn-xs">Modifier<a class="btn btn-info btn-xs">Supprimé</a></a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <div class="col-md-6 col-md-offset-3">
            <form:form id="inputForm" role="form" action="${ctx}/news/add"
                       method="post" class="form-horizontal">
                <div class="form-group">
                    <label class="col-sm-2 control-label">Titre</label>
                    <div class="col-sm-10">
                        <input minlength="6" required class="form-control" type="text" id="title" name="title"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Contenu</label>

                    <div class="col-sm-10">
                        <textarea class="form-control" name="content" id="content"></textarea>
                    </div>
                </div>
                <div class="text-center">
                    <button type="button" id="addNewsBtn" class="btn btn-primary">Enregistrer</button>
                </div>
            </form:form>
        </div>

    </div>
    <div class="text-center">
        <tags:pagination page="${page}" paginationSize="${page.pageSize}"/>
    </div>
</div>

// <!--
</body>
</html> -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
         <!DOCTYPE html>
<html>
<head>
    <%@ include file="/common/global.jsp" %>
    <title>Ajouter des marchandises</title>
    <%@ include file="/common/meta.jsp" %>
    <%@ include file="/common/include-base-styles.jsp" %>
    <link type="text/css" rel="stylesheet" href="${ctx}/css/index.css"/>
</head>

<body>
<%@include file="/common/header-nav.jsp" %>
	<!-- Content
	================================================== -->
	<div class="dashboard-content">

		<!-- Titlebar -->
		<div id="titlebar">
			<div class="row">
				<div class="col-md-12">
					<h2>Add Listing</h2>
					<!-- Breadcrumbs -->
					<nav id="breadcrumbs">
						<ul>
							<li><a href="#">Home</a></li>
							<li><a href="#">Dashboard</a></li>
							<li>Add Listing</li>
						</ul>
					</nav>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">

				<div id="add-listing">

					<!-- Section -->
					<div class="add-listing-section">

						<!-- Headline -->
						<div class="add-listing-headline">
							<h3><i class="sl sl-icon-doc"></i> Basic Informations</h3>
						</div>
 					<form:form id="inputForm" role="form" action="${ctx}/news/add"
                       method="post" >
						<!-- Title -->
						<div class="row with-forms">
							<div class="col-md-12">
								<h5>Titre d'Annonce <i class="tip" data-tip-content=" "></i></h5>
								<input class="search-field" type="text" id="title" minlenght="6" name="title" value=""/>
							</div>
						</div>

						<div class="row with-forms">
							<div class="col-md-12">
								<h5>Description<i class="tip" data-tip-content=""></i></h5>
								<input class="search-field" type="text" id="content" name="content" value=""/>
							</div>
						</div>
	

					</div>
					<!-- Section / End -->
							<a href="#" id="addnewsBtn" type="button" class="button preview">Enregistrer <i class="fa fa-arrow-circle-right"></i></a>
					</form:form>


		


					<!-- Section -->
					<div class="add-listing-section margin-top-45">
						
						<!-- Headline -->
						<div class="add-listing-headline">
							<h3><i class="sl sl-icon-book-open"></i> Pricing</h3>
							<!-- Switcher -->
							<label class="switch"><input type="checkbox" checked><span class="slider round"></span></label>
						</div>

						<!-- Switcher ON-OFF Content -->
						<div class="switcher-content">

							<div class="row">
							   <div id="addNewsSuccess" style="display: none" class="alert alert-success">Ajouter le succès/div>
								        <table class="table table-responsive table-striped">
								                <thead>
								                <tr>
								                    <td>Date</td>
								                    <td>Titre de l'avis</td>
								                    <td>Fonctionnement</td>
								                </tr>
								                </thead>
								            <tbody>
								            <c:forEach items="${page.result}" var="news">
								                <tr pid="${news.id}">
								                    <td>${news.createTime}</td>
								                    <td>${news.title}</td>
								                    <td><a class="btn btn-info btn-xs">Pour voir</a> 
								                    	<a class="btn btn-info btn-xs">Modifier<a class="btn btn-info btn-xs">Supprimé</a></a></td>
								                </tr>
								            </c:forEach>
								            </tbody>
								        </table>
						  <div class="text-center">
						        <tags:pagination page="${page}" paginationSize="${page.pageSize}"/>
						    </div>
							</div>

						</div>
						<!-- Switcher ON-OFF Content / End -->

					</div>
					<!-- Section / End -->



				</div>
			</div>

			<!-- Copyrights -->
			<div class="col-md-12">
				<div class="copyrights">© 2017 Listeo. All Rights Reserved.</div>
			</div>

		</div>

	</div>
	<!-- Content / End -->
	<!-- /container -->
<%@include file="/common/footer.jsp" %>
<%@ include file="/common/include-base-js.jsp" %>
<script src="${ctx }/common/bootstrap/js/jqBootstrapValidation.js" type="text/javascript"></script>
<script>
    $(function () { $("input,select,textarea").not("[type=submit]").jqBootstrapValidation(); } );
</script>
</body>
</html>