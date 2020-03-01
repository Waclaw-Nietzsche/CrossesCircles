<%--
  Created by IntelliJ IDEA.
  User: Slava
  Date: 26.02.2020
  Time: 2:36
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
        </style>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="javascript/LanguageControl.js"></script>
        <link rel="stylesheet" href="cssfiles/Style.css">
        <script src="javascript/GameProcess.js"></script>
    </head>
    <body class="bgimg w3-display-container w3-text-white" onload="loadImage();">
        <%
            char a[][] = new char[3][3];
            a = (char[][])session.getAttribute("session_array");
            int f = Integer.parseInt(session.getAttribute("flag").toString());
            if(f == 0)
            { }
        %>
        <form action="PlayGameServlet" method="get">
                <p align="center"><table>
                    <tr>
                        <th id="player">Сейчас ходит</th>
                        <th id="player1"><%=session.getAttribute("player_name")%></th>
                    </tr>
                </table></p>
                <p align="center"><table><table background="javascript/gameboard.png" cellpadding="19" border="red">
                    <tr>
                        <td>
                            <button id ="b1" type="submit" name="a" value="1">
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
                            <button id ="b2" type="submit" name="a" value="2">
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
                            <button id ="b3"  type="submit" name="a" value="3">
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
                            <button id ="b4"  type="submit" name="a" value="4">
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
                            <button id ="b5"  type="submit" name="a" value="5">
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
                            <button id ="b6"  type="submit" name="a" value="6">
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
                            <button id ="b7"  type="submit" name="a" value="7">
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
                            <button id ="b8" type="submit" name="a" value="8">
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
                            <button id ="b9" type="submit" name="a" value="9">
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
                </table>
                </table>
            </p>
        </form>
        </body>
</html>
