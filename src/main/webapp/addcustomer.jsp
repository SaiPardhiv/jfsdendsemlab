<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Registration Form</title>
    <style>
        body {
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }

        .container {
            height: 80vh;
            width: 60vw;
            margin: 50px auto;
            border: 2px solid WhiteSmoke;
            border-radius: 10px;
            overflow: hidden;
            display: flex;
            justify-content: center;
            align-items: center;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            background-image: url('https://specials-images.forbesimg.com/imageserve/6022d2600897af9201e981f2/960x0.jpg?fit=scale');
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
        }

        .form-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            width: 60%;
            background-color: rgba(255, 255, 255, 0.6);
            padding: 20px;
            border-radius: 10px;
        }

        .form-container h2 {
            text-align: center;
            margin-bottom: 30px;
        }

        .form-container table {
            width: 100%;
        }

        td {
            padding: 8px;
            font-size: 16px;
        }

        td label {
            display: block;
            font-weight: bold;
        }

        td input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        button {
            background-color: #333;
            color: white;
            padding: 12px 24px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
        }

        button:hover {
            background-color: #555;
        }

        .footer-message {
            text-align: center;
            margin-top: 20px;
        }

        .footer-message a {
            color: #007bff;
            text-decoration: none;
        }

        .footer-message a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<%@include file="home.jsp" %><br/>

    <!-- Customer Registration Form -->
    <div class="container">
        <div class="form-container">
            <h2>Customer Registration Form</h2>
            <form action="insertcustomer" method="POST" enctype="multipart/form-data">
                <table>
                    <tr>
                        <td><label for="name">Full Name:</label></td>
                        <td><input type="text" id="name" name="name" required></td>
                    </tr>
                    <tr>
                        <td><label for="email">Email:</label></td>
                        <td><input type="email" id="email" name="email" required></td>
                    </tr>
                    <tr>
                        <td><label for="phoneNumber">Phone Number:</label></td>
                        <td><input type="text" id="phoneNumber" name="phoneNumber" required></td>
                    </tr>
                    <tr>
                        <td><label for="address">Address:</label></td>
                        <td><input type="text" id="address" name="address" required></td>
                    </tr>
                    <tr>
                        <td><label for="dateOfBirth">Date of Birth:</label></td>
                        <td><input type="date" id="dateOfBirth" name="dateOfBirth" required></td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center;">
                            <button type="submit">Register</button>
                        </td>
                    </tr>
                </table>
            </form>
            <div class="footer-message">
                <p>Already have an account? <a href="customerlogin" class="link-info">Login here</a></p>
            </div>
        </div>
    </div><br/><br/>
</body>
</html>
