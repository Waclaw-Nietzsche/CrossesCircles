package servlets;

import model.CrossesCircles;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/PlayGameServlet")
public class PlayGameServlet extends HttpServlet
{
    CrossesCircles CrsCrc = new CrossesCircles();
    int z = 0;


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        z = 0;
        HttpSession session = request.getSession();
        String player_1= (String)session.getAttribute("Play1");
        CrsCrc.clear();
        session.setAttribute("player_name", player_1);
        response.sendRedirect("Play.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        response.setContentType("text/html");
        HttpSession session = request.getSession();
        String player_1 = (String)session.getAttribute("Play1");
        String player_2 = (String)session.getAttribute("Play2");
        String req = request.getParameter("a");
        int play = Integer.parseInt(req);
        int x = 0, y = 0;
        switch(play)
        {
            case 1: x = 0; y = 0;
                break;
            case 2: x = 0; y = 1;
                break;
            case 3: x = 0; y = 2;
                break;
            case 4: x = 1; y = 0;
                break;
            case 5: x = 1; y = 1;
                break;
            case 6: x = 1; y = 2;
                break;
            case 7: x = 2; y = 0;
                break;
            case 8: x = 2; y = 1;
                break;
            case 9: x = 2; y = 2;
                break;
        }

        z++;
        if(z % 2 == 0)
            session.setAttribute("player_name", player_1);
        else
            session.setAttribute("player_name", player_2);
        if(z < 10)
            play(request, response, x, y);
    }

    private void play(HttpServletRequest request, HttpServletResponse response, int x, int y) throws IOException
    {
        HttpSession session = request.getSession();
        String player_1 = (String)session.getAttribute("Play1");
        String player_2 = (String)session.getAttribute("Play2");

        int flag;
        flag = CrsCrc.add(x, y, z);
        session.setAttribute("flag",flag);
        if(flag == 0)
        {
            z = z - 1;
            if(z % 2 == 0)
                session.setAttribute("player_name", player_1 );
            else
                session.setAttribute("player_name", player_2);
            char[][] table = CrsCrc.gametable;
            session.setAttribute("session_array", table);
            response.sendRedirect("jspset/Game.jsp");
        }
        else if(z > 4)
        {
            int[] table = CrsCrc.checkGameTable();
            session.setAttribute("line", table[0]);
            if(table[1] == 1)
            {
                response.sendRedirect("WinPL1.jsp");
            }
            else if(table[1] == 2)
            {
                response.sendRedirect("WinPL2.jsp");
                z = 10;
            }
            else if(z == 9)
            {
                response.sendRedirect("DrawPVP.jsp");
            }

            else
            {
                char[][] gametable = CrsCrc.gametable;
                session.setAttribute("session_array", gametable);
                response.sendRedirect("jspset/Game.jsp");
            }
        }
        else
        {
            char[][] gametable = CrsCrc.gametable;
            session.setAttribute("session_array",gametable);
            response.sendRedirect("jspset/Game.jsp");

        }
    }
}
