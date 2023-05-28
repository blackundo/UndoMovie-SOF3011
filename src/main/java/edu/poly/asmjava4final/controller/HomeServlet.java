package edu.poly.asmjava4final.controller;

import com.timgroup.jgravatar.Gravatar;
import com.timgroup.jgravatar.GravatarDefaultImage;
import com.timgroup.jgravatar.GravatarRating;
import edu.poly.asmjava4final.dto.MovieDTO;
import edu.poly.asmjava4final.dto.UserDTO;
import edu.poly.asmjava4final.service.MovieService;
import edu.poly.asmjava4final.service.UserService;
import edu.poly.asmjava4final.utils.*;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Collections;
import java.util.List;

@WebServlet(urlPatterns = { "/home", "/info", "/login", "/logout", "/search", "/block" })
public class HomeServlet extends HttpServlet {

    @Inject
    private UserService userService;
    @Inject
    private MovieService movieService;
    private static final int VIDEO_MAX_PAGE_SIZE = 4;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String view = "";
        String uri = request.getRequestURI();
        if (uri.contains("block")) {
            view = "/views/web/block.jsp";
            RequestDispatcher rd = request.getRequestDispatcher(view);
            rd.forward(request, response);
        } else if (uri.contains("login")) {
            view = "/views/index.jsp";
            RequestDispatcher rd = request.getRequestDispatcher(view);
            rd.forward(request, response);
        } else if (uri.contains("logout")) {
            SessionUtil.getInstance().removeValue(request, "USER");
            response.sendRedirect(request.getContextPath() + "/home");
        } else if (uri.contains("info")) {
            UserDTO user = (UserDTO) SessionUtil.getInstance().getValue(request, "USER");
            if (user == null) {
                view = "/views/web/404.jsp";
            } else {
                user = userService.findOne(user.getId());
                request.setAttribute("user", user);
                view = "/views/web/infoUser.jsp";
            }
            RequestDispatcher rd = request.getRequestDispatcher(view);
            rd.forward(request, response);
        } else if (uri.contains("search")) {
            String key = request.getParameter("key");
            UserDTO user = (UserDTO) SessionUtil.getInstance().getValue(request, "USER");
            if (user != null) {
                user = userService.findOne(user.getId());
                request.setAttribute("user", user);
            }
            List<MovieDTO> movies = movieService.findByTitle(key);
            if (movies.isEmpty()) {
                view = "/views/web/404.jsp";
            } else {
                request.setAttribute("movies", movies);
                view = "/views/web/search.jsp";
            }
            RequestDispatcher rd = request.getRequestDispatcher(view);
            rd.forward(request, response);
        } else {
            List<MovieDTO> countMovie = movieService.findAll();
            int maxPage = (int) Math.ceil(countMovie.size() / (double) VIDEO_MAX_PAGE_SIZE);
            request.setAttribute("maxPage", maxPage);

            List<MovieDTO> movies;

            String pageNumber = request.getParameter("p");
            if (pageNumber == null){
                movies = movieService.findAll(1, VIDEO_MAX_PAGE_SIZE);
                request.setAttribute("CurrentPage",1);
            }else {
                movies = movieService.findAll(Integer.valueOf(pageNumber), VIDEO_MAX_PAGE_SIZE);
                request.setAttribute("CurrentPage", pageNumber);
            }


//            List<MovieDTO> movies = movieService.findAll();
            Collections.reverse(movies);
            request.setAttribute("movies", movies);
            UserDTO user = (UserDTO) SessionUtil.getInstance().getValue(request, "USER");
            if (user != null) {
                user = userService.findOne(user.getId());
                Gravatar gravatar = new Gravatar();
                gravatar.setSize(50);
                gravatar.setRating(GravatarRating.GENERAL_AUDIENCES);
                gravatar.setDefaultImage(GravatarDefaultImage.IDENTICON);
                String urlAvt = gravatar.getUrl(user.getEmail());
                request.setAttribute("avt", urlAvt);
                request.setAttribute("user", user);
            }
            view = "/views/index.jsp";
            RequestDispatcher rd = request.getRequestDispatcher(view);
            rd.forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        UserDTO user = FormUtil.toModel(UserDTO.class, request);
        int hours = (user.getRemember() == null) ? 0 : 1;
        CookieUtil.add("username", user.getUsername(), hours, response);
        CookieUtil.add("password", user.getPassword(), hours, response);
        CookieUtil.add("remember", user.getRemember(), hours, response);


        user = userService.findByUserLogin(user.getUsername(), user.getPassword());

        SessionUtil.getInstance().putValue(request, "USER", user);

        if (!user.isRole()) {
            response.sendRedirect(request.getContextPath() + "/home");
        } else {
            response.sendRedirect(request.getContextPath() + "/admin");
        }
    }
}
