<%--
  Created by IntelliJ IDEA.
  User: Slava
  Date: 28.02.2020
  Time: 19:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="javascript/LanguageControl.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Oswald">
        <style>
            body,h1 {font-family: "Oswald", sans-serif}
            body, html {height: 100%}
            .bgimg
            {
                background-image: url('views/background.png');
                min-height: 100%;
                background-position: center;
                background-size: cover;
            }
            .bbutton
            {
                border-radius: 4px;
                background-color: #f4511e;
                box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
                border: 2px solid #4CAF50;
                color: #FFFFFF;
                text-align: center;
                font-size: 15px;
                padding: 20px;
                width: 200px;
                transition: all 0.5s;
                cursor: pointer;
                margin: auto;
            }
            .bbutton span
            {
                cursor: pointer;
                display: inline-block;
                position: center;
                transition: 0.5s;
            }
            .bbutton span:after
            {
                content: '\00bb';
                position: center;
                opacity: 0;
                top: 0;
                right: -20px;
                transition: 0.5s;
            }
            .bbutton:hover span
            {
                padding-right: 25px;
            }
            .bbutton:hover span:after
            {
                opacity: 1;
                right: 0;
            }
        </style>
    </head>
    <body>
        <div class="bgimg w3-display-container w3-text-white">
            <form action="StartServlet" method="post">
                <div align="center" class="w3-display-middle">
                    <br action="StartServlet" method="post">
                    <div lang="ru" class="w3-xlarge">Введите имя первого игрока:</div>
                    <div lang="en" class="w3-xlarge">Enter the first player's name:</div>
                    <p align="left"><input class="w3-input w3-border w3-hover-grey" type="text" name="player1" required></p>
                    <div lang="ru" class="w3-xlarge">Введите имя второго игрока:</div>
                    <div lang="en" class="w3-xlarge">Enter the second player's name:</div>
                    <p align="left"><input class="w3-input w3-border w3-hover-grey" type="text" name="player2" required></p>
                    <button lang="ru" class="bbutton" type="submit" >Играть</button>
                    <button lang="en" class="bbutton" type="submit" >Play</button>
                </div>
            </form>
            <button id="switch-lang" class="w3-display-topright">EN/RU</button>
            <a lang="ru" href="index.jsp" class="bbutton"><span>В главное меню</span></a>
            <a lang="en" href="index.jsp" class="bbutton"><span>Back to main menu</span></a>
        </div>
    </body>
</html>
