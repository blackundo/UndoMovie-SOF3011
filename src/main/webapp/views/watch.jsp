<%--
  Created by IntelliJ IDEA.
  User: blackundo
  Date: 26/03/2023
  Time: 09:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<div class="top-video video-player-page six_padding_15" id="padding_15">
    <div class="row">
        <div class="">
            <div class="col-md-8 player-video yp_pub_elemnt ">
                <div class="video-player pt_video_player " id="post_live_video_48706">
                    <div class="watermark" style="display: block;">
                        <a href="#"><img
                                src="https://yt3.googleusercontent.com/In6To-4l5shKrUF_ybEe8EwOERQgU1oTRpvygdn_JQTsa3YreTyBS1NtbYYEK-TEXoKKVFc=s176-c-k-c0x00ffffff-no-rj" alt="watermark logo" height="40"></a>
                    </div>
                    <span class="mejs__offscreen">Video Player</span>
                    <div id="mep_0" class="mejs__container mejs__video" tabindex="0" role="application"
                         aria-label="Video Player" style="width: 1189.98px; height: 671.636px; min-width: 269px;">
                        <div class="mejs__inner">
                            <div class="mejs__mediaelement">
                                <mediaelementwrapper id="my-video_48706">
                                    <div id="my-video_48706-iframe-overlay" class="mejs__iframe-overlay"></div>
                                    <iframe id="my-video_48706_youtube_iframe" frameborder="0" allowfullscreen="1"
                                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                                            title="Juntos Formamos Uno | Episodio 4 | Jóvenes de Cristo"
                                            src="https://www.youtube.com/embed/${id}?controls=0&amp;rel=0&amp;disablekb=1&amp;showinfo=0&amp;modestbranding=0&amp;html5=1&amp;iv_load_policy=3&amp;autoplay=1&amp;end=0&amp;loop=0&amp;playsinline=1&amp;start=0&amp;nocookie=false&amp;enablejsapi=1&amp;origin=https%3A%2F%2Fdemo.playtubescript.com&amp;widgetid=1"
                                            width="1189.98" height="669.36375"
                                            style="width: 100%; height: 100%;"></iframe>
                                    <video id="my-video_48706_from_mejs"
                                           style="width: 100%; height: 100%; position: relative; display: none;"
                                           poster="https://i.ytimg.com/vi/${id}/maxresdefault.jpg" autoplay=""
                                           playsinline="" preload="none"
                                           src="https://www.youtube.com/watch?v=${id}">
                                        <source src="https://www.youtube.com/watch?v=${id}" type="video/youtube"
                                                data-quality="HD" title="HD" label="HD" res="360">
                                        Your browser does not support HTML5 video.
                                        <!-- //src="http://www.youtube.com/watch?v=nOEw9iiopwI" type="video/youtube" -->
                                    </video>
                                </mediaelementwrapper>
                            </div>

                            <div class="mejs__layers">
                                <div class="mejs__poster mejs__layer"
                                     style="background-image: url(&quot;https://i.ytimg.com/vi/${id}/maxresdefault.jpg&quot;); width: 100%; height: 100%; display: none;">
                                    <img class="mejs__poster-img" width="0" height="0"
                                         src="https://i.ytimg.com/vi/${id}/maxresdefault.jpg"></div>
                                <div class="mejs__overlay mejs__layer"
                                     style="width: 100%; height: 100%; display: none;">
                                    <div class="mejs__overlay-loading"><span
                                            class="mejs__overlay-loading-bg-img"></span></div>
                                </div>
                                <div class="mejs__overlay mejs__layer"
                                     style="display: none; width: 100%; height: 100%;">
                                    <div class="mejs__overlay-error"></div>
                                </div>
                                <div class="mejs__overlay mejs__layer mejs__overlay-play"
                                     style="width: 100%; height: 100%;">
                                    <div class="mejs__overlay-button" role="button" tabindex="0" aria-label="Play"
                                         aria-pressed="false"></div>
                                </div>
                            </div>
                            <div class="mejs__controls" style="opacity: 1;">
                                <div class="mejs__button mejs__playpause-button mejs__play">
                                    <button type="button" aria-controls="mep_0" title="Play" aria-label="Play"
                                            tabindex="0"></button>
                                </div>
                                <div class="mejs__time mejs__currenttime-container" role="timer" aria-live="off"><span
                                        class="mejs__currenttime">00:04</span></div>
                                <div class="mejs__time-rail"><span class="mejs__time-total mejs__time-slider"
                                                                   role="slider" tabindex="0"><span
                                        class="mejs__time-buffering" style="display: none;"></span><span
                                        class="mejs__time-loaded"></span><span class="mejs__time-current"
                                                                               style="transform: scaleX(0.00325385);"></span><span
                                        class="mejs__time-hovered no-hover" pos="868"
                                        style="left: 3px; transform: scaleX(0.938194);"></span><span
                                        class="mejs__time-handle" style="transform: translateX(3px);"><span
                                        class="mejs__time-handle-content"></span></span><span class="mejs__time-float"
                                                                                              style="display: none; left: 868px;"><span
                                        class="mejs__time-float-current">19:22</span><span
                                        class="mejs__time-float-corner"></span></span></span></div>
                                <div class="mejs__time mejs__duration-container"><span
                                        class="mejs__duration">20:35</span></div>
                                <div class="mejs__button mejs__jump-forward-button">
                                    <button type="button" aria-controls="mep_0" title="Jump forward 10 seconds"
                                            aria-label="Jump forward 10 seconds" tabindex="0">10
                                    </button>
                                </div>
                                <div class="mejs__button mejs__volume-button mejs__mute">
                                    <button type="button" aria-controls="mep_0" title="Mute" aria-label="Mute"
                                            tabindex="0"></button>
                                    <a href="javascript:void(0);" class="mejs__volume-slider" aria-label="Volume Slider"
                                       aria-valuemin="0" aria-valuemax="100" role="slider" aria-orientation="vertical"
                                       aria-valuenow="80" aria-valuetext="80%"><span class="mejs__offscreen">Use Up/Down Arrow keys to increase or decrease volume.</span>
                                        <div class="mejs__volume-total">
                                            <div class="mejs__volume-current" style="bottom: 0px; height: 80%;"></div>
                                            <div class="mejs__volume-handle"
                                                 style="bottom: 80%; margin-bottom: -6px;"></div>
                                        </div>
                                    </a></div>
                                <div class="mejs__button mejs__fullscreen-button">
                                    <button type="button" aria-controls="mep_0" title="Fullscreen"
                                            aria-label="Fullscreen" tabindex="0"></button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="icons hidde">
                  <span class="expend-player">
                     <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                        <path fill="currentColor"
                              d="M10,21V19H6.41L10.91,14.5L9.5,13.09L5,17.59V14H3V21H10M14.5,10.91L19,6.41V10H21V3H14V5H17.59L13.09,9.5L14.5,10.91Z"></path>
                     </svg>
                  </span>
                    </div>

                </div>
                <div class="clear"></div>
                <div class="clear"></div>
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
                    <div class="pt_mn_wtch_switch pull-right">
                        <input id="autoplay" type="checkbox" class="tgl autoplay-video">
                        <label class="tgl-btn" for="autoplay">Autoplay</label>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="videos-list related-videos">
                    <jsp:include page="watch-related.jsp">
                        <jsp:param name="thumbnail-related" value="https://i.ytimg.com/vi/a_MPYVrx5-w/maxresdefault.jpg"/>
                        <jsp:param name="title-related" value="Video hướng dẫn nấu"/>
                    </jsp:include>
                    <jsp:include page="watch-related.jsp">
                        <jsp:param name="thumbnail-related" value="https://i.ytimg.com/vi/a_MPYVrx5-w/maxresdefault.jpg"/>
                        <jsp:param name="title-related" value="Video hướng dẫn nấu"/>
                    </jsp:include>
                    <jsp:include page="watch-related.jsp">
                        <jsp:param name="thumbnail-related" value="https://i.ytimg.com/vi/a_MPYVrx5-w/maxresdefault.jpg"/>
                        <jsp:param name="title-related" value="Video hướng dẫn nấu"/>
                    </jsp:include>
                    <jsp:include page="watch-related.jsp">
                        <jsp:param name="thumbnail-related" value="https://i.ytimg.com/vi/a_MPYVrx5-w/maxresdefault.jpg"/>
                        <jsp:param name="title-related" value="Video hướng dẫn nấu"/>
                    </jsp:include>
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
                        <h1 itemprop="title">${param.title}Cách Mod Blox Fuits 18 Mới Nhất
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
                        <span id="video-views-count">${param.view}123,444</span>&nbsp;Views<span class="bold middot">·</span>
                        <span title="Published on  09 October 2021">${param.date}26/11/2023</span>
                    </div>
                    <div class="video-options">
                        <button class="btn-share" data-toggle="modal" data-target="#share_box">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                                <path fill="currentColor"
                                      d="M21,11L14,4V8C7,9 4,14 3,19C5.5,15.5 9,13.9 14,13.9V18L21,11Z"></path>
                            </svg>
                            Share
                        </button>
                        <button class="btn-share" data-toggle="modal" data-target="#embed_box">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                                <path fill="currentColor"
                                      d="M14.6,16.6L19.2,12L14.6,7.4L16,6L22,12L16,18L14.6,16.6M9.4,16.6L4.8,12L9.4,7.4L8,6L2,12L8,18L9.4,16.6Z"></path>
                            </svg>
                            Embed
                        </button>
                    </div>
                    <div class="publisher-element">
                        <div class="publisher-avatar pull-left hide-in-mobile-720">
                            <a href="https://demo.playtubescript.com/@f0eb2e758"
                               data-load="?link1=timeline&amp;id=f0eb2e758"><img
                                    src="https://playtubescript.fra1.cdn.digitaloceanspaces.com/upload/photos/2018/04/6tJMQUu7DfvgQGlhpPIx_avatar.jpg"
                                    alt="Mundial Game"></a>
                        </div>
                        <div class="publisher-name">
                            <a href="https://demo.playtubescript.com/@f0eb2e758"
                               data-load="?link1=timeline&amp;id=f0eb2e758">${param.user}Black Undo</a><br>
                            <span>186k Subscribers</span>
                        </div>
                        <div class="publisher-subscribe-button">
                            <button class="btn-subscribe subscribe-id-2205" data-id="2205"
                                    onclick="PT_Subscribe(2205, 'subscribe')">Subscribe
                            </button>
                            <span class="subs-amount">3</span></div>
                        <div class="clear"></div>
                    </div>
                    <div class="clear"></div>
                    <div class="video-published">
                        <svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" viewBox="0 0 24 24">
                            <path fill="#666"
                                  d="M5.5,7A1.5,1.5 0 0,1 4,5.5A1.5,1.5 0 0,1 5.5,4A1.5,1.5 0 0,1 7,5.5A1.5,1.5 0 0,1 5.5,7M21.41,11.58L12.41,2.58C12.05,2.22 11.55,2 11,2H4C2.89,2 2,2.89 2,4V11C2,11.55 2.22,12.05 2.59,12.41L11.58,21.41C11.95,21.77 12.45,22 13,22C13.55,22 14.05,21.77 14.41,21.41L21.41,14.41C21.78,14.05 22,13.55 22,13C22,12.44 21.77,11.94 21.41,11.58Z"></path>
                        </svg>
                        In
                        <a href="#"
                           data-load="?link1=videos&amp;page=category&amp;id=category__8">People &amp; Blogs</a></div>
                    <div class="watch-video-description">
                        <p dir="auto" itemprop="description">
                            ${param.desc}
                        </p>
                    </div>
                    <div class="watch-video-show-more desc">
                        Show more
                    </div>
                </div>
                <div class="ads-placment"></div>
                <hr>
                <div class="comments-content pt_video_comments">
                    <div class="comments-header">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="21" height="21">
                            <path fill="none" d="M0 0h24v24H0z"></path>
                            <path fill="currentColor"
                                  d="M16.8 19L14 22.5 11.2 19H6a1 1 0 0 1-1-1V7.103a1 1 0 0 1 1-1h16a1 1 0 0 1 1 1V18a1 1 0 0 1-1 1h-5.2zM2 2h17v2H3v11H1V3a1 1 0 0 1 1-1z"></path>
                        </svg>&nbsp;0 Comments
                        <span class="dropdown sort-comments-dropdown pull-right">
				<span class="dropdown-toggle pointer" type="button" data-toggle="dropdown">
					<i class="material-icons">sort</i>&nbsp;&nbsp;&nbsp;Sort By
				</span>
				<ul class="dropdown-menu">

					<li class="sort-comments" id="1">
						<a href="javascript:void(0);">Top Comments</a>
					</li>
					<li class="sort-comments" id="2">
						<a href="javascript:void(0);">Latest comments</a>
					</li>
				</ul>
            </span>
                    </div>
                    <div class="w100 pt_blogcomm_combo yp_video_comment">
                        <textarea name="comment" rows="1" class="form-control jTextarea" id="comment-textarea"
                                  placeholder="Write your comment.." style="height: 40px;"></textarea>
                        <button class="btn" onclick="PT_PostComment(this)">Publish&nbsp;&nbsp;&nbsp;<svg
                                xmlns="http://www.w3.org/2000/svg" class="btn btn-main" width="24" height="24"
                                viewBox="0 0 24 24">
                            <path fill="currentColor"
                                  d="M4,11V13H16L10.5,18.5L11.92,19.92L19.84,12L11.92,4.08L10.5,5.5L16,11H4Z"></path>
                        </svg>
                        </button>
                    </div>
                    <br><br>
                    <div class="comment-button">
                        <div class="user-comments" id="video-pinned-comments">
                            <div id="pinned-comment">

                            </div>
                        </div>
                    </div>
                    <div class="comments-loading hidden">
                        <i class="fa fa-circle-o-notch spin"></i>
                    </div>
                    <div class="user-comments" id="video-user-comments">

                    </div>

                </div>
                <input type="hidden" id="video-id" value="48706">

                <script>
                    jQuery(document).ready(function ($) {

                        var sort_comments_by = 2;

                        $("li.sort-comments").click(function (event) {
                            sort_comments_by = $(this).attr('id');
                            var video_id = $('#video-id').val();
                            var data_obj = {
                                video_id: video_id,
                                sort_by: sort_comments_by
                            };

                            $('#video-user-comments').empty();
                            $(".comments-loading").removeClass('hidden');

                            $.post('https://demo.playtubescript.com/aj/sort-comments', data_obj, function (data, textStatus, xhr) {
                                if (data.status == 200) {
                                    PT_Delay(function () {
                                        $(".comments-loading").addClass('hidden');
                                        $('#video-user-comments').html(data.comments);
                                    }, 200);
                                } else {
                                    PT_Delay(function () {
                                        $(".comments-loading").addClass('hidden');
                                    }, 200);
                                }
                            });

                        });

                        $.fn.scrollTo = function (speed) {
                            if (typeof (speed) === 'undefined')
                                speed = 500;

                            $('html, body').animate({
                                scrollTop: ($(this).offset().top - 100)
                            }, speed);

                            return $(this);
                        };


                        $('#comment-textarea').on('click', function (event) {
                            event.preventDefault();
                            var logged = $('#main-container').attr('data-logged');
                            if (!logged) {
                                window.location.href = "https://demo.playtubescript.com/login?to=https://demo.playtubescript.com/watch/TUhBeZFpd9EhoIh";
                                return false;
                            }
                            $(this).css('border', '1px solid #888');
                        });

                        $('.comments-load').on('click', function (event) {
                            event.preventDefault();
                            var last_id = $('.main-comment:last').attr('data-id');
                            var video_id = $('#video-id').val();
                            var data_obj = {
                                last_id: last_id,
                                video_id: video_id,
                                sort_by: sort_comments_by
                            };

                            if (sort_comments_by == 1) {
                                var comment_ids = [];
                                $('.main-comment').each(function (index, el) {
                                    comment_ids.push($(el).attr('data-id'));
                                });

                                data_obj['comments'] = comment_ids.join()
                            }

                            $.post('https://demo.playtubescript.com/aj/load-more-comments', data_obj, function (data, textStatus, xhr) {
                                if (data.status == 200) {
                                    $('#video-user-comments').append(data.comments);
                                } else {
                                    $('.comments-load').text(data.message);
                                }
                            });
                        });
                    });

                    function PT_PostComment(button) {
                        var text = $('#comment-textarea').val();
                        if (!text) {
                            return false;
                        }
                        var video_id = $('#video-id').val();
                        if (!video_id) {
                            return false;
                        }
                        if ($('#live_post_comments_' + video_id + ' .live_comments').length >= 4) {
                            $('#live_post_comments_' + video_id + ' .live_comments').first().remove();
                        }
                        $('#live_post_comments_' + video_id).append('<div class="main-comment live_comments" live_comment_id=""><div class="main-comment-data-sp"><div class="user-avatar pull-left"><img src="{{ME avatar}}" alt="{{ME name}}"></div><div class="user-name"><a href="{{ME url}}" data-load="?link1=timeline&id={{ME username}}">{{ME name}}</a></div><div class="user-comment"><p class="comment-text">' + text + '</p></div><div class="clear"></div></div><div class="clear"></div></div>');
                        $(button).attr('disabled', true);
                        $.post('https://demo.playtubescript.com/aj/add-comment', {
                            video_id: video_id,
                            text: text
                        }, function (data, textStatus, xhr) {
                            if (data.status == 200) {
                                if ($('.no-comments-found').length > 0) {
                                    $('.no-comments-found').remove();
                                }
                                $('#comment-textarea').val('').css('height', '49px');
                                ;
                                $('#video-user-comments').prepend(data.comment);
                            } else {
                                $('#live_post_comments_' + video_id).find("[live_comment_id='']").remove();
                            }
                            $(button).attr('disabled', false);
                        });
                    }

                    function PT_DeleteComment(id) {
                        if (!id) {
                            return false;
                        }
                        if (!confirm('Are you sure you want to delete your comment?')) {
                            return false;
                        }
                        $('#comment-' + id).slideUp('fast');
                        $.post('https://demo.playtubescript.com/aj/delete-comment', {id: id});
                    }

                    function PT_PinComment(id, pin) {
                        if (!id) {
                            return false;
                        }
                        let pinned_comments = $('#pinned-comment');

                        if (pin) {
                            $("#comment-" + id).slideUp(200, function () {
                                Snackbar.show({text: 'Comment pinned to top'});
                            })
                        } else {
                            pinned_comments.empty();
                            Snackbar.show({text: 'Comment unpinned'});
                        }

                        $.post('https://demo.playtubescript.com/aj/pin-comment', {id: id}, function (data) {
                            if (data.status == 200) {

                                $("#comment-" + id).slideUp(100, function () {
                                    $(this).remove();
                                    pinned_comments.scrollTo();
                                });

                                pinned_comments.html(data.html);
                            } else if (data.status == 304) {
                                $("#video-user-comments").append(data.html);
                            }
                        });
                    }
                </script>
            </div>
        </div>
        <div class="col-md-4 no-padding-left pull-right mobile">
            <div class="content">
                <div class="next-video">
                    <div class="next-text pull-left">
                        <h4>Up next</h4>
                    </div>
                    <div class="pt_mn_wtch_switch pull-right">
                        <input id="autoplay-2" type="checkbox" class="tgl autoplay-video">
                        <label class="tgl-btn" for="autoplay-2">Autoplay</label>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="videos-list" id="next-video">
                    <div class="related-video-wrapper" data-sidebar-video="61235">
                        <div class="ra-thumb">
                            <a href="https://demo.playtubescript.com/watch/DP2cDR5BqCcbMlF"
                               data-load="?link1=watch&amp;id=DP2cDR5BqCcbMlF">
                                <img src="https://i.ytimg.com/vi/8j0d0Q9v6JY/maxresdefault.jpg"
                                     alt="⁣101 - Cantemo,juntos,louvores a Deus.  (@tokaiteclas )">
                                <div class="play_hover_btn" onmouseenter="show_gif(this,'')"
                                     onmouseleave="hide_gif(this)">
                                    <svg xmlns="http://www.w3.org/2000/svg" class="feather" width="24" height="24"
                                         viewBox="0 0 24 24" fill="rgba(255, 255, 255, 0.8)">
                                        <path d="M8,5.14V19.14L19,12.14L8,5.14Z"></path>
                                    </svg>
                                </div>
                                <div class="video-duration">00:02:20</div>
                            </a>
                        </div>
                        <div class="ra-title">
                            <div class="video-title"><a href="https://demo.playtubescript.com/watch/DP2cDR5BqCcbMlF"
                                                        data-load="?link1=watch&amp;id=DP2cDR5BqCcbMlF"> ⁣101 -
                                Cantemo,juntos,louvores a Deus. (@tokaiteclas )</a></div>
                            <div class="video-publisher">seila</div>
                            <div class="video-publisher">1 Views <span class="middot">·</span> 11 February 2023</div>
                            <div class="video-category"><a href="https://demo.playtubescript.com/videos/category/other">Other</a>
                            </div>
                        </div>
                    </div>
                </div>
                <br>
                <div class="related-header">
                </div>
                <div class="videos-list related-videos">
                    <div class="related-video-wrapper" data-sidebar-video="57136">
                        <div class="ra-thumb">
                            <a href="https://demo.playtubescript.com/watch/74tex7rRDRROg5x"
                               data-load="?link1=watch&amp;id=74tex7rRDRROg5x">
                                <img src="https://i.ytimg.com/vi/TuwKelFBbA0/hqdefault.jpg"
                                     alt="⁣¿ES BÍBLICO EL HABLAR EN LENGUAS? ¿Están vigentes los dones hoy en día? | Jóvenes de Cristo">
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
                            <div class="video-title"><a href="https://demo.playtubescript.com/watch/74tex7rRDRROg5x"
                                                        data-load="?link1=watch&amp;id=74tex7rRDRROg5x"> ⁣¿ES BÍBLICO EL
                                HABLAR EN LENGUAS? ¿Están vigentes los dones hoy en día? | Jóvenes de Cristo</a></div>
                            <div class="video-publisher">Mundial Game</div>
                            <div class="video-publisher">12 Views <span class="middot">·</span> 08 September 2022</div>
                            <div class="video-category"><a
                                    href="#">People &amp;
                                Blogs</a></div>
                        </div>
                    </div>
                    <div class="related-video-wrapper" data-sidebar-video="56910">
                        <div class="ra-thumb">
                            <a href="https://demo.playtubescript.com/watch/nNnrpKKFlziEPBE"
                               data-load="?link1=watch&amp;id=nNnrpKKFlziEPBE">
                                <img src="https://i.ytimg.com/vi/oCB-xuL0Gj8/maxresdefault.jpg"
                                     alt="⁣¿Es PECADO Tener SUEÑOS HÚMEDOS? ¿Por qué tengo esos sueños? | Jóvenes de Cristo">
                                <div class="play_hover_btn" onmouseenter="show_gif(this,'')"
                                     onmouseleave="hide_gif(this)">
                                    <svg xmlns="http://www.w3.org/2000/svg" class="feather" width="24" height="24"
                                         viewBox="0 0 24 24" fill="rgba(255, 255, 255, 0.8)">
                                        <path d="M8,5.14V19.14L19,12.14L8,5.14Z"></path>
                                    </svg>
                                </div>
                                <div class="video-duration">00:10:27</div>
                            </a>
                        </div>
                        <div class="ra-title">
                            <div class="video-title"><a href="https://demo.playtubescript.com/watch/nNnrpKKFlziEPBE"
                                                        data-load="?link1=watch&amp;id=nNnrpKKFlziEPBE"> ⁣¿Es PECADO
                                Tener SUEÑOS HÚMEDOS? ¿Por qué tengo esos sueños? | Jóvenes de Cristo</a></div>
                            <div class="video-publisher">Mundial Game</div>
                            <div class="video-publisher">16 Views <span class="middot">·</span> 01 September 2022</div>
                            <div class="video-category"><a
                                    href="#">People &amp;
                                Blogs</a></div>
                        </div>
                    </div>
                    <div class="related-video-wrapper" data-sidebar-video="56704">
                        <div class="ra-thumb">
                            <a href="https://demo.playtubescript.com/watch/YuyZJfQAlQQ5EOh"
                               data-load="?link1=watch&amp;id=YuyZJfQAlQQ5EOh">
                                <img src="https://i.ytimg.com/vi/Zs69szuKKmc/hqdefault.jpg"
                                     alt="⁣¿Cómo Puedo Recibir El Perdón De Dios? *El Verdadero AMOR* | Jóvenes de Cristo">
                                <div class="play_hover_btn" onmouseenter="show_gif(this,'')"
                                     onmouseleave="hide_gif(this)">
                                    <svg xmlns="http://www.w3.org/2000/svg" class="feather" width="24" height="24"
                                         viewBox="0 0 24 24" fill="rgba(255, 255, 255, 0.8)">
                                        <path d="M8,5.14V19.14L19,12.14L8,5.14Z"></path>
                                    </svg>
                                </div>
                                <div class="video-duration">00:14:37</div>
                            </a>
                        </div>
                        <div class="ra-title">
                            <div class="video-title"><a href="https://demo.playtubescript.com/watch/YuyZJfQAlQQ5EOh"
                                                        data-load="?link1=watch&amp;id=YuyZJfQAlQQ5EOh"> ⁣¿Cómo Puedo
                                Recibir El Perdón De Dios? *El Verdadero AMOR* | Jóvenes de Cristo</a></div>
                            <div class="video-publisher">Mundial Game</div>
                            <div class="video-publisher">13 Views <span class="middot">·</span> 25 August 2022</div>
                            <div class="video-category"><a
                                    href="#">People &amp;
                                Blogs</a></div>
                        </div>
                    </div>
                    <div class="related-video-wrapper" data-sidebar-video="56146">
                        <div class="ra-thumb">
                            <a href="https://demo.playtubescript.com/watch/8szOHRxWw5KgAXv"
                               data-load="?link1=watch&amp;id=8szOHRxWw5KgAXv">
                                <img src="https://i.ytimg.com/vi/9wFkiO6CTh8/hqdefault.jpg"
                                     alt="⁣Tipos de Oración que nos enseña la Biblia *Cómo ORAR*| Jóvenes de Cristo">
                                <div class="play_hover_btn" onmouseenter="show_gif(this,'')"
                                     onmouseleave="hide_gif(this)">
                                    <svg xmlns="http://www.w3.org/2000/svg" class="feather" width="24" height="24"
                                         viewBox="0 0 24 24" fill="rgba(255, 255, 255, 0.8)">
                                        <path d="M8,5.14V19.14L19,12.14L8,5.14Z"></path>
                                    </svg>
                                </div>
                                <div class="video-duration">00:14:38</div>
                            </a>
                        </div>
                        <div class="ra-title">
                            <div class="video-title"><a href="https://demo.playtubescript.com/watch/8szOHRxWw5KgAXv"
                                                        data-load="?link1=watch&amp;id=8szOHRxWw5KgAXv"> ⁣Tipos de
                                Oración que nos enseña la Biblia *Cómo ORAR*| Jóvenes de Cristo</a></div>
                            <div class="video-publisher">Mundial Game</div>
                            <div class="video-publisher">4 Views <span class="middot">·</span> 11 August 2022</div>
                            <div class="video-category"><a
                                    href="#">People &amp;
                                Blogs</a></div>
                        </div>
                    </div>
                    <div class="related-video-wrapper" data-sidebar-video="55920">
                        <div class="ra-thumb">
                            <a href="https://demo.playtubescript.com/watch/1dgQC5qRvlazdso"
                               data-load="?link1=watch&amp;id=1dgQC5qRvlazdso">
                                <img src="https://i.ytimg.com/vi/XHITloYqvOI/hqdefault.jpg"
                                     alt="⁣El ÚNICO GRUPO QUE SE VAN EN EL RAPTO ¿Perteneces a este? *Quienes no se van* | Jóvenes de Cristo">
                                <div class="play_hover_btn" onmouseenter="show_gif(this,'')"
                                     onmouseleave="hide_gif(this)">
                                    <svg xmlns="http://www.w3.org/2000/svg" class="feather" width="24" height="24"
                                         viewBox="0 0 24 24" fill="rgba(255, 255, 255, 0.8)">
                                        <path d="M8,5.14V19.14L19,12.14L8,5.14Z"></path>
                                    </svg>
                                </div>
                                <div class="video-duration">00:14:18</div>
                            </a>
                        </div>
                        <div class="ra-title">
                            <div class="video-title"><a href="https://demo.playtubescript.com/watch/1dgQC5qRvlazdso"
                                                        data-load="?link1=watch&amp;id=1dgQC5qRvlazdso"> ⁣El ÚNICO GRUPO
                                QUE SE VAN EN EL RAPTO ¿Perteneces a este? *Quienes no se van* | Jóvenes de Cristo</a>
                            </div>
                            <div class="video-publisher">Mundial Game</div>
                            <div class="video-publisher">10 Views <span class="middot">·</span> 04 August 2022</div>
                            <div class="video-category"><a
                                    href="#">People &amp;
                                Blogs</a></div>
                        </div>
                    </div>
                    <div class="related-video-wrapper" data-sidebar-video="55504">
                        <div class="ra-thumb">
                            <a href="https://demo.playtubescript.com/watch/XCEZ4HkGwLfSYVY"
                               data-load="?link1=watch&amp;id=XCEZ4HkGwLfSYVY">
                                <img src="https://i.ytimg.com/vi/4ypJqWh_OOs/maxresdefault.jpg"
                                     alt="⁣¿Cómo Tomar Decisiones Sabia? DECISIONES QUE CAMBIAN TU DESTINO | Jóvenes de Cristo">
                                <div class="play_hover_btn" onmouseenter="show_gif(this,'')"
                                     onmouseleave="hide_gif(this)">
                                    <svg xmlns="http://www.w3.org/2000/svg" class="feather" width="24" height="24"
                                         viewBox="0 0 24 24" fill="rgba(255, 255, 255, 0.8)">
                                        <path d="M8,5.14V19.14L19,12.14L8,5.14Z"></path>
                                    </svg>
                                </div>
                                <div class="video-duration">00:10:52</div>
                            </a>
                        </div>
                        <div class="ra-title">
                            <div class="video-title"><a href="https://demo.playtubescript.com/watch/XCEZ4HkGwLfSYVY"
                                                        data-load="?link1=watch&amp;id=XCEZ4HkGwLfSYVY"> ⁣¿Cómo Tomar
                                Decisiones Sabia? DECISIONES QUE CAMBIAN TU DESTINO | Jóvenes de Cristo</a></div>
                            <div class="video-publisher">Mundial Game</div>
                            <div class="video-publisher">7 Views <span class="middot">·</span> 21 July 2022</div>
                            <div class="video-category"><a
                                    href="#">People &amp;
                                Blogs</a></div>
                        </div>
                    </div>
                    <div class="related-video-wrapper" data-sidebar-video="55371">
                        <div class="ra-thumb">
                            <a href="https://demo.playtubescript.com/watch/bh9BRWR2JPloxPG"
                               data-load="?link1=watch&amp;id=bh9BRWR2JPloxPG">
                                <img src="https://i.ytimg.com/vi/CkVr1oq2IXg/maxresdefault.jpg"
                                     alt="⁣Formas de AYUNAR en la Biblia y Cómo lo Puedes HACER | Jóvenes de Cristo">
                                <div class="play_hover_btn" onmouseenter="show_gif(this,'')"
                                     onmouseleave="hide_gif(this)">
                                    <svg xmlns="http://www.w3.org/2000/svg" class="feather" width="24" height="24"
                                         viewBox="0 0 24 24" fill="rgba(255, 255, 255, 0.8)">
                                        <path d="M8,5.14V19.14L19,12.14L8,5.14Z"></path>
                                    </svg>
                                </div>
                                <div class="video-duration">00:13:16</div>
                            </a>
                        </div>
                        <div class="ra-title">
                            <div class="video-title"><a href="https://demo.playtubescript.com/watch/bh9BRWR2JPloxPG"
                                                        data-load="?link1=watch&amp;id=bh9BRWR2JPloxPG"> ⁣Formas de
                                AYUNAR en la Biblia y Cómo lo Puedes HACER | Jóvenes de Cristo</a></div>
                            <div class="video-publisher">Mundial Game</div>
                            <div class="video-publisher">5 Views <span class="middot">·</span> 15 July 2022</div>
                            <div class="video-category"><a
                                    href="#">People &amp;
                                Blogs</a></div>
                        </div>
                    </div>
                    <div class="related-video-wrapper" data-sidebar-video="55033">
                        <div class="ra-thumb">
                            <a href="https://demo.playtubescript.com/watch/6O5jxpSrXSwefEU"
                               data-load="?link1=watch&amp;id=6O5jxpSrXSwefEU">
                                <img src="https://i.ytimg.com/vi/gVSmSe5TxEA/hqdefault.jpg"
                                     alt="⁣¿Por qué vino Jesús al mundo? ¿Cuáles son las razones? *MURIÓ POR MÍ* | Jóvenes de Cristo">
                                <div class="play_hover_btn" onmouseenter="show_gif(this,'')"
                                     onmouseleave="hide_gif(this)">
                                    <svg xmlns="http://www.w3.org/2000/svg" class="feather" width="24" height="24"
                                         viewBox="0 0 24 24" fill="rgba(255, 255, 255, 0.8)">
                                        <path d="M8,5.14V19.14L19,12.14L8,5.14Z"></path>
                                    </svg>
                                </div>
                                <div class="video-duration">00:15:12</div>
                            </a>
                        </div>
                        <div class="ra-title">
                            <div class="video-title"><a href="https://demo.playtubescript.com/watch/6O5jxpSrXSwefEU"
                                                        data-load="?link1=watch&amp;id=6O5jxpSrXSwefEU"> ⁣¿Por qué vino
                                Jesús al mundo? ¿Cuáles son las razones? *MURIÓ POR MÍ* | Jóvenes de Cristo</a></div>
                            <div class="video-publisher">Mundial Game</div>
                            <div class="video-publisher">2 Views <span class="middot">·</span> 07 July 2022</div>
                            <div class="video-category"><a
                                    href="#">People &amp;
                                Blogs</a></div>
                        </div>
                    </div>
                    <div class="related-video-wrapper" data-sidebar-video="54792">
                        <div class="ra-thumb">
                            <a href="https://demo.playtubescript.com/watch/uPnug1pNRDJg5XF"
                               data-load="?link1=watch&amp;id=uPnug1pNRDJg5XF">
                                <img src="https://i.ytimg.com/vi/Etcjl1kush4/hqdefault.jpg"
                                     alt="⁣Señales De Los Últimos Tiempos *YA ESTÁN AQUÍ* | Jóvenes de Cristo">
                                <div class="play_hover_btn" onmouseenter="show_gif(this,'')"
                                     onmouseleave="hide_gif(this)">
                                    <svg xmlns="http://www.w3.org/2000/svg" class="feather" width="24" height="24"
                                         viewBox="0 0 24 24" fill="rgba(255, 255, 255, 0.8)">
                                        <path d="M8,5.14V19.14L19,12.14L8,5.14Z"></path>
                                    </svg>
                                </div>
                                <div class="video-duration">00:14:47</div>
                            </a>
                        </div>
                        <div class="ra-title">
                            <div class="video-title"><a href="https://demo.playtubescript.com/watch/uPnug1pNRDJg5XF"
                                                        data-load="?link1=watch&amp;id=uPnug1pNRDJg5XF"> ⁣Señales De Los
                                Últimos Tiempos *YA ESTÁN AQUÍ* | Jóvenes de Cristo</a></div>
                            <div class="video-publisher">Mundial Game</div>
                            <div class="video-publisher">6 Views <span class="middot">·</span> 30 June 2022</div>
                            <div class="video-category"><a
                                    href="#">People &amp;
                                Blogs</a></div>
                        </div>
                    </div>
                    <div class="related-video-wrapper" data-sidebar-video="54574">
                        <div class="ra-thumb">
                            <a href="https://demo.playtubescript.com/watch/fFtY1ef9NxiOQSX"
                               data-load="?link1=watch&amp;id=fFtY1ef9NxiOQSX">
                                <img src="https://i.ytimg.com/vi/O4NHPSvmudk/hqdefault.jpg"
                                     alt="⁣¿Es posible perder la salvación? ¿Qué dice la Biblia acerca de la salvación? | Jóvenes de Cristo">
                                <div class="play_hover_btn" onmouseenter="show_gif(this,'')"
                                     onmouseleave="hide_gif(this)">
                                    <svg xmlns="http://www.w3.org/2000/svg" class="feather" width="24" height="24"
                                         viewBox="0 0 24 24" fill="rgba(255, 255, 255, 0.8)">
                                        <path d="M8,5.14V19.14L19,12.14L8,5.14Z"></path>
                                    </svg>
                                </div>
                                <div class="video-duration">00:12:32</div>
                            </a>
                        </div>
                        <div class="ra-title">
                            <div class="video-title"><a href="https://demo.playtubescript.com/watch/fFtY1ef9NxiOQSX"
                                                        data-load="?link1=watch&amp;id=fFtY1ef9NxiOQSX"> ⁣¿Es posible
                                perder la salvación? ¿Qué dice la Biblia acerca de la salvación? | Jóvenes de Cristo</a>
                            </div>
                            <div class="video-publisher">Mundial Game</div>
                            <div class="video-publisher">7 Views <span class="middot">·</span> 23 June 2022</div>
                            <div class="video-category"><a
                                    href="#">People &amp;
                                Blogs</a></div>
                        </div>
                    </div>
                    <div class="related-video-wrapper" data-sidebar-video="54144">
                        <div class="ra-thumb">
                            <a href="https://demo.playtubescript.com/watch/otf4McO74kwPLWL"
                               data-load="?link1=watch&amp;id=otf4McO74kwPLWL">
                                <img src="https://i.ytimg.com/vi/MZS2nl_5sJU/maxresdefault.jpg"
                                     alt="⁣¿Cuál es el sentido de la vida? ¿Qué hacemos aquí? *VIDA* | Jóvenes de Cristo">
                                <div class="play_hover_btn" onmouseenter="show_gif(this,'')"
                                     onmouseleave="hide_gif(this)">
                                    <svg xmlns="http://www.w3.org/2000/svg" class="feather" width="24" height="24"
                                         viewBox="0 0 24 24" fill="rgba(255, 255, 255, 0.8)">
                                        <path d="M8,5.14V19.14L19,12.14L8,5.14Z"></path>
                                    </svg>
                                </div>
                                <div class="video-duration">00:15:36</div>
                            </a>
                        </div>
                        <div class="ra-title">
                            <div class="video-title"><a href="https://demo.playtubescript.com/watch/otf4McO74kwPLWL"
                                                        data-load="?link1=watch&amp;id=otf4McO74kwPLWL"> ⁣¿Cuál es el
                                sentido de la vida? ¿Qué hacemos aquí? *VIDA* | Jóvenes de Cristo</a></div>
                            <div class="video-publisher">Mundial Game</div>
                            <div class="video-publisher">2 Views <span class="middot">·</span> 09 June 2022</div>
                            <div class="video-category"><a
                                    href="#">People &amp;
                                Blogs</a></div>
                        </div>
                    </div>
                    <div class="related-video-wrapper" data-sidebar-video="53961">
                        <div class="ra-thumb">
                            <a href="https://demo.playtubescript.com/watch/WRjJNOlbVP9uwkI"
                               data-load="?link1=watch&amp;id=WRjJNOlbVP9uwkI">
                                <img src="https://i.ytimg.com/vi/See2fBEMPX4/hqdefault.jpg"
                                     alt="⁣¿Sientes ANSIEDAD, PREOCUPACIÓN o ESTRÉS? ¿Cómo VENCERLO? | Jóvenes de Cristo">
                                <div class="play_hover_btn" onmouseenter="show_gif(this,'')"
                                     onmouseleave="hide_gif(this)">
                                    <svg xmlns="http://www.w3.org/2000/svg" class="feather" width="24" height="24"
                                         viewBox="0 0 24 24" fill="rgba(255, 255, 255, 0.8)">
                                        <path d="M8,5.14V19.14L19,12.14L8,5.14Z"></path>
                                    </svg>
                                </div>
                                <div class="video-duration">00:12:02</div>
                            </a>
                        </div>
                        <div class="ra-title">
                            <div class="video-title"><a href="https://demo.playtubescript.com/watch/WRjJNOlbVP9uwkI"
                                                        data-load="?link1=watch&amp;id=WRjJNOlbVP9uwkI"> ⁣¿Sientes
                                ANSIEDAD, PREOCUPACIÓN o ESTRÉS? ¿Cómo VENCERLO? | Jóvenes de Cristo</a></div>
                            <div class="video-publisher">Mundial Game</div>
                            <div class="video-publisher">7 Views <span class="middot">·</span> 02 June 2022</div>
                            <div class="video-category"><a
                                    href="#">People &amp;
                                Blogs</a></div>
                        </div>
                    </div>
                    <div class="related-video-wrapper" data-sidebar-video="53696">
                        <div class="ra-thumb">
                            <a href="https://demo.playtubescript.com/watch/DrMkQxg95WT7pXq"
                               data-load="?link1=watch&amp;id=DrMkQxg95WT7pXq">
                                <img src="https://i.ytimg.com/vi/vklWjWKrpEQ/maxresdefault.jpg"
                                     alt="⁣LUNA DE SANGRE ¿Qué está pasando? Las Señales De Dios *Cristo Viene* | Jóvenes de Cristo">
                                <div class="play_hover_btn" onmouseenter="show_gif(this,'')"
                                     onmouseleave="hide_gif(this)">
                                    <svg xmlns="http://www.w3.org/2000/svg" class="feather" width="24" height="24"
                                         viewBox="0 0 24 24" fill="rgba(255, 255, 255, 0.8)">
                                        <path d="M8,5.14V19.14L19,12.14L8,5.14Z"></path>
                                    </svg>
                                </div>
                                <div class="video-duration">00:11:23</div>
                            </a>
                        </div>
                        <div class="ra-title">
                            <div class="video-title"><a href="https://demo.playtubescript.com/watch/DrMkQxg95WT7pXq"
                                                        data-load="?link1=watch&amp;id=DrMkQxg95WT7pXq"> ⁣LUNA DE SANGRE
                                ¿Qué está pasando? Las Señales De Dios *Cristo Viene* | Jóvenes de Cristo</a></div>
                            <div class="video-publisher">Mundial Game</div>
                            <div class="video-publisher">43 Views <span class="middot">·</span> 26 May 2022</div>
                            <div class="video-category"><a
                                    href="#">People &amp;
                                Blogs</a></div>
                        </div>
                    </div>
                    <div class="related-video-wrapper" data-sidebar-video="53576">
                        <div class="ra-thumb">
                            <a href="https://demo.playtubescript.com/watch/F1Lr6vGgMrxnoSe"
                               data-load="?link1=watch&amp;id=F1Lr6vGgMrxnoSe">
                                <img src="https://i.ytimg.com/vi/pPbnPBrF3c0/hqdefault.jpg"
                                     alt="⁣¿Cómo saber que REALMENTE eres SALVO? *habré perdido mi salvación* | Jóvenes de Cristo">
                                <div class="play_hover_btn" onmouseenter="show_gif(this,'')"
                                     onmouseleave="hide_gif(this)">
                                    <svg xmlns="http://www.w3.org/2000/svg" class="feather" width="24" height="24"
                                         viewBox="0 0 24 24" fill="rgba(255, 255, 255, 0.8)">
                                        <path d="M8,5.14V19.14L19,12.14L8,5.14Z"></path>
                                    </svg>
                                </div>
                                <div class="video-duration">00:15:58</div>
                            </a>
                        </div>
                        <div class="ra-title">
                            <div class="video-title"><a href="https://demo.playtubescript.com/watch/F1Lr6vGgMrxnoSe"
                                                        data-load="?link1=watch&amp;id=F1Lr6vGgMrxnoSe"> ⁣¿Cómo saber
                                que REALMENTE eres SALVO? *habré perdido mi salvación* | Jóvenes de Cristo</a></div>
                            <div class="video-publisher">Mundial Game</div>
                            <div class="video-publisher">11 Views <span class="middot">·</span> 19 May 2022</div>
                            <div class="video-category"><a
                                    href="#">People &amp;
                                Blogs</a></div>
                        </div>
                    </div>
                    <div class="related-video-wrapper" data-sidebar-video="53295">
                        <div class="ra-thumb">
                            <a href="https://demo.playtubescript.com/watch/RvDFlr574GfkVOi"
                               data-load="?link1=watch&amp;id=RvDFlr574GfkVOi">
                                <img src="https://i.ytimg.com/vi/miq7rz4e7vk/hqdefault.jpg"
                                     alt="⁣Día de Reposo(Shabat) ¿Debemos guardar el Sábado? *SHABAT* | Jóvenes de Cristo">
                                <div class="play_hover_btn" onmouseenter="show_gif(this,'')"
                                     onmouseleave="hide_gif(this)">
                                    <svg xmlns="http://www.w3.org/2000/svg" class="feather" width="24" height="24"
                                         viewBox="0 0 24 24" fill="rgba(255, 255, 255, 0.8)">
                                        <path d="M8,5.14V19.14L19,12.14L8,5.14Z"></path>
                                    </svg>
                                </div>
                                <div class="video-duration">00:26:16</div>
                            </a>
                        </div>
                        <div class="ra-title">
                            <div class="video-title"><a href="https://demo.playtubescript.com/watch/RvDFlr574GfkVOi"
                                                        data-load="?link1=watch&amp;id=RvDFlr574GfkVOi"> ⁣Día de
                                Reposo(Shabat) ¿Debemos guardar el Sábado? *SHABAT* | Jóvenes de Cristo</a></div>
                            <div class="video-publisher">Mundial Game</div>
                            <div class="video-publisher">10 Views <span class="middot">·</span> 06 May 2022</div>
                            <div class="video-category"><a
                                    href="#">People &amp;
                                Blogs</a></div>
                        </div>
                    </div>
                    <div class="related-video-wrapper" data-sidebar-video="53091">
                        <div class="ra-thumb">
                            <a href="https://demo.playtubescript.com/watch/STSowABQA3qh6g7"
                               data-load="?link1=watch&amp;id=STSowABQA3qh6g7">
                                <img src="https://i.ytimg.com/vi/emJhPHHGiA4/hqdefault.jpg"
                                     alt="⁣¿Sigues Cayendo En El Mismo PECADO? ¡Haz Esto! | Jóvenes de Cristo">
                                <div class="play_hover_btn" onmouseenter="show_gif(this,'')"
                                     onmouseleave="hide_gif(this)">
                                    <svg xmlns="http://www.w3.org/2000/svg" class="feather" width="24" height="24"
                                         viewBox="0 0 24 24" fill="rgba(255, 255, 255, 0.8)">
                                        <path d="M8,5.14V19.14L19,12.14L8,5.14Z"></path>
                                    </svg>
                                </div>
                                <div class="video-duration">00:13:39</div>
                            </a>
                        </div>
                        <div class="ra-title">
                            <div class="video-title"><a href="https://demo.playtubescript.com/watch/STSowABQA3qh6g7"
                                                        data-load="?link1=watch&amp;id=STSowABQA3qh6g7"> ⁣¿Sigues
                                Cayendo En El Mismo PECADO? ¡Haz Esto! | Jóvenes de Cristo</a></div>
                            <div class="video-publisher">Mundial Game</div>
                            <div class="video-publisher">22 Views <span class="middot">·</span> 28 April 2022</div>
                            <div class="video-category"><a
                                    href="#">People &amp;
                                Blogs</a></div>
                        </div>
                    </div>
                    <div class="related-video-wrapper" data-sidebar-video="52869">
                        <div class="ra-thumb">
                            <a href="https://demo.playtubescript.com/watch/yqTeATO36PUpSHF"
                               data-load="?link1=watch&amp;id=yqTeATO36PUpSHF">
                                <img src="https://i.ytimg.com/vi/ldv7LQpTA-0/hqdefault.jpg"
                                     alt="⁣¿Cómo Será El Surgimiento Del Anticristo? ¿De qué país vendrá? | Jóvenes de Cristo">
                                <div class="play_hover_btn" onmouseenter="show_gif(this,'')"
                                     onmouseleave="hide_gif(this)">
                                    <svg xmlns="http://www.w3.org/2000/svg" class="feather" width="24" height="24"
                                         viewBox="0 0 24 24" fill="rgba(255, 255, 255, 0.8)">
                                        <path d="M8,5.14V19.14L19,12.14L8,5.14Z"></path>
                                    </svg>
                                </div>
                                <div class="video-duration">00:08:06</div>
                            </a>
                        </div>
                        <div class="ra-title">
                            <div class="video-title"><a href="https://demo.playtubescript.com/watch/yqTeATO36PUpSHF"
                                                        data-load="?link1=watch&amp;id=yqTeATO36PUpSHF"> ⁣¿Cómo Será El
                                Surgimiento Del Anticristo? ¿De qué país vendrá? | Jóvenes de Cristo</a></div>
                            <div class="video-publisher">Mundial Game</div>
                            <div class="video-publisher">9 Views <span class="middot">·</span> 21 April 2022</div>
                            <div class="video-category"><a
                                    href="#">People &amp;
                                Blogs</a></div>
                        </div>
                    </div>
                    <div class="related-video-wrapper" data-sidebar-video="52765">
                        <div class="ra-thumb">
                            <a href="https://demo.playtubescript.com/watch/orFxyLD1rVCxLB7"
                               data-load="?link1=watch&amp;id=orFxyLD1rVCxLB7">
                                <img src="https://i.ytimg.com/vi/llV-QSOkM6c/hqdefault.jpg"
                                     alt="⁣¿Qué sucedió cuando Cristo murió? ¿Qué pasó en la Cruz? *El Mundo Espiritual* | Jóvenes de Cristo">
                                <div class="play_hover_btn" onmouseenter="show_gif(this,'')"
                                     onmouseleave="hide_gif(this)">
                                    <svg xmlns="http://www.w3.org/2000/svg" class="feather" width="24" height="24"
                                         viewBox="0 0 24 24" fill="rgba(255, 255, 255, 0.8)">
                                        <path d="M8,5.14V19.14L19,12.14L8,5.14Z"></path>
                                    </svg>
                                </div>
                                <div class="video-duration">00:20:20</div>
                            </a>
                        </div>
                        <div class="ra-title">
                            <div class="video-title"><a href="https://demo.playtubescript.com/watch/orFxyLD1rVCxLB7"
                                                        data-load="?link1=watch&amp;id=orFxyLD1rVCxLB7"> ⁣¿Qué sucedió
                                cuando Cristo murió? ¿Qué pasó en la Cruz? *El Mundo Espiritual* | Jóvenes de Cristo</a>
                            </div>
                            <div class="video-publisher">Mundial Game</div>
                            <div class="video-publisher">7 Views <span class="middot">·</span> 14 April 2022</div>
                            <div class="video-category"><a
                                    href="#">People &amp;
                                Blogs</a></div>
                        </div>
                    </div>
                    <div class="related-video-wrapper" data-sidebar-video="52626">
                        <div class="ra-thumb">
                            <a href="https://demo.playtubescript.com/watch/8WMaA93JZsNccYf"
                               data-load="?link1=watch&amp;id=8WMaA93JZsNccYf">
                                <img src="https://i.ytimg.com/vi/DprjVMayTVg/hqdefault.jpg"
                                     alt="⁣¿Cuál es la música de Dios? ¿Qué música podemos escuchar? | Jóvenes de Cristo">
                                <div class="play_hover_btn" onmouseenter="show_gif(this,'')"
                                     onmouseleave="hide_gif(this)">
                                    <svg xmlns="http://www.w3.org/2000/svg" class="feather" width="24" height="24"
                                         viewBox="0 0 24 24" fill="rgba(255, 255, 255, 0.8)">
                                        <path d="M8,5.14V19.14L19,12.14L8,5.14Z"></path>
                                    </svg>
                                </div>
                                <div class="video-duration">00:16:34</div>
                            </a>
                        </div>
                        <div class="ra-title">
                            <div class="video-title"><a href="https://demo.playtubescript.com/watch/8WMaA93JZsNccYf"
                                                        data-load="?link1=watch&amp;id=8WMaA93JZsNccYf"> ⁣¿Cuál es la
                                música de Dios? ¿Qué música podemos escuchar? | Jóvenes de Cristo</a></div>
                            <div class="video-publisher">Mundial Game</div>
                            <div class="video-publisher">9 Views <span class="middot">·</span> 07 April 2022</div>
                            <div class="video-category"><a
                                    href="#">People &amp;
                                Blogs</a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="clear"></div>
    </div>
</div>
