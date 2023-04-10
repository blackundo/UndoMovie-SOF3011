package edu.poly.asmjava4final.filter;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter(filterName = "AuthorizationFilter")
public class AuthorizationFilter implements Filter {
    private ServletContext context;

    public void init(FilterConfig config) throws ServletException {
            this.context = config.getServletContext();
    }

    public void destroy() {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
//        HttpServletRequest request = (HttpServletRequest) servletRequest;
//        HttpServletResponse response = (HttpServletResponse) servletRespone;
//        String url = request.getRequestURI();
//        if (url.startsWith("/admin")) {
//            UserDTO user = (UserDTO) SessionUtil.getInstance().getValue(request, "USER");
//            if (user != null && user.isStatus()) {
//                if (user.isRole()) {
//                    filterChain.doFilter(servletRequest, servletRespone);
//                } else {
//                    response.sendRedirect(
//                            request.getContextPath() + "/login?message=" + "Not permission" + "&alert=warning");
//                }
//            } else {
//                response.sendRedirect(request.getContextPath() + "/login?&message=" + "Not login" + "&alert=warning");
//            }
////		} else if (url.startsWith("/login") || url.startsWith("/register")) {
////			UserDTO user = (UserDTO) SessionUtil.getInstance().getValue(request, "USER");
////			if (user != null) {
////				response.sendRedirect(request.getContextPath() + "/home");
////			}
//        } else {
//            chain.doFilter(servletRequest, servletRespone);
//        }
    }
}
