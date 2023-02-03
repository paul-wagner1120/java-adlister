<%--
  Created by IntelliJ IDEA.
  User: snapkraklepaul
  Date: 2/3/23
  Time: 12:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pizza Order Form</title>
</head>
<body>

    <h1>Pizza Order Form</h1>
    <form action="pizza-order" method="post">
        <div>
            <label for="crust"><b>Choose Your Crust:</b></label>

            <select name="crust" id="crust">
                <option value="thin">Thin</option>
                <option value="hand-tossed">Hand-Tossed</option>
                <option value="pan">Pan</option>
                <option value="stuffed">Stuffed</option>
            </select>
            <br>
            <label for="sauce"><b>Choose Your Sauce:</b></label>

            <select name="sauce" id="sauce">
                <option value="tomato">Tomato</option>
                <option value="alfredo">Alfredo</option>
                <option value="none">No Sauce</option>
            </select>
            <br>
            <label for="size"><b>Choose Your Size:</b></label>

            <select name="size" id="size">
                <option value="small">Small</option>
                <option value="medium">Medium</option>
                <option value="large">Large</option>
            </select>

            <div>

                <h3>Choose Your Toppings:</h3>

                <input type="checkbox" id="topping1" name="toppings" value="Pepperoni">
                <label for="topping1"> Pepperoni</label><br>
                <input type="checkbox" id="topping2" name="toppings" value="Italian Sausage">
                <label for="topping2"> Italian Sausage</label><br>
                <input type="checkbox" id="topping3" name="toppings" value="Bacon">
                <label for="topping3"> Bacon</label><br>

            </div>

            <div>
                <h3>Please enter your Delivery Address</h3>
            <label for="address">
                <textarea placeholder="Delivery Address" id="address" name="address" required></textarea>
            </label>
            <br>
            <button type="submit">Submit</button>
            </div>
        </div>
    </form>
</body>
</html>
