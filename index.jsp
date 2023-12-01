<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Simple Calculator</title>
</head>
<body>
    <h2>Simple Calculator</h2>

    <form action="calculator.jsp" method="post">
        <label for="num1">Number 1:</label>             
        <input type="text" name="num1" required>
        <br>

        <label for="num2">Number 2:</label>
        <input type="text" name="num2" required>
        <br>

        <label for="operation">Operation:</label>
        <select name="operation" required>
            <option value="add">Addition</option>
            <option value="subtract">Subtraction</option>
            <option value="multiply">Multiplication</option>
            <option value="divide">Division</option>
        </select>
        <br>

        <input type="submit" value="Calculate">
    </form>

    <%-- Java code to process the form submission --%>
    <%
        if (request.getMethod().equalsIgnoreCase("post")) {
            double num1 = Double.parseDouble(request.getParameter("num1"));
            double num2 = Double.parseDouble(request.getParameter("num2"));
            String operation = request.getParameter("operation");
            double result = 0;

            switch (operation) {
                case "add":
                    result = num1 + num2;
                    break;
                case "subtract":
                    result = num1 - num2;
                    break;
                case "multiply":
                    result = num1 * num2;
                    break;
                case "divide":
                    if (num2 != 0) {
                        result = num1 / num2;
                    } else {
                        out.println("<p style='color:red;'>Error: Division by zero</p>");
                    }
                    break;
                default:
                    out.println("<p style='color:red;'>Error: Invalid operation</p>");
                    break;
            }

            out.println("<p>Result: " + result + "</p>");
        }
    %>

</body>
</html>