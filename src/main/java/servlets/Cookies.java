package servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;


/**
 * Сервлет обеспечения куки
 */
@WebServlet("/Cookies")
public class Cookies extends HttpServlet
{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        String player1 = request.getParameter("player1");
        String player2 = request.getParameter("player2");

        request.getSession().setAttribute("player1", player1);
        request.getSession().setAttribute("player2", player2);

        Cookie[] players =
                {
                        new javax.servlet.http.Cookie("player1", player1),
                        new javax.servlet.http.Cookie("player2", player2),
                };
        players[0].setMaxAge(60*5);
        players[1].setMaxAge(60*5);
        response.addCookie(players[0]);
        response.addCookie(players[1]);
        response.sendRedirect("index.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        doPost(request, response);
    }
}
