<%--
  Created by IntelliJ IDEA.
  User: blackundo
  Date: 26/03/2023
  Time: 09:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  User: blackundo
  Date: 26/03/2023
  Time: 08:10
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<html>
<head>
  <title>Title</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery-ui.min.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery.tagit.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome-4.7.0/css/font-awesome.min.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/twemoji-awesome.css" />
  <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/js/lib/sweetalert2/dist/sweetalert2.min.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/js/lib/notifIt/notifIt/css/notifIt.min.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" id="style-css" />
  <link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet"/>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-select.min.css"/>
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-ui.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.form.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-select.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/script.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/video_frames.js"></script>

  <link rel="stylesheet" href="https://demo.playtubescript.com/themes/youplay/player/css/plyr.css?version=2.2.8">
  <link rel="stylesheet" href="https://demo.playtubescript.com/themes/youplay/player/css/mediaelementplayer.min.css?version=2.2.8">
  <script src="https://demo.playtubescript.com/themes/youplay/player/js/mediaelement-and-player.min.js?version=2.2.8"></script>
  <link rel="stylesheet" href="https://demo.playtubescript.com/themes/youplay/player/css/mejs-dark.css?version=2.2.8">
  <script src="https://demo.playtubescript.com/themes/youplay/player/plugins/speed/speed.min.js?version=2.2.8"></script>
  <link rel="stylesheet" href="https://demo.playtubescript.com/themes/youplay/player/plugins/speed/speed.min.css?version=2.2.8">
  <script src="https://demo.playtubescript.com/themes/youplay/player/plugins/speed/speed-i18n.js?version=2.2.8"></script>
  <script src="https://demo.playtubescript.com/themes/youplay/player/plugins/jump/jump-forward.min.js?version=2.2.8"></script>
  <link rel="stylesheet" href="https://demo.playtubescript.com/themes/youplay/player/plugins/jump/jump-forward.min.css?version=2.2.8">
  <script src="https://demo.playtubescript.com/themes/youplay/player/plugins/ads/ads.min.js?version=2.2.8"></script>
  <link rel="stylesheet" href="https://demo.playtubescript.com/themes/youplay/player/plugins/ads/ads.min.css?version=2.2.8">
  <script src="https://demo.playtubescript.com/themes/youplay/player/plugins/ads/ads-i18n.js?version=2.2.8"></script>
  <script src="https://demo.playtubescript.com/themes/youplay/player/plugins/vast/ads-vast-vpaid.js?version=2.2.8"></script>
  <script src="https://demo.playtubescript.com/themes/youplay/player/plugins/quality/quality.min.js?version=2.2.8"></script>
  <link rel="stylesheet" href="https://demo.playtubescript.com/themes/youplay/player/plugins/quality/quality.min.css?version=2.2.8">
  <script src="https://demo.playtubescript.com/themes/youplay/player/plugins/context-menu/context-menu.min.js?version=2.2.8"></script>
  <script src="https://demo.playtubescript.com/themes/youplay/player/plugins/context-menu/context-menu-i18n.js?version=2.2.8"></script>
  <link rel="stylesheet" href="https://demo.playtubescript.com/themes/youplay/player/plugins/context-menu/context-menu.min.css?version=2.2.8">

</head>

<body>
<header>
  <%@include file="header.jsp"%>
</header>
<!-- end header -->

<!-- MAIN CONTENT  -->

<div class="yp_side_menu has_side_menu">
  <div class="main-content container container-full" id="main-container">
    <div id="container-content">
      <jsp:include page="watch.jsp"/>
    </div>
  </div>
</div>

<!-- start sidebar -->
<%@include file="sidebar.jsp"%>
<!-- end sidebar -->

<%@include file="modal.jsp"%>

<script type="text/javascript">
  function SlideSetCookie(cname, cvalue, exdays) {
    $('#open_slide').attr('onclick', "SlideEraseCookie('open_slide')");
    var d = new Date();
    d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
    var expires = "expires=" + d.toUTCString();
    document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
  }
  function SlideEraseCookie(name) {
    $('#open_slide').attr('onclick', "SlideSetCookie('open_slide','yes',1)");
    document.cookie = name + '=;path=/;Max-Age=0'
  }
</script>

</body>

</html>

