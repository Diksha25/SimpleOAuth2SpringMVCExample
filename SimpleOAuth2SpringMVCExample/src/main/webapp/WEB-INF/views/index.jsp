<%@ taglib prefix="authz" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"/>
  <title>Sparklr</title>
  <link type="text/css" rel="stylesheet" href="<c:url value="/style.css"/>"/>

  <authz:authorize ifAllGranted="ROLE_USER">
  <p>Member!</p>
  </authz:authorize>
</head>
<body>

  <h1>Member!</h1>

  <div id="content">
    <h2>Index</h2>

    <authz:authorize ifNotGranted="ROLE_USER">
	    <jsp:include page="login.jsp"/>
    </authz:authorize>
    <authz:authorize ifAllGranted="ROLE_USER">
      <div style="text-align: center"><form action="<c:url value="/logout.do"/>"><input type="submit" value="Logout"></form></div>
    </authz:authorize>
  </div>

</body>
</html>
