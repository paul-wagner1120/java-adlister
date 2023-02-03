<%--
  Created by IntelliJ IDEA.
  User: snapkraklepaul
  Date: 2/3/23
  Time: 2:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pick Color</title>
</head>
<body>


<form method="post" action="viewcolor">
    <div>
        <label for="pickcolor"><b>Pick a new background color: </b></label>
        <input  type="text" placeholder="Enter Color" id="pickcolor" name="color" required>
        <br>
        <button type="submit">Submit</button>
    </div>
</form>

</body>
</html>
