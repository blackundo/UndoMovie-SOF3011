package edu.poly.asmjava4final.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import edu.poly.asmjava4final.dto.CategoryDTO;
import edu.poly.asmjava4final.dto.MovieDTO;
import edu.poly.asmjava4final.service.CategoryService;
import edu.poly.asmjava4final.service.MovieService;
import edu.poly.asmjava4final.utils.HttpUtil;

import javax.inject.Inject;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Set;

@WebServlet(urlPatterns = { "/api/movie", "/api/movie/like", "/api/movie/view" })
public class MovieAPI extends HttpServlet {
    @Inject
    private MovieService movieService;
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
        MovieDTO dto = HttpUtil.of(request.getReader()).toDTO(MovieDTO.class);

        // add categories to movie by Manual
        if (dto.getIdsCategory() != null) {
            Long[] idsCategory = new Long[dto.getIdsCategory().length];
            for (int i = 0; i < dto.getIdsCategory().length; i++) {
                idsCategory[i] = Long.parseLong(dto.getIdsCategory()[i]);
            }
            Set<CategoryDTO> categories = categoryService.findByIds(idsCategory);
            dto.setCategories(categories);
            dto.setLikeCount(0);
            dto.setViewCount(0);
        }
        dto = movieService.save(dto);
        mapper.writeValue(response.getOutputStream(), dto);
    }

    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper(); // ObjectMapper dùng để đọc outputstream dto qua json
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        String uri = request.getRequestURI();
        MovieDTO dto = HttpUtil.of(request.getReader()).toDTO(MovieDTO.class);
        MovieDTO old = movieService.findOne(dto.getId());

        if (dto.getIdsCategory() != null) {
            Long[] idsCategory = new Long[dto.getIdsCategory().length];
            for (int i = 0; i < dto.getIdsCategory().length; i++) {
                idsCategory[i] = Long.parseLong(dto.getIdsCategory()[i]);
            }
            Set<CategoryDTO> categories = categoryService.findByIds(idsCategory);
            dto.setCategories(categories);
            dto.setLikeCount(old.getLikeCount());
            dto.setViewCount(old.getViewCount());
        }

        if (uri.contains("like")) {
            dto.setCategories(old.getCategories());
            dto.setDescription(old.getDescription());
            dto.setViewCount(old.getViewCount());
            dto.setPoster(old.getPoster());
            dto.setDate(old.getDate());
            dto.setTitle(old.getTitle());
        }

        if (uri.contains("view")) {
            dto.setCategories(old.getCategories());
            dto.setDescription(old.getDescription());
            dto.setLikeCount(old.getLikeCount());
            dto.setPoster(old.getPoster());
            dto.setDate(old.getDate());
            dto.setTitle(old.getTitle());
        }
        dto = movieService.update(dto);
        mapper.writeValue(response.getOutputStream(), dto);
    }

    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper(); // ObjectMapper dùng để đọc outputstream dto qua json
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        MovieDTO dto = HttpUtil.of(request.getReader()).toDTO(MovieDTO.class);
        movieService.delete(dto.getIds());
        mapper.writeValue(response.getOutputStream(), "{}");
    }
}
