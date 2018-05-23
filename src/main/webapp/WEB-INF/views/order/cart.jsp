<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>Autocar ATRIEM FRANCE</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <%@ include file="/common/global.jsp" %>
    <%@ include file="/common/meta.jsp" %>
    <%@ include file="/common/include-base-styles.jsp" %>
  <%@ include file="/common/header-nav.jsp" %>
    <%@ include file="/common/include-base-js.jsp" %>
<script src="${ctx }/js/cart.js" type="text/javascript"></script>
<script src="${ctx }/js/wizard.js" type="text/javascript"></script>
<script src="${ctx }/js/product.js" type="text/javascript"></script>

  </head>
<!-- Titlebar
================================================== -->
<div id="titlebar" class="gradient">
	<div class="container">
		<div class="row">
			<div class="col-md-12">

				<h2 style="color:white;">Blog</h2><span style="color:white;">Latest News</span>

				<!-- Breadcrumbs -->
				<nav id="breadcrumbs">
					<ul style="color:white;">
						<li><a href="#" >Home</a></li>
						<li>Blog</li>
					</ul>
				</nav>

			</div>
		</div>
	</div>
</div>


<!-- Content
================================================== -->
<div class="container" style="padding: 30px 0 245px 0px;">
    <div class="row ">
        <div class="col-md-12">
	  <div class="box-body wizard-content">
					<form action="#" class="tab-wizard wizard-circle wizard clearfix" role="application" id="steps-uid-0"><div class="steps clearfix"><ul role="tablist">
					<li role="tab" class="first done" aria-disabled="false" aria-selected="false">
					<a id="steps-uid-0-t-0" href="#steps-uid-0-h-0" aria-controls="steps-uid-0-p-0">
						<span class="step">1</span> Personal Info</a></li>
					<li role="tab" class="current" aria-disabled="true">
					<a id="steps-uid-0-t-1" href="#steps-uid-0-h-1" aria-controls="steps-uid-0-p-1">
						<span class="step">2</span> Job Status</a></li>
					<li role="tab" class="disabled" aria-disabled="true">
					<a id="steps-uid-0-t-2" href="#steps-uid-0-h-2" aria-controls="steps-uid-0-p-2">
						<span class="current-info audible">current step: </span>
						<span class="step">3</span> Interview</a></li>
					</ul>
					</div>
					<div class="content clearfix">
						<!-- Step 1 -->
						<h6 id="steps-uid-0-h-0" tabindex="-1" class="title current">Personal Info</h6>
						<section id="steps-uid-0-p-0" role="tabpanel" aria-labelledby="steps-uid-0-h-0" class="body current" aria-hidden="false">
		
						</section>
						<!-- Step 2 -->
						<h6 id="steps-uid-0-h-1" tabindex="-1" class="title">Job Status</h6>
						<section id="steps-uid-0-p-1" role="tabpanel" aria-labelledby="steps-uid-0-h-1" class="body" aria-hidden="true" style="display: none;">
						
						</section>
						<!-- Step 3 -->
						<h6 id="steps-uid-0-h-2" tabindex="-1" class="title">Interview</h6>
						<section id="steps-uid-0-p-2" role="tabpanel" aria-labelledby="steps-uid-0-h-2" class="body" aria-hidden="true" style="display: none;">
						
						</section>
						<!-- Step 4 -->
						<h6 id="steps-uid-0-h-3" tabindex="-1" class="title">Remark</h6>
						<section id="steps-uid-0-p-3" role="tabpanel" aria-labelledby="steps-uid-0-h-3" class="body" aria-hidden="true" style="display: none;">	
						</section>
					</div>
				</form>
		        </div>
			<table class="basic-table">
			<c:choose>
                <c:when test="${empty sessionScope.cart}">
  					<tbody class="text-center">
                    <tr>
                       <div class="notification warning closeable">
							<p><span>Aucune reservation manquer!</span>  reserver votre véhicule SVP ... </p>
								<a class="close"></a>
						</div>
                    </tr>
                    </tbody>
                </c:when>
                <c:otherwise>
				<tbody>
				<tr>
					  <th>nom</th>
                     <th>modèle</th>
                     <th>code</th>
                     <th>prix</th>
                     <th>quantité</th>
					 <th>Autre </th>
					</tr>

				      <c:forEach items="${sessionScope.cart}" var="cartItem">
                        <c:set var="ci" value="${cartItem.value}"></c:set>
                        <tr pid="${ci.product.id}">
                            <td>${ci.product.title}</td>
                            <td>${ci.product.model}</td>
                            <td>${ci.product.code}</td>
                            <td>${ci.product.point}</td>
                            <td><a class="btn btn-default btn-xs delTotal">-</a> <label productid="${ci.product.id}">${ci.total}</label> <a class="btn btn-default btn-xs addTotal">+</a></td>
                            <td><a class="btn btn-info delBtn btn-xs" productid="${ci.product.id}">Supprimé la voiture</a></td>
                        </tr>
                    </c:forEach>
			</tbody>
			       </c:otherwise>
            </c:choose>
			</table>
			<div id="delSuccess" class="notification success closeable" style="display: none;">Supprimé avec succès ....</div>
        	<div id="delAllSuccess" class="notification warning closeable" style="display: none;">Le panier est vide.....</div>
		</div>
	<div class="row">
        <div class="col-md-6 col-xs-9">
            <a  href="${ctx}/product/" class="button medium border"><i class="fa fa-arrow-left"></i>Continuer à réserver</a>
            <a class="button medium border" id="cleanCart">Vider le panier</a>
        </div>
        <div class="col-md-6 col-xs-3 text-right">
            <a  href="${ctx}/order/purchase/" class="button medium border"><i class="fa fa-arrow-right"></i>Réserver</a>
        </div>
    </div>
</div>     



</div>
  <%@include file="/common/footer-in.jsp" %>
  </body>
</html>
