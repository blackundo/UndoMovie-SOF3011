package edu.poly.asmjava4final.controller.admin;

import edu.poly.asmjava4final.dto.CategoryDTO;
import edu.poly.asmjava4final.service.CategoryService;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = { "/admin/category" })
public class CategoryServlet extends HttpServlet {
    @Inject
    private CategoryService categoryService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<CategoryDTO> categories = categoryService.findAll();
        request.setAttribute("categories", categories);
        RequestDispatcher rd = request.getRequestDispatcher("/views/admin/category/list.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
