<%--
  Created by IntelliJ IDEA.
  User: blackundo
  Date: 26/03/2023
  Time: 08:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="col-md-3 col-sm-4 no-padding-right-at-all no-padding-mobile-left">
    <div class="video-latest-list video-wrapper" data-id="<?php echo($video->id) ?>"
         data-views="<?php echo($video->views) ?>">
        <div class="video-thumb">
            <a href="/movie?id=${param.id}">
                <img
                        src="${param.thumbnail}"
                        alt="<?php echo($video->title) ?>">
                <div class="play_hover_btn">
                    <svg xmlns="http://www.w3.org/2000/svg" class="feather" width="24" height="24" viewBox="0 0 24 24"
                         fill="rgba(255, 255, 255, 0.8)">
                        <path d="M8,5.14V19.14L19,12.14L8,5.14Z"></path>
                    </svg>
                </div>
            </a>
            <div class="video-duration">
                ${param.duration}
            </div>
        </div>
        <div class="video-title">
            <a href="#" data-load="?link1=watch&id=<?php echo(PT_Slug($video->title, $video->video_id)) ?>">
                <h4 title="${param.title}">
                    ${param.title}
                </h4>
            </a>
        </div>
        <div class="video-info">
            <div>
                <a href="https://youtube.com/BlackUndoTVN">
                    ${param.user}
                </a><br/>
                <span>
                      ${param.view}
                    </span> <span class="bold">·</span> <span>
                      ${param.date}
                    </span>
            </div>
        </div>
    </div>
</div>