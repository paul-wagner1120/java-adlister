<%@ page import="java.util.Objects" %><%--
  Created by IntelliJ IDEA.
  User: snapkraklepaul
  Date: 2/2/23
  Time: 1:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<form method="post" action="login.jsp">
    <div>
        <label for="username"><b>Username</b></label>
        <input  type="text" placeholder="Enter Username" id="username" name="username" required>
        <br>
        <label for="password"><b>Password</b></label>
        <input type="password" placeholder="Enter Password" id="password" name="password" required>

        <button type="submit">Login</button>
    </div>
</form>

<% if (Objects.equals(request.getParameter("username"), "admin") && Objects.equals(request.getParameter("password"), "password")){
    String redirectURL = "/profile.jsp";
    response.sendRedirect(redirectURL);
}%>

</body>
</html>


