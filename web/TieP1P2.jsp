<%--
  Created by IntelliJ IDEA.
  User: Slava
  Date: 29.02.2020
  Time: 15:35
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
        <link rel="stylesheet" href="cssfiles/Style.css">
        <script src="javascript/GameProcess.js"></script>
    </head>
    <body class="bgimg w3-display-container w3-text-white">

    <%
        char a[][] = new char[3][3];
        a = (char[][])session.getAttribute("session_array");
    %>
        <p align="center"><table>
            <tr>
                <th id="player">Результат:</th>
                <th id="player1">Ничья</th>
            </tr>
        </table></p>
        <p align="center"><table><table background="javascript/gameboard.png" cellpadding="19" border="red">
            <tr>
                <td>
                    <button id ="b1" class="tablebutton">
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
                    <button id ="b2" class="tablebutton">
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
                    <button id ="b3" class="tablebutton">
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
                    <button id ="b4" class="tablebutton">
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
                    <button id ="b5" class="tablebutton">
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
                    <button id ="b6" class="tablebutton">
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
                    <button id ="b7" class="tablebutton">
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
                    <button id ="b8" class="tablebutton">
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
                    <button id ="b9" class="tablebutton">
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
            <button class="bbutton" type="submit" name="act" value="PlayAgain"><span>Сыграть ещё раз</span></button>
        </div>
    </form>
    <form action="PlayGameServlet" method="post">
        <div align="center">
            <button class="bbutton" type="submit" name="act" value="Exit"><span>Закончить игру</span></button>
        </div>
    </form>
    </body>
</html>
