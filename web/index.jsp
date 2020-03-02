<%--
  Created by IntelliJ IDEA.
  User: Slava
  Date: 27.02.2020
  Time: 20:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="javascript/LanguageControl.js"></script>
        <title>Крестики-Нолики</title>
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
    <body>
        <div class="bgimg w3-display-container w3-text-white">
            <button id="switch-lang" class="w3-display-topright">EN/RU</button>
            <div class="w3-display-topleft w3-padding-large w3-xlarge">
                <span lang="ru">СПбГЭТУ «ЛЭТИ»</span>
                <span lang="en">SPSETU «LETI»</span>
            </div>
            <div align="center" class="w3-display-middle">
                <h1 lang="ru" class="w3-jumbo w3-animate-top">Крестики-Нолики</h1>
                <h1 lang="en" class="w3-jumbo w3-animate-top">Tic-Tac-Toe</h1>
                <br></br>
                <a lang="ru" href="vsplay.jsp" class="button"><span>Два игрока</span></a>
                <a lang="en" href="vsplay.jsp" class="button"><span>Two players</span></a>
                <br></br>
                <br></br>
                <hr class="w3-border-grey" style="margin: auto; width: 40%">
                <p class="w3-large w3-center">2020</p>
            </div>
            <div lang="ru" class="w3-display-bottomleft w3-padding-large">
                Разработано <a href="https://github.com/Waclaw-Nietzsche" target="_blank">Waclaw-Nietzsche</a>
            </div>
            <div lang="en" class="w3-display-bottomleft w3-padding-large">
                Developed by <a href="https://github.com/Waclaw-Nietzsche" target="_blank">Waclaw-Nietzsche</a>
            </div>
        </div>
    </body>
</html>
