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
    <script src="${ctx}/js/order.js" type="text/javascript"></script>
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
					<h2>My reservations</h2>
					<!-- Breadcrumbs -->
					<nav id="breadcrumbs">
						<ul>
							<li><a href="#">Home</a></li>
							<li><a href="#">Dashboard</a></li>
							<li>My reservations</li>
						</ul>
					</nav>
				</div>
			</div>
		</div>

	   <div class="row">
        <table class="table table-responsive table-striped">
                <thead>
                <tr>
           	         <td> Date de la reservation </td>
                     <td> numéro de reservation </td>
                     <td> montant de la commande </td>
                     <td> Statut de la reservation </td>
                     <td> Destinataire </td>
                     <td> opération </td>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${page.result}" var="order">
                    <tr pid="${order.id}">
                        <td>${order.createTime}</td>
                        <td>${order.orderNumber}</td>
                        <td>${order.finalPrice}</td>
                        <td>
                            <c:choose>
                                <c:when test="${order.status==0}">En attente de paiement</c:when>
                                <c:when test="${order.status==1}">En attente de livraison</c:when>
                                <c:when test="${order.status==2}">A été expédié</c:when>
                                <c:when test="${order.status==3}">A été annulé</c:when>
                                <c:when test="${order.status==4}">A été complété</c:when>
                            </c:choose>
                        </td>
                        <td>${order.consignee}</td>
                        <td>
                            <c:choose>
                                <c:when test="${order.status==0}"><a class="btn btn-info btn-xs" href="${ctx}/order/${order.id}">pour voir</a>  <a class="btn-primary  btn-xs pay-order-btn">Paiement</a> <a class="btn-primary  btn-xs cancel-order-btn" role="button">Annuler la reservation</a></c:when>
                                <c:when test="${order.status==1}"><a class="btn btn-info btn-xs" href="${ctx}/order/${order.id}">pour voir</a> <a class="btn-primary  btn-xs cancel-order-btn" role="button">Annuler la reservation</a></c:when>
                                <c:when test="${order.status==2}"><a class="btn btn-info btn-xs" href="${ctx}/order/${order.id}">pour voir</a> <a class="btn-primary  btn-xs confirm-order-btn">Confirmer la réception</a></c:when>
                                <c:when test="${order.status==3}"><a class="btn btn-info btn-xs" href="${ctx}/order/${order.id}">pour voir</a></c:when>
                                <c:when test="${order.status==4}"><a class="btn btn-info btn-xs" href="${ctx}/order/${order.id}">pour voir</a></c:when>
                            </c:choose>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
        </table>
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