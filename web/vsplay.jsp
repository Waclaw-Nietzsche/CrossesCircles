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
        <link rel="stylesheet" href="cssfiles/Style.css"/>
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
