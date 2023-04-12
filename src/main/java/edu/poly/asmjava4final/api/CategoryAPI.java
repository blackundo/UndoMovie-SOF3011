package edu.poly.asmjava4final.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import edu.poly.asmjava4final.dto.CategoryDTO;
import edu.poly.asmjava4final.service.CategoryService;
import edu.poly.asmjava4final.utils.HttpUtil;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(urlPatterns = { "/api/category" })
public class CategoryAPI extends HttpServlet {
    @Inject
    private CategoryService categoryService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper(); // ObjectMapper dùng để đọc outputstream dto qua json
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        CategoryDTO dto = HttpUtil.of(request.getReader()).toDTO(CategoryDTO.class);
        dto = categoryService.save(dto);
        mapper.writeValue(response.getOutputStream(), dto);
    }

    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper(); // ObjectMapper dùng để đọc outputstream dto qua json
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        CategoryDTO dto = HttpUtil.of(request.getReader()).toDTO(CategoryDTO.class);
        dto = categoryService.update(dto);
        mapper.writeValue(response.getOutputStream(), dto);
    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper(); // ObjectMapper dùng để đọc outputstream dto qua json
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        CategoryDTO dto = HttpUtil.of(request.getReader()).toDTO(CategoryDTO.class);
        categoryService.delete(dto.getIds());
        mapper.writeValue(response.getOutputStream(), "{}");
    }
}
