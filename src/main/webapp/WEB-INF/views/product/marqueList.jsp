<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <c:forEach items="${page.result}" var="marque">
            <c:set var="task" value="${leave.task }"/>
            <c:set var="pi" value="${leave.processInstance }"/>
            
		<div class="col-lg-9 col-md-8 padding-right-30">

			<!-- Blog Post -->
			<div class="blog-post">
				<p>${marque.name}</p>
				<p>${marque.id}</p>
			</div>
			<!-- Blog Post / End -->
			</div>
</c:forEach>
</body>
</html>