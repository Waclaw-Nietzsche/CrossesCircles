<%--
  Created by IntelliJ IDEA.
  User: Slava
  Date: 02.03.2020
  Time: 14:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Ошибка</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Oswald">
        <style>
            body,h1 {font-family: "Oswald", sans-serif}
            body, html {height: 100%}
            .bgimg
            {
                background-color: silver;
                min-height: 100%;
                background-position: center;
                background-size: cover;
            }
            .button
            {
                border-radius: 4px;
                background-color: #f4511e;
                box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
                border: 2px solid #4CAF50;
                color: #FFFFFF;
                text-align: center;
                font-size: 28px;
                padding: 20px;
                width: 200px;
                transition: all 0.5s;
                cursor: pointer;
                margin: 5px;
            }
            .button span
            {
                cursor: pointer;
                display: inline-block;
                position: center;
                transition: 0.5s;
            }
            .button span:after
            {
                content: '\00bb';
                position: center;
                opacity: 0;
                top: 0;
                right: -20px;
                transition: 0.5s;
            }
            .button:hover span
            {
                padding-right: 25px;
            }
            .button:hover span:after
            {
                opacity: 1;
                right: 0;
            }
        </style>
    </head>
    <body class="bgimg">
        <div align="center" class="w3-display-middle">
            <div align="center" class="w3-display-middle">
                <h2 class="w3-jumbo w3-animate-top">Ошибка</h2>
                <a href="index.jsp" class="button"><span>Повторить</span></a>
            </div>
        </div>
    </body>
</html>
