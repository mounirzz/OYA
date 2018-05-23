<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="/common/global.jsp" %>
    <title>L'administrateur se connecte</title>
    <%@ include file="/common/meta.jsp" %>
    <%@ include file="/common/include-base-styles.jsp" %>
    <link type="text/css" rel="stylesheet" href="${ctx}/css/login.css"/>
</head>

<body>

<div class="container">
    <form:form role="form" action="${ctx}/admin/login"
               method="post" id="loginForm" class="form-signin">

        <c:if test="${not empty param.errorPwd}">
            <div id="errorPwd" class="alert alert-success">Erreur de mot de passe ...</div>

            <script type="text/javascript">
                setTimeout(function () {
                    $('#errorPwd').hide('slow');
                }, 5000);
            </script>
        </c:if>
        <!-- Masquer automatiquement l'invite -->
        <c:if test="${not empty param.error}">
            <div id="error" class="alert alert-success">Admin non connecté ou session échoué ...</div>
            
            <script type="text/javascript">
                setTimeout(function () {
                    $('#error').hide('slow');
                }, 5000);
            </script>
        </c:if>

        <h2 class="form-signin-heading">L'administrateur se connecte</h2>

        <div class="form-group">
            <input type="text" class="form-control" name="username" placeholder="Nom de compte" required autofocus>
        </div>
        <div class="form-group">
            <input type="password" class="form-control" name="password" placeholder="Mot de passe" required>
        </div>
        <div class="form-group">
            <label class="checkbox">
                <input type="checkbox" value="remember-me">remember
            </label>
        </div>
        <div class="form-group">
            <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
        </div>

    </form:form>
</div>
<!-- /container -->

<%@ include file="/common/include-base-js.jsp" %>
<script src="${ctx }/js/login.js" type="text/javascript"></script>
</body>
</html>