<%--
  Created by IntelliJ IDEA.
  User: Slava
  Date: 29.02.2020
  Time: 15:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Игра</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Oswald">
        <link rel="stylesheet" href="cssfiles/Style.css"/>
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
                <% String s1 =(String)session.getAttribute("Play1");
                   String s2 =(String)session.getAttribute("Play2");
                %> <%=s1%>
            </th>
        </tr>
    </table></p>
    <p align="center"><table><table background="javascript/gameboard.png" cellpadding="19" border="red">
        <tr>
            <td>
                <button id ="fb1" class="tablebutton">
                    <%if(a[0][0]=='X')
                    {%>
                    <script type="text/javascript">
                        changeItemToX("fb1");
                    </script>
                    <%}if(a[0][0]=='0'){%>
                    <script type="text/javascript">
                        changeItemToO("fb1");
                    </script>
                    <%} %>
                </button>
            </td>
            <td>
                <button id ="fb2" class="tablebutton">
                    <%if(a[0][1]=='X')
                    {%>
                    <script type="text/javascript">
                        changeItemToX("fb2");
                    </script>
                    <%}if(a[0][1]=='0'){%>
                    <script type="text/javascript">
                        changeItemToO("fb2");
                    </script>
                    <%}%>
                </button>
            </td>
            <td>
                <button id ="fb3" class="tablebutton">
                    <%if(a[0][2]=='X')
                    {%>
                    <script type="text/javascript">
                        changeItemToX("fb3");
                    </script>
                    <%}if(a[0][2]=='0'){%>
                    <script type="text/javascript">
                        changeItemToO("fb3");
                    </script>
                    <%}%>
                </button>
            </td>
        </tr>
        <tr>
            <td>
                <button id ="fb4" class="tablebutton">
                    <%if(a[1][0]=='X')
                    {%>
                    <script type="text/javascript">
                        changeItemToX("fb4");
                    </script>
                    <%}if(a[1][0]=='0'){%>
                    <script type="text/javascript">
                        changeItemToO("fb4");
                    </script>
                    <%}%>
                </button>
            </td>
            <td>
                <button id ="fb5" class="tablebutton">
                    <%if(a[1][1]=='X')
                    {%>
                    <script type="text/javascript">
                        changeItemToX("fb5");
                    </script>
                    <%}if(a[1][1]=='0'){%>
                    <script type="text/javascript">
                        changeItemToO("fb5");
                    </script>
                    <%}%>
                </button>
            </td>
            <td>
                <button id ="fb6" class="tablebutton">
                    <%if(a[1][2]=='X')
                    {%>
                    <script type="text/javascript">
                        changeItemToX("fb6");
                    </script>
                    <%}if(a[1][2]=='0'){%>
                    <script type="text/javascript">
                        changeItemToO("fb6");
                    </script>
                    <%}%>
                </button>
            </td>
        </tr>
        <tr>
            <td>
                <button id ="fb7" class="tablebutton">
                    <%if(a[2][0]=='X')
                    {%>
                    <script type="text/javascript">
                        changeItemToX("fb7");
                    </script>
                    <%}if(a[2][0]=='0'){%>
                    <script type="text/javascript">
                        changeItemToO("fb7");
                    </script>
                    <%}%>
                </button>
            </td>
            <td>
                <button id ="fb8" class="tablebutton">
                    <%if(a[2][1]=='X')
                    {%>
                    <script type="text/javascript">
                        changeItemToX("fb8");
                    </script>
                    <%}if(a[2][1]=='0'){%>
                    <script type="text/javascript">
                        changeItemToO("fb8");
                    </script>
                    <%}%>
                </button>
            </td>
            <td>
                <button id ="fb9" class="tablebutton">
                    <%if(a[2][2]=='X')
                    {%>
                    <script type="text/javascript">
                        changeItemToX("fb9");
                    </script>
                    <%}if(a[2][2]=='0'){%>
                    <script type="text/javascript">
                        changeItemToO("fb9");
                    </script>
                    <%}%>
                </button>
            </td>
        </tr>
    </table></table>

    <form action="PlayGameServlet" method="post">
        <div align="center">
            <button class="bbutton" type="submit" name="act" value="PlayAgain"><span>Сыграть ещё раз</span></button>
        </div>
    </form>
    <form action="PlayGameServlet" method="post">
        <div align="center">
            <button class="bbutton" type="submit" name="act" value="Exit"><span>Закончить игру</span></button>
        </div>
    </form>
    <form class="w3-display-bottommiddle" action="Cookies" method="get">
        <input class="w3-input w3-border w3-hover-grey" type="hidden" name="player1" value=<%=s1%>>
        <input class="w3-input w3-border w3-hover-grey" type="hidden" name="player2" value=<%=s2%>>
        <button lang="ru" class="bbutton" type="submit">Сохранить результат</button>
    </form>

    <%
        switch(l)
        {
            case 3 :%>
                <%if(a[0][0]=='X')
                {%>
                <script type="text/javascript">
                    changeItemToXHor("fb1");
                    changeItemToXHor("fb2");
                    changeItemToXHor("fb3");
                </script>
                <%}
                %>
                <% break;
        case 4 :%>
                <%if(a[0][0]=='X')
                {%>
                <script type="text/javascript">
                    changeItemToXMiddle("fb1");
                    changeItemToXMiddle("fb4");
                    changeItemToXMiddle("fb7");
                </script>
                <%}
                %>
                <% break;
        case 5 :%>
                <%if(a[0][0]=='X')
                {%>
                <script type="text/javascript">
                    changeItemToXLR("fb1");
                    changeItemToXLR("fb5");
                    changeItemToXLR("fb9");
                </script>
                <%}
                %>
                <% break;
        case 6 :%>
                <%if(a[0][2]=='X')
                {%>
                <script type="text/javascript">
                    changeItemToXRL("fb3");
                    changeItemToXRL("fb5");
                    changeItemToXRL("fb7");
                </script>
                <%}
                %>
                <% break;
        case 7 :%>
                <%if(a[1][0]=='X')
                {%>
                <script type="text/javascript">
                    changeItemToXHor("fb4");
                    changeItemToXHor("fb5");
                    changeItemToXHor("fb6");
                </script>
                <%}
                %>
                <% break;
        case 8 :%>
                <%if(a[2][0]=='X')
                {%>
                <script type="text/javascript">
                    changeItemToXHor("fb7");
                    changeItemToXHor("fb8");
                    changeItemToXHor("fb9");
                </script>
                <%}
                %>
                <% break;
        case 9 :%>
                <%if(a[0][1]=='X')
                {%>
                <script type="text/javascript">
                    changeItemToXMiddle("fb2");
                    changeItemToXMiddle("fb5");
                    changeItemToXMiddle("fb8");
                </script>
                <%}
                %>
                <% break;
        case 10 :%>
                <%if(a[0][2]=='X')
                {%>
                <script type="text/javascript">
                    changeItemToXMiddle("fb3");
                    changeItemToXMiddle("fb6");
                    changeItemToXMiddle("fb9");
                </script>
                <%}
                %>
                <% break;

        }%>

    </body>
</html>
