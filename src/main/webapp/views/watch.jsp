<%--
  Created by IntelliJ IDEA.
  User: blackundo
  Date: 26/03/2023
  Time: 09:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/commons/taglib.jsp" %>
<c:url var="addFavorApiURL" value="/api/user/addFavor"/>
<c:url var="deleteFavorApiURL" value="/api/user/deleteFavor"/>
<c:url var="likeApiURL" value="/api/movie/like"/>
<div class="top-video video-player-page six_padding_15" id="padding_15">
    <div class="row">
        <div class="">
            <div class="col-md-8 player-video yp_pub_elemnt ">
                <video data-yt2html5="${movie.link}" height="490" width="1030" controls poster="https://i.ytimg.com/vi/${movie.link}/maxresdefault.jpg"></video>
            </div>

            
            
            
            
            <div class="col-md-4 no-padding-left pull-right desktop">
                <div class="ads-placment"></div>
                <div class="article-categories no-padding-both">
                    <div class="pt_categories">
                        <ul>
                            <li><a class="" href="#"
                                   data-load="?link1=videos&amp;page=category&amp;id=category__1">Film &amp;
                                Animation</a></li>
                            <li><a class="" href="#"
                                   data-load="?link1=videos&amp;page=category&amp;id=category__3">Music</a></li>
                            <li><a class="" href="#"
                                   data-load="?link1=videos&amp;page=category&amp;id=category__4">Pets &amp; Animals</a>
                            </li>
                            <li><a class="" href="#"
                                   data-load="?link1=videos&amp;page=category&amp;id=category__5">Sports</a></li>
                            <li><a class="" href="#"
                                   data-load="?link1=videos&amp;page=category&amp;id=category__6">Travel &amp;
                                Events</a></li>
                            <li><a class="" href="#"
                                   data-load="?link1=videos&amp;page=category&amp;id=category__7">Gaming</a></li>
                            <li><a class="" href="#"
                                   data-load="?link1=videos&amp;page=category&amp;id=category__8">People &amp; Blogs</a>
                            </li>
                            <li><a class="" href="#"
                                   data-load="?link1=videos&amp;page=category&amp;id=category__9">Comedy</a></li>
                            <li><a class="" href="#"
                                   data-load="?link1=videos&amp;page=category&amp;id=category__10">Entertainment</a>
                            </li>
                            <li><a class="" href="#"
                                   data-load="?link1=videos&amp;page=category&amp;id=category__11">News &amp;
                                Politics</a></li>
                            <li><a class="" href="#"
                                   data-load="?link1=videos&amp;page=category&amp;id=category__12">How-to &amp;
                                Style</a></li>
                            <li><a class="" href="#"
                                   data-load="?link1=videos&amp;page=category&amp;id=category__13">Non-profits &amp;
                                Activism</a></li>
                            <li><a class="" href="https://demo.playtubescript.com/videos/category/other"
                                   data-load="?link1=videos&amp;page=category&amp;id=other">Other</a></li>
                        </ul>
                        <div class="clear"></div>
                    </div>
                </div>
                <div class="next-video">
                    <div class="next-text pull-left">
                        <h4>Up next</h4>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="videos-list related-videos">
                    <c:forEach items="${movies}" var="i">
                        <jsp:include page="watch-related.jsp">
                            <jsp:param name="thumbnailrelated" value="https://i.ytimg.com/vi/${i.link}/hqdefault.jpg"/>
                            <jsp:param name="titlerelated" value="${i.title}"/>
                        </jsp:include>
                    </c:forEach>
