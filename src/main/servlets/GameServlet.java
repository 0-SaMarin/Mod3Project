import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/game")
public class GameServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();


        String username = request.getParameter("username");
        String choice = request.getParameter("choice");
        String camino = request.getParameter("camino");


        if (username != null && !username.isEmpty()) {
            session.setAttribute("runnerName", username);
        }


        request.setAttribute("choice", choice);
        request.setAttribute("camino", camino);


        request.getRequestDispatcher("/game.jsp").forward(request, response);
    }
}
