package edu.poly.asmjava4final.controller.admin;

import edu.poly.asmjava4final.dto.UserDTO;
import edu.poly.asmjava4final.service.UserService;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = { "/admin/user", "/admin/user/edit" })
public class UserServlet extends HttpServlet {
    @Inject
    private UserService userService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<UserDTO> users = userService.findAll();
        String uri = request.getRequestURI();
        String id = request.getParameter("id");
        String view = "";
        if (uri.contains("edit")) {
            if (id != null) {
                UserDTO user = userService.findOne(Long.valueOf(id));
                request.setAttribute("user", user);
            }
            view = "/views/admin/user/edit.jsp";
        } else {
            request.setAttribute("users", users);
            view = "/views/admin/user/list.jsp";
        }
        RequestDispatcher rd = request.getRequestDispatcher(view);
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
