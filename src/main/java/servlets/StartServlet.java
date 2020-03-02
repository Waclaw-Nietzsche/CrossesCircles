package servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/StartServlet")
public class StartServlet extends HttpServlet
{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        char table[][] = new char[3][3];
        String player1 = request.getParameter("player1");
        String player2 = request.getParameter("player2");

        HttpSession session = request.getSession();
        session.setAttribute("Play1", player1);
        session.setAttribute("Play2", player2);
        session.setAttribute("session_array", table);
        session.setAttribute("player_name", player1);
        session.setAttribute("flag","1");
        response.sendRedirect("Game.jsp");
    }
}
