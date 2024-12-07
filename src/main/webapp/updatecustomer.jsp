<%@page import="com.klef.jfsd.springboot.model.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
    <title>Update Customer</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #f4f4f9;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        form {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 600px;
            margin: 0 auto;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th {
            text-align: left;
            color: black;
            padding: 10px;
            font-size: 16px;
        }

        td {
            padding: 10px;
            font-size: 16px;
        }

        td input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 16px;
            box-sizing: border-box;
        }

        .button-container {
            display: flex;
            gap: 20px;
            justify-content: center;
        }

        input[type="submit"], input[type="reset"] {
            padding: 10px 20px;
            font-size: 14px;
            border-radius: 4px;
            border: none;
            cursor: pointer;
            font-weight: bold;
            width: 45%;
            transition: all 0.3s ease;
        }

        input[type="submit"] {
            background-color: #708090;
            color: white;
        }

        input[type="reset"] {
            background-color: #708090;
            color: white;
        }

        input[type="submit"]:hover, input[type="reset"]:hover {
            transform: scale(1.05);
            background-color: #2f4f4f;
        }

        label {
            font-weight: bold;
            color: #555;
            display: block;
            margin-top: 10px;
        }

    </style>
</head>
<body>
<%@include file="home.jsp" %>

<h2>Update Customer Information</h2>
<form action="updatecustomer" method="post">
    <table>
        <tr>
            <th>ID:</th>
            <td><input type="number" id="customer_id" name="customer_id" required></td>
        </tr>
        <tr>
            <th>Full Name:</th>
            <td><input type="text" id="customer_name" name="customer_name" required></td>
        </tr>
        <tr>
            <th>Address:</th>
            <td><input type="text" id="customer_address" name="customer_address" required></td>
        </tr>
        <tr>
            <td colspan="2" class="button-container">
                <input type="submit" value="Update">
                <input type="reset" value="Clear">
            </td>
        </tr>
    </table>
</form>

</body>
</html>
