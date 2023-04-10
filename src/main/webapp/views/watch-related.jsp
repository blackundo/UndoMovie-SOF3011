<%--
  Created by IntelliJ IDEA.
  User: blackundo
  Date: 26/03/2023
  Time: 10:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="related-video-wrapper">
  <div class="ra-thumb">
    <a href="#">
      <img src="https://i.ytimg.com/vi/a_MPYVrx5-w/maxresdefault.jpg"
           alt="${param.title-related}">
      <div class="play_hover_btn" onmouseenter="show_gif(this,'')"
           onmouseleave="hide_gif(this)">
        <svg xmlns="http://www.w3.org/2000/svg" class="feather" width="24" height="24"
             viewBox="0 0 24 24" fill="rgba(255, 255, 255, 0.8)">
          <path d="M8,5.14V19.14L19,12.14L8,5.14Z"></path>
        </svg>
      </div>
      <div class="video-duration">00:07:01</div>
    </a>
  </div>
  <div class="ra-title">
    <div class="video-title"><a href="#"> Video hướng dẫn làm lab 1</a></div>
    <div class="video-publisher">Black Undo</div>
    <div class="video-publisher">12 Views <span class="middot">·</span> 26/11/2003</div>
    <div class="video-category"><a
            href="#">People &amp;
      Blogs</a></div>
  </div>
</div>