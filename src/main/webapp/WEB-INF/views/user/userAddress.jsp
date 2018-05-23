<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="/common/global.jsp" %>
    <title>${title}</title>
    <%@ include file="/common/meta.jsp" %>
    <%@ include file="/common/include-base-styles.jsp" %>
    <link type="text/css" rel="stylesheet" href="${ctx}/css/index.css"/>
    <%@ include file="/common/include-base-js.jsp" %>
    <script src="${ctx }/js/user.js" type="text/javascript"></script>
    <script src="${ctx }/js/userAddress.js" type="text/javascript"></script>
    
</head>

<body>
 <%@include file="/common/user-admin-nav.jsp" %>

   	<!-- Content
	================================================== -->
	<div class="dashboard-content">

		<!-- Titlebar -->
		<div id="titlebar">
			<div class="row">
				<div class="col-md-12">
					<h2>Liste des réservations</h2>
					<!-- Breadcrumbs -->
					<nav id="breadcrumbs">
						<ul>
							<li><a href="#">Home</a></li>
							<li><a href="#">Dashboard</a></li>
							<li>Liste des réservations</li>
						</ul>
					</nav>
				</div>
			</div>
		</div>

	   <div class="row">
       <div class="row">
        <div id="errorTip" style="display: none" class="alert alert-warn">Une erreur est survenue</div>
        <div id="addAddressSuccess" style="display: none" class="alert alert-success">Ajouté avec succès</div>
        <div id="delAddressSuccess" style="display: none" class="alert alert-success">Supprimé avec succès</div>
        <table class="table table-responsive table-striped" style="width: 65%; margin-left: 18%;">
            <thead>
            <tr>
          		  <td> Destinataire </td>
                 <td> code postal </td>
                 <td> téléphone </td>
                 <td> adresse </td>
                 <td> opération </td>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${userAddressList}" var="userAddress">
                <tr addressId="${userAddress.id}">
                    <td>${userAddress.consignee}</td>
                    <td>${userAddress.zipcode}</td>
                    <td>${userAddress.phone}</td>
                    <td>${userAddress.address}</td>
                    <td>
                        <a class="btn btn-info btn-xs delAddresslBtn" addressId="${userAddress.id}">Supprimé</a>
                        <a class="btn btn-info btn-xs editAddresslBtn" addressId="${userAddress.id}">Modifier</a>
                        <a data-trigger="confirm" href="/delete/me" class="btn btn-info btn-xs">Demo</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <div class="col-md-6 col-md-offset-3">
            <form:form id="inputForm" role="form" action="${ctx}/user/userAddress/add"
                       method="post" class="form-horizontal">
                <div class="form-group">
                    <label class="col-sm-2 control-label">Destinataire</label>
                    <div class="col-sm-10">
                        <input minlength="6" required class="form-control" type="text" id="consignee" name="consignee"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Téléphone</label>

                    <div class="col-sm-10">
                        <input type="number" required class="form-control" type="text" id="phone" name="phone"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Code postal</label>

                    <div class="col-sm-10">
                        <input class="form-control" type="text" id="zipcode" name="zipcode"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Adresse</label>

                    <div class="col-sm-10">
                        <textarea class="form-control" name="address" id="address"></textarea>
                    </div>
                </div>
                <div class="text-center">
                    <button type="button" id="addAddressBtn" class="btn btn-primary">Enregistrer</button>
                </div>
            </form:form>
        </div>
<%@include file="/common/footer.jsp" %>
		</div>

		</div>

	</div>
	<!-- Content / End -->


</div>
<!-- Dashboard / End -->


</div>
<!-- Wrapper / End -->
</body>
</html>