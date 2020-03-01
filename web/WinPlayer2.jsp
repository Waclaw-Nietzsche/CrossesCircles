<%--
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
            <button id ="b1">
                <%if(a[0][0]=='X')
                {%>
                <script type="text/javascript">
                    changeItemToX("b1");
                </script>
                <%}if(a[0][0]=='0'){%>
                <script type="text/javascript">
                    changeItemToO("b1");
                </script>
                <%} %>
            </button>
        </td>
        <td>
            <button id ="b2">
                <%if(a[0][1]=='X')
                {%>
                <script type="text/javascript">
                    changeItemToX("b2");
                </script>
                <%}if(a[0][1]=='0'){%>
                <script type="text/javascript">
                    changeItemToO("b2");
                </script>
                <%}%>
            </button>
        </td>
        <td>
            <button id ="b3">
                <%if(a[0][2]=='X')
                {%>
                <script type="text/javascript">
                    changeItemToX("b3");
                </script>
                <%}if(a[0][2]=='0'){%>
                <script type="text/javascript">
                    changeItemToO("b3");
                </script>
                <%}%>
            </button>
        </td>
    </tr>
    <tr>
        <td>
            <button id ="b4">
                <%if(a[1][0]=='X')
                {%>
                <script type="text/javascript">
                    changeItemToX("b4");
                </script>
                <%}if(a[1][0]=='0'){%>
                <script type="text/javascript">
                    changeItemToO("b4");
                </script>
                <%}%>
            </button>
        </td>
        <td>
            <button id ="b5">
                <%if(a[1][1]=='X')
                {%>
                <script type="text/javascript">
                    changeItemToX("b5");
                </script>
                <%}if(a[1][1]=='0'){%>
                <script type="text/javascript">
                    changeItemToO("b5");
                </script>
                <%}%>
            </button>
        </td>
        <td>
            <button id ="b6">
                <%if(a[1][2]=='X')
                {%>
                <script type="text/javascript">
                    changeItemToX("b6");
                </script>
                <%}if(a[1][2]=='0'){%>
                <script type="text/javascript">
                    changeItemToO("b6");
                </script>
                <%}%>
            </button>
        </td>
    </tr>
    <tr>
        <td>
            <button id ="b7">
                <%if(a[2][0]=='X')
                {%>
                <script type="text/javascript">
                    changeItemToX("b7");
                </script>
                <%}if(a[2][0]=='0'){%>
                <script type="text/javascript">
                    changeItemToO("b7");
                </script>
                <%}%>
            </button>
        </td>
        <td>
            <button id ="b8">
                <%if(a[2][1]=='X')
                {%>
                <script type="text/javascript">
                    changeItemToX("b8");
                </script>
                <%}if(a[2][1]=='0'){%>
                <script type="text/javascript">
                    changeItemToO("b8");
                </script>
                <%}%>
            </button>
        </td>
        <td>
            <button id ="b9">
                <%if(a[2][2]=='X')
                {%>
                <script type="text/javascript">
                    changeItemToX("b9");
                </script>
                <%}if(a[2][2]=='0'){%>
                <script type="text/javascript">
                    changeItemToO("b9");
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
<%if(a[0][0]=='X')
{%>
<script type="text/javascript">
    changeItemToXHor("b1");
    changeItemToXHor("b2");
    changeItemToXHor("b3");
</script>
<%}if(a[0][0]=='0'){%>
<script type="text/javascript">
    changeItemToOHor("b1");
    changeItemToOHor("b2");
    changeItemToOHor("b3");
</script>
<%}
%>
<% break;
    case 4 :%>
<%if(a[0][0]=='X')
{%>
<script type="text/javascript">
    changeItemToXMiddle("b1");
    changeItemToXMiddle("b4");
    changeItemToXMiddle("b7");
</script>
<%}if(a[0][0]=='0'){%>
<script type="text/javascript">
    changeItemToOMiddle("b1");
    changeItemToOMiddle("b4");
    changeItemToOMiddle("b7");
</script>
<%}
%>
<% break;
    case 5 :%>
<%if(a[0][0]=='X')
{%>
<script type="text/javascript">
    changeItemToXLR("b1");
    changeItemToXLR("b5");
    changeItemToXLR("b9");
</script>
<%}if(a[0][0]=='0'){%>
<script type="text/javascript">
    changeItemToOLR("b1");
    changeItemToOLR("b5");
    changeItemToOLR("b9");
</script>
<%}
%>
<% break;
    case 6 :%>
<%if(a[0][0]=='X')
{%>
<script type="text/javascript">
    changeItemToXRL("b3");
    changeItemToXRL("b5");
    changeItemToXRL("b7");
</script>
<%}if(a[0][0]=='0'){%>
<script type="text/javascript">
    changeItemToORL("b3");
    changeItemToORL("b5");
    changeItemToORL("b7");
</script>
<%}
%>
<% break;
    case 7 :%>
<%if(a[0][0]=='X')
{%>
<script type="text/javascript">
    changeItemToXHor("b4");
    changeItemToXHor("b5");
    changeItemToXHor("b6");
</script>
<%}if(a[0][0]=='0'){%>
<script type="text/javascript">
    changeItemToOHor("b4");
    changeItemToOHor("b5");
    changeItemToOHor("b6");
</script>
<%}
%>
<% break;
    case 8 :%>
<%if(a[0][0]=='X')
{%>
<script type="text/javascript">
    changeItemToXHor("b7");
    changeItemToXHor("b8");
    changeItemToXHor("b9");
</script>
<%}if(a[0][0]=='0'){%>
<script type="text/javascript">
    changeItemToOHor("b7");
    changeItemToOHor("b8");
    changeItemToOHor("b9");
</script>
<%}
%>
<% break;
    case 9 :%>
<%if(a[0][0]=='X')
{%>
<script type="text/javascript">
    changeItemToXMiddle("b2");
    changeItemToXMiddle("b5");
    changeItemToXMiddle("b8");
</script>
<%}if(a[0][0]=='0'){%>
<script type="text/javascript">
    changeItemToOMiddle("b2");
    changeItemToOMiddle("b5");
    changeItemToOMiddle("b8");
</script>
<%}
%>
<% break;
    case 10 :%>
<%if(a[0][0]=='X')
{%>
<script type="text/javascript">
    changeItemToXMiddle("b3");
    changeItemToXMiddle("b6");
    changeItemToXMiddle("b9");
</script>
<%}if(a[0][0]=='0'){%>
<script type="text/javascript">
    changeItemToOMiddle("b3");
    changeItemToOMiddle("b6");
    changeItemToOMiddle("b9");
</script>
<%}
%>
<% break;

}%>


</body>
</html>
