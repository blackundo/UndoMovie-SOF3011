package edu.poly.asmjava4final.controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(urlPatterns = {"/watch"})
public class WatchServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("data");
        String api = "https://www.googleapis.com/youtube/v3/videos?id="+id+"&part=id,%20snippet,%20contentDetails,%20player,%20recordingDetails,%20statistics,%20status,%20topicDetails&key=AIzaSyDNHm57WOT6jLi21UdMji5Coth8D5NlE2w";
        String title = "";
        String desc = "";
        String view = "";
        String like = "";
        String uploadBy = "";
        request.setAttribute("id",id);
        request.getRequestDispatcher("/views/pwatch.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
