<%@ page import="static java.lang.Thread.sleep" %><%--
  Created by IntelliJ IDEA.
  User: Slava
  Date: 29.02.2020
  Time: 15:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Игра</title>
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

    <link rel="stylesheet" href="cssfiles/Style.css">
    <script src="javascript/GameProcess.js"></script>
</head>
<body class="bgimg w3-display-container w3-text-white">
<%
    char a[][] = new char[3][3];
    a = (char[][])session.getAttribute("session_array");
    int l = (int)session.getAttribute("line");
%>
<p align="center"><table>
    <tr>
        <th id="player">Победитель: </th>
        <th id="player1">
            <% String s=(String)session.getAttribute("Play2");%> <%=s%>
        </th>
    </tr>
</table></p>
<p align="center"><table><table background="javascript/gameboard.png" cellpadding="19" border="red">
    <tr>
        <td>
            <button id ="sb1">
                <%if(a[0][0]=='X')
                {%>
                <script type="text/javascript">
                    changeItemToX("sb1");
                </script>
                <%}if(a[0][0]=='0'){%>
                <script type="text/javascript">
                    changeItemToO("sb1");
                </script>
                <%} %>
            </button>
        </td>
        <td>
            <button id ="sb2">
                <%if(a[0][1]=='X')
                {%>
                <script type="text/javascript">
                    changeItemToX("sb2");
                </script>
                <%}if(a[0][1]=='0'){%>
                <script type="text/javascript">
                    changeItemToO("sb2");
                </script>
                <%}%>
            </button>
        </td>
        <td>
            <button id ="sb3">
                <%if(a[0][2]=='X')
                {%>
                <script type="text/javascript">
                    changeItemToX("sb3");
                </script>
                <%}if(a[0][2]=='0'){%>
                <script type="text/javascript">
                    changeItemToO("sb3");
                </script>
                <%}%>
            </button>
        </td>
    </tr>
    <tr>
        <td>
            <button id ="sb4">
                <%if(a[1][0]=='X')
                {%>
                <script type="text/javascript">
                    changeItemToX("sb4");
                </script>
                <%}if(a[1][0]=='0'){%>
                <script type="text/javascript">
                    changeItemToO("sb4");
                </script>
                <%}%>
            </button>
        </td>
        <td>
            <button id ="sb5">
                <%if(a[1][1]=='X')
                {%>
                <script type="text/javascript">
                    changeItemToX("sb5");
                </script>
                <%}if(a[1][1]=='0'){%>
                <script type="text/javascript">
                    changeItemToO("sb5");
                </script>
                <%}%>
            </button>
        </td>
        <td>
            <button id ="sb6">
                <%if(a[1][2]=='X')
                {%>
                <script type="text/javascript">
                    changeItemToX("sb6");
                </script>
                <%}if(a[1][2]=='0'){%>
                <script type="text/javascript">
                    changeItemToO("sb6");
                </script>
                <%}%>
            </button>
        </td>
    </tr>
    <tr>
        <td>
            <button id ="sb7">
                <%if(a[2][0]=='X')
                {%>
                <script type="text/javascript">
                    changeItemToX("sb7");
                </script>
                <%}if(a[2][0]=='0'){%>
                <script type="text/javascript">
                    changeItemToO("sb7");
                </script>
                <%}%>
            </button>
        </td>
        <td>
            <button id ="sb8">
                <%if(a[2][1]=='X')
                {%>
                <script type="text/javascript">
                    changeItemToX("sb8");
                </script>
                <%}if(a[2][1]=='0'){%>
                <script type="text/javascript">
                    changeItemToO("sb8");
                </script>
                <%}%>
            </button>
        </td>
        <td>
            <button id ="sb9">
                <%if(a[2][2]=='X')
                {%>
                <script type="text/javascript">
                    changeItemToX("sb9");
                </script>
                <%}if(a[2][2]=='0'){%>
                <script type="text/javascript">
                    changeItemToO("sb9");
                </script>
                <%}%>
            </button>
        </td>
    </tr>
</table></table>

<form action="PlayGameServlet" method="post">
    <div align="center">
        <button class="bbutton" type="submit" id="PlayAg"><span>Сыграть ещё раз</span></button>
        <%--            <a href="index.html" class="bbutton"><span>В главное меню</span></a>--%>
    </div>
</form>

<%
    switch(l)
    {
        case 3 :%>
            <%if(a[0][0]=='0')
            {%>
            <script type="text/javascript">
                changeItemToOHor("sb1");
                changeItemToOHor("sb2");
                changeItemToOHor("sb3");
            </script>
            <%}
            %>
            <% break;
    case 4 :%>
            <%if(a[0][0]=='0'){%>
            <script type="text/javascript">
                changeItemToOMiddle("sb1");
                changeItemToOMiddle("sb4");
                changeItemToOMiddle("sb7");
            </script>
            <%}
            %>
            <% break;
    case 5 :%>
            <%if(a[0][0]=='0')
            {%>
            <script type="text/javascript">
                changeItemToOLR("sb1");
                changeItemToOLR("sb5");
                changeItemToOLR("sb9");
            </script>
            <%}
            %>
            <% break;
    case 6 :%>
            <%if(a[0][2]=='0')
            {%>
            <script type="text/javascript">
                changeItemToORL("sb3");
                changeItemToORL("sb5");
                changeItemToORL("sb7");
            </script>
            <%}
            %>
            <% break;
    case 7 :%>
            <%if(a[1][0]=='0')
            {%>
            <script type="text/javascript">
                changeItemToOHor("sb4");
                changeItemToOHor("sb5");
                changeItemToOHor("sb6");
            </script>
            <%}
            %>
            <% break;
    case 8 :%>
            <%if(a[2][0]=='0')
            {%>
            <script type="text/javascript">
                changeItemToOHor("sb7");
                changeItemToOHor("sb8");
                changeItemToOHor("sb9");
            </script>
            <%}
            %>
            <% break;
    case 9 :%>
            <%if(a[0][1]=='0')
            {%>
            <script type="text/javascript">
                changeItemToOMiddle("sb2");
                changeItemToOMiddle("sb5");
                changeItemToOMiddle("sb8");
            </script>
            <%}
            %>
            <% break;
    case 10 :%>
        <%if(a[0][2]=='0')
        {%>
        <script type="text/javascript">
            changeItemToOMiddle("sb3");
            changeItemToOMiddle("sb6");
            changeItemToOMiddle("sb9");
        </script>
        <%}
        %>
        <% break;
    }%>


</body>
</html>
