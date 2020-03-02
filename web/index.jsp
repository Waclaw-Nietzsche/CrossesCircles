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
        <link rel="stylesheet" href="cssfiles/Style.css"/>
    </head>
    <body>
        <div class="bgimg w3-display-container w3-text-white">
            <button id="switch-lang" class="w3-display-topright">EN/RU</button>
            <div class="w3-display-topleft w3-padding-large w3-xlarge">
                <span lang="ru">СПбГЭТУ «ЛЭТИ»</span>
                <span lang="en">SPSETU «LETI»</span>
            </div>
            <div class="w3-display-bottomright w3-padding-large w3-xlarge">
                    <%
                    if (((String)session.getAttribute("player1") != null) && ((String)session.getAttribute("player2") != null))
                    {
                    %>
                        <span lang="ru">Последний победитель <%=(String)session.getAttribute("player1")%> и проиграваший <%=(String)session.getAttribute("player2")%></span>
                        <span lang="en">Last winner <%=(String)session.getAttribute("player1")%> and looser <%=(String)session.getAttribute("player2")%></span>
                    <%}%>
            </div>
            <div align="center" class="w3-display-middle">
                <h1 lang="ru" class="w3-jumbo w3-animate-top">Крестики-Нолики</h1>
                <h1 lang="en" class="w3-jumbo w3-animate-top">Tic-Tac-Toe</h1>
                <br></br>
                <a lang="ru" href="vsplay.jsp" class="bbutton"><span>Два игрока</span></a>
                <a lang="en" href="vsplay.jsp" class="bbutton"><span>Two players</span></a>
                <br></br>
                <br></br>
                <a lang="ru" href="logout.jsp" class="bbutton"><span>Выход</span></a>
                <a lang="en" href="logout.jsp" class="bbutton"><span>Exit</span></a>
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
