package edu.poly.asmjava4final.controller;

import edu.poly.asmjava4final.dto.MovieDTO;
import edu.poly.asmjava4final.dto.UserDTO;
import edu.poly.asmjava4final.service.MovieService;
import edu.poly.asmjava4final.service.UserService;
import edu.poly.asmjava4final.utils.SessionUtil;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;
import java.util.Set;

@WebServlet(urlPatterns = { "/movie" })
public class MovieServlet extends HttpServlet {

    @Inject
    private MovieService movieService;
    @Inject
    private UserService userService;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        MovieDTO movie = movieService.findOneByLink(id);
        request.setAttribute("movie", movie);

        //select all
        List<MovieDTO> movies = movieService.findAll();
        request.setAttribute("movies", movies);

        if (id != null) {
            UserDTO user = (UserDTO) SessionUtil.getInstance().getValue(request, "USER");
            if (user != null) {
                user = userService.findOne(user.getId());
                request.setAttribute("user", user);
                if (checkFavor(user.getMovies(), id)) {
                    request.setAttribute("added", 1);
                } else {
                    request.setAttribute("added", 0);
                }
            } else {
                request.setAttribute("added", 0);
            }
        }

        RequestDispatcher rd = request.getRequestDispatcher("/views/pwatch.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    private boolean checkFavor(Set<MovieDTO> movies, String id) {
        for (MovieDTO i : movies) {
            if (i.getId().equals(Long.valueOf(id))) {
                return true;
            }
        }
        return false;
    }
}
