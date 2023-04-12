package edu.poly.asmjava4final.controller.admin;

import edu.poly.asmjava4final.dto.CategoryDTO;
import edu.poly.asmjava4final.dto.MovieDTO;
import edu.poly.asmjava4final.service.CategoryService;
import edu.poly.asmjava4final.service.MovieService;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = { "/admin/movie", "/admin/movie/edit" })
public class MovieServlet extends HttpServlet {
    @Inject
    private MovieService movieService;
    @Inject
    private CategoryService categoryService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<MovieDTO> movies = movieService.findAll();
        String uri = request.getRequestURI();
        String id = request.getParameter("id");
        String view = "";
        if (uri.contains("edit")) {
            List<CategoryDTO> categories = categoryService.findAll();
            if (id != null) {
                MovieDTO movie = movieService.findOne(Long.valueOf(id));
                request.setAttribute("movie", movie);
            }
            request.setAttribute("categories", categories);
            view = "/views/admin/movie/edit.jsp";
        } else {
            request.setAttribute("movies", movies);
            view = "/views/admin/movie/list.jsp";
        }
        RequestDispatcher rd = request.getRequestDispatcher(view);
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