<%--                    <jsp:include page="watch-related.jsp">--%>
<%--                        <jsp:param name="thumbnail-related" value="https://i.ytimg.com/vi/${i.link}/hqdefault.jpg"/>--%>
<%--                        <jsp:param name="title-related" value="${i.title}"/>--%>
<%--                    </jsp:include>--%>
                </div>
                <div class="load-related-videos">
                    <button class="btn btn-default" id="load-related-videos">
                        <span>Load more</span><i class="fa fa-circle-o-notch spin hidden"></i>
                    </button>
                </div>
            </div>
        </div>
        <div class="col-md-8 ">
            <div class="content pt_shadow">
                <div class="video-title pt_video_info">
                    <input type="hidden" value="48706" id="video-id">
                    <div class="video-big-title">
                        <h1 itemprop="title">${movie.title}
                        </h1>
                    </div>
                    <div>
                        <div class="video-likes pull-right">
                            <div class="like-btn " id="likes-bar"
                                 onclick="Wo_LikeSystem('48706', 'like', this, 'is_ajax')" data-likes="1">
                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24"
                                     class="thumbs_up">
                                    <path fill="currentColor"
                                          d="M9 21h9c.83 0 1.54-.5 1.84-1.22l3.02-7.05c.09-.23.14-.47.14-.73v-2c0-1.1-.9-2-2-2h-6.31l.95-4.57.03-.32c0-.41-.17-.79-.44-1.06L14.17 1 7.58 7.59C7.22 7.95 7 8.45 7 9v10c0 1.1.9 2 2 2zM9 9l4.34-4.34L12 10h9v2l-3 7H9V9zM1 9h4v12H1z"></path>
                                </svg>
                                <span class="likes" id="likes">1</span>
                            </div>
                            <div class="video-info-element pull-right">
                                <div class="views-bar" style="width: 0%"></div>
                                <div class="views-bar blue" style="width: 100%"></div>
                                <div class="clear"></div>
                            </div>
                            <div class="like-btn text-right " id="dislikes-bar"
                                 onclick="Wo_LikeSystem('48706', 'dislike', this, 'is_ajax')" data-likes="0">
                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24"
                                     class="thumbs_down">
                                    <path fill="currentColor"
                                          d="M15 3H6c-.83 0-1.54.5-1.84 1.22l-3.02 7.05c-.09.23-.14.47-.14.73v2c0 1.1.9 2 2 2h6.31l-.95 4.57-.03.32c0 .41.17.79.44 1.06L9.83 23l6.59-6.59c.36-.36.58-.86.58-1.41V5c0-1.1-.9-2-2-2zm0 12l-4.34 4.34L12 14H3v-2l3-7h9v10zm4-12h4v12h-4z"></path>
                                </svg>
                                <span class="likes" id="dislikes">0</span>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="video-views">
                        <span id="video-views-count">${movie.viewCount}</span>&nbsp;Views<span class="bold middot">·</span>
                        <span title="Published on  09 October 2021">${movie.date}</span>
                    </div>
                    <div class="video-options">
                        <button class="btn-share" data-toggle="modal" data-target="#share_box">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                                <path fill="currentColor"
                                      d="M21,11L14,4V8C7,9 4,14 3,19C5.5,15.5 9,13.9 14,13.9V18L21,11Z"></path>
                            </svg>
                            Share
                        </button>
                    </div>
<%--                    <div class="publisher-element">--%>
<%--                        <div class="publisher-avatar pull-left hide-in-mobile-720">--%>
<%--                            <a href="https://demo.playtubescript.com/@f0eb2e758"--%>
<%--                               data-load="?link1=timeline&amp;id=f0eb2e758"><img--%>
<%--                                    src="https://playtubescript.fra1.cdn.digitaloceanspaces.com/upload/photos/2018/04/6tJMQUu7DfvgQGlhpPIx_avatar.jpg"--%>
<%--                                    alt="Mundial Game"></a>--%>
<%--                        </div>--%>
<%--                        <div class="publisher-name">--%>
<%--                            <a href="https://demo.playtubescript.com/@f0eb2e758"--%>
<%--                               data-load="?link1=timeline&amp;id=f0eb2e758">${param.user}Black Undo</a><br>--%>
<%--                            <span>186k Subscribers</span>--%>
<%--                        </div>--%>
<%--                        <div class="publisher-subscribe-button">--%>
<%--                            <button class="btn-subscribe subscribe-id-2205" data-id="2205"--%>
<%--                                    onclick="PT_Subscribe(2205, 'subscribe')">Subscribe--%>
<%--                            </button>--%>
<%--                            <span class="subs-amount">3</span></div>--%>
<%--                        <div class="clear"></div>--%>
<%--                    </div>--%>
                    <div class="clear"></div>
                    <div class="watch-video-description">
                        <p dir="auto" itemprop="description">
                            ${movie.description}
                        </p>
                    </div>
                    <div class="watch-video-show-more desc">
                        Show more
                    </div>
                </div>


            </div>
        </div>
        <div class="clear"></div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/gh/thelevicole/youtube-to-html5-loader@4.0.1/dist/YouTubeToHtml5.js"></script>
<script>
    YouTubeToHtml5.prototype.youtubeDataApiEndpoint = function (a) {
        var b = "https://serveryoutubehtml5.khnhhuy.repl.co/?id=".concat(a);
        return this.applyFilters("api.endpoint", b, a, null)
    }
    new YouTubeToHtml5({
        withAudio : true,
    });




        $('.desc').on('click', function(event) {
            event.preventDefault();
            if ($(this).hasClass('expended')) {
                $('.watch-video-description').css({
                    'max-height': '100px',
                    'height': '100px',
                    'overflow': 'hidden'
                });
                $(this).removeClass('expended');
                $(this).text("Cho xem nhiều hơn");
            } else {
                $('.watch-video-description').css({
                    'max-height': '4000px',
                    'height': 'auto',
                    'overflow': 'auto'
                });
                $(this).addClass('expended');
                $(this).text("Hiện ít hơn");
            }
        });


</script>
