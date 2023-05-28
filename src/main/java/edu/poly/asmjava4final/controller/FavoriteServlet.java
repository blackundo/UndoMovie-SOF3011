package edu.poly.asmjava4final.controller;

import edu.poly.asmjava4final.dto.UserDTO;
import edu.poly.asmjava4final.service.UserService;
import edu.poly.asmjava4final.utils.SessionUtil;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(urlPatterns = { "/favorite" })
public class FavoriteServlet extends HttpServlet {

    @Inject
    private UserService userService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String view = "";
        UserDTO user = (UserDTO) SessionUtil.getInstance().getValue(request, "USER");

        if (user == null) {
            view = "/views/web/404.jsp";
        } else {
            user = userService.findOne(user.getId());
            request.setAttribute("user", user);
            view = "/views/web/favorite.jsp";
        }
        RequestDispatcher rd = request.getRequestDispatcher(view);
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
