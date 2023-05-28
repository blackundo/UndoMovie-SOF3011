<%--
  Created by IntelliJ IDEA.
  User: blackundo
  Date: 26/03/2023
  Time: 08:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/commons/taglib.jsp"%>
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
    <!-- SweetAlert2 -->
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>

<body ${param.message != null ? 'class="modal-open" style="padding-right: 10px;"' : ''}>
<header class="navbar-fixed-top">
    <%@include file="header.jsp"%>
</header>
<!-- end header -->



<!-- MAIN CONTENT  -->
<div class="yp_side_menu has_side_menu">
    <div id="main-container" class="container container-full main-content" >
    <div id="container_content">
        <div class="container-home">
            <div class="pt_page_headr">
                <h4 class="page_head"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                    <path fill-rule="evenodd" fill="currentColor"
                          d="M10 3.25L9.94358 3.25L9.94356 3.25C8.10581 3.24999 6.65019 3.24997 5.51098 3.40314C4.33855 3.56077 3.38961 3.89288 2.64124 4.64125C1.89288 5.38961 1.56076 6.33856 1.40313 7.51098C1.24997 8.65019 1.24998 10.1058 1.25 11.9436L1.25 11.9436L1.25 12L1.25 12.0564L1.25 12.0565C1.24998 13.8942 1.24997 15.3498 1.40313 16.489C1.56076 17.6614 1.89288 18.6104 2.64124 19.3588C3.38961 20.1071 4.33855 20.4392 5.51098 20.5969C6.65019 20.75 8.10583 20.75 9.94359 20.75L10 20.75L10.0564 20.75L10.0565 20.75C11.8942 20.75 13.3498 20.75 14.489 20.5969C15.6614 20.4392 16.6104 20.1071 17.3588 19.3588C18.1071 18.6104 18.4392 17.6614 18.5969 16.489C18.6011 16.4577 18.6052 16.4261 18.6092 16.3943C19.1758 16.8183 19.6658 17.1765 20.0818 17.4026C20.5551 17.6598 21.1632 17.875 21.7826 17.5653C22.402 17.2556 22.5947 16.64 22.673 16.107C22.7501 15.5813 22.75 14.8815 22.75 14.0604L22.75 14L22.75 9.99999L22.75 9.93961C22.75 9.11853 22.7501 8.41864 22.673 7.893C22.5947 7.35998 22.402 6.74439 21.7826 6.4347C21.1632 6.12501 20.5551 6.34019 20.0818 6.59743C19.6658 6.82352 19.1758 7.18169 18.6092 7.60572C18.6052 7.5739 18.6011 7.54232 18.5969 7.51098C18.4392 6.33856 18.1071 5.38961 17.3588 4.64125C16.6104 3.89288 15.6614 3.56077 14.489 3.40314C13.3498 3.24997 11.8942 3.24999 10.0564 3.25L10.0564 3.25L10 3.25ZM18.75 11.8488L18.75 11.8418L18.75 11.8335L18.75 11.8251L18.75 11.8168L18.75 11.8084L18.75 11.8L18.75 11.7917L18.75 11.7833L18.75 11.7749L18.75 11.7666L18.75 11.7582L18.75 11.7498L18.75 11.7414L18.75 11.733L18.75 11.7246L18.75 11.7162L18.75 11.7078L18.75 11.6994L18.75 11.691L18.75 11.6825L18.75 11.6741L18.75 11.6657L18.75 11.6573L18.75 11.6488L18.75 11.6404L18.75 11.632L18.75 11.6235L18.75 11.6151L18.75 11.6066L18.75 11.5982L18.75 11.5897L18.75 11.5813L18.75 11.5728L18.75 11.5643L18.75 11.5559L18.75 11.5474L18.75 11.5389L18.75 11.5304L18.75 11.522L18.75 11.5135L18.75 11.505L18.75 11.4965L18.75 11.488L18.75 11.4795L18.75 11.471L18.75 11.4625L18.75 11.454L18.75 11.4455L18.75 11.437L18.75 11.4285L18.75 11.4199L18.75 11.4114L18.75 11.4029L18.75 11.3944L18.75 11.3858L18.75 11.3773L18.75 11.3688L18.75 11.3602L18.75 11.3517L18.75 11.3432L18.75 11.3346L18.75 11.3261L18.75 11.3175L18.75 11.309L18.75 11.3004L18.75 11.2919L18.75 11.2833L18.75 11.2748L18.75 11.2662L18.75 11.2576L18.75 11.2491L18.75 11.2405L18.75 11.2319L18.75 11.2234L18.75 11.2148L18.75 11.2062L18.75 11.1976L18.75 11.1891L18.75 11.1805L18.75 11.1719L18.75 11.1633L18.75 11.1547L18.75 11.1461L18.75 11.1375L18.75 11.1289L18.75 11.1203L18.75 11.1117L18.75 11.1032L18.75 11.0946L18.75 11.086L18.75 11.0773L18.75 11.0687L18.75 11.0601L18.75 11.0515L18.75 11.0429L18.75 11.0343L18.75 11.0257L18.75 11.0171L18.75 11.0085L18.75 10.9999L18.75 10.9912L18.75 10.9826L18.75 10.974L18.75 10.9654L18.75 10.9568L18.75 10.9481L18.75 10.9395L18.75 10.9309L18.75 10.9223L18.75 10.9137L18.75 10.905L18.75 10.8964L18.75 10.8878L18.75 10.8791L18.75 10.8705L18.75 10.8619L18.75 10.8532L18.75 10.8446L18.75 10.836L18.75 10.8273L18.75 10.8187L18.75 10.8101L18.75 10.8014L18.75 10.7928L18.75 10.7842L18.75 10.7755L18.75 10.7669L18.75 10.7583L18.75 10.7496L18.75 10.741L18.75 10.7323L18.75 10.7237L18.75 10.7151L18.75 10.7064L18.75 10.6978L18.75 10.6891L18.75 10.6805L18.75 10.6719L18.75 10.6632L18.75 10.6546L18.75 10.6459L18.75 10.6373L18.75 10.6286L18.75 10.62L18.75 10.6114L18.75 10.6027L18.75 10.5941L18.75 10.5854L18.75 10.5768L18.75 10.5682L18.75 10.5595L18.75 10.5509L18.75 10.5422L18.75 10.5336L18.75 10.525L18.75 10.5163L18.75 10.5077L18.75 10.4991L18.75 10.4904L18.75 10.4818L18.75 10.4731L18.75 10.4645L18.75 10.4559L18.75 10.4472L18.75 10.4386L18.75 10.43L18.75 10.4213L18.75 10.4127L18.75 10.4041L18.75 10.3955L18.75 10.3868L18.75 10.3782L18.75 10.3696L18.75 10.361L18.75 10.3523L18.75 10.3437L18.75 10.3351L18.75 10.3265L18.75 10.3178L18.75 10.3092L18.75 10.3006L18.75 10.292L18.75 10.2834L18.75 10.2748L18.75 10.2661L18.75 10.2575L18.75 10.2489L18.75 10.2403L18.75 10.2317L18.75 10.2231L18.75 10.2145L18.75 10.2059L18.75 10.1973L18.75 10.1887L18.75 10.1801L18.75 10.1715L18.75 10.1629L18.75 10.1543L18.75 10.1457L18.75 10.1371L18.75 10.1285L18.75 10.12L18.75 10.1114L18.75 10.1028L18.75 10.0942L18.75 10.0856L18.75 10.0771L18.75 10.0685L18.75 10.0599L18.75 10.0513L18.75 10.0428L18.75 10.0342L18.75 10.0256L18.75 10.0171L18.75 10.0085L18.75 9.99996C18.75 9.74167 18.7507 9.59613 18.7603 9.48769C18.7646 9.43923 18.7696 9.41311 18.7728 9.39999C18.7744 9.3938 18.7754 9.39062 18.7758 9.38956L18.7764 9.3882L18.7771 9.38693C18.7778 9.38599 18.7797 9.38321 18.7837 9.37828C18.7922 9.36782 18.8101 9.34811 18.8463 9.31561C18.9273 9.24286 19.0433 9.15498 19.25 9C19.9685 8.46106 20.4399 8.11002 20.798 7.91537C20.9675 7.82328 21.0616 7.79413 21.1071 7.78583C21.1277 7.82716 21.1608 7.91996 21.1888 8.11077C21.248 8.51408 21.25 9.10178 21.25 9.99999L21.25 14C21.25 14.8982 21.248 15.4859 21.1888 15.8892C21.1608 16.08 21.1277 16.1728 21.1071 16.2141C21.0616 16.2058 20.9675 16.1767 20.798 16.0846C20.4399 15.89 19.9686 15.5389 19.25 15C19.0434 14.845 18.9273 14.7572 18.8463 14.6844C18.8101 14.6519 18.7922 14.6322 18.7837 14.6217C18.7817 14.6193 18.7803 14.6175 18.7792 14.616C18.7781 14.6145 18.7775 14.6136 18.7771 14.6131L18.7764 14.6118L18.7758 14.6104C18.7754 14.6093 18.7743 14.6061 18.7728 14.6C18.7696 14.5869 18.7646 14.5608 18.7603 14.5125C18.7507 14.4043 18.75 14.2591 18.75 14.0012L18.75 13.9954L18.75 13.9896L18.75 13.9838L18.75 13.978L18.75 13.9722L18.75 13.9664L18.75 13.9606L18.75 13.9547L18.75 13.9489L18.75 13.943L18.75 13.9371L18.75 13.9312L18.75 13.9253L18.75 13.9193L18.75 13.9134L18.75 13.9075L18.75 13.9015L18.75 13.8955L18.75 13.8895L18.75 13.8835L18.75 13.8775L18.75 13.8715L18.75 13.8654L18.75 13.8594L18.75 13.8533L18.75 13.8472L18.75 13.8411L18.75 13.835L18.75 13.8289L18.75 13.8228L18.75 13.8166L18.75 13.8105L18.75 13.8043L18.75 13.7981L18.75 13.792L18.75 13.7857L18.75 13.7795L18.75 13.7733L18.75 13.7671L18.75 13.7608L18.75 13.7546L18.75 13.7483L18.75 13.742L18.75 13.7357L18.75 13.7294L18.75 13.7231L18.75 13.7167L18.75 13.7104L18.75 13.704L18.75 13.6977L18.75 13.6913L18.75 13.6849L18.75 13.6785L18.75 13.6721L18.75 13.6656L18.75 13.6592L18.75 13.6527L18.75 13.6463L18.75 13.6398L18.75 13.6333L18.75 13.6268L18.75 13.6203L18.75 13.6138L18.75 13.6073L18.75 13.6007L18.75 13.5942L18.75 13.5876L18.75 13.581L18.75 13.5744L18.75 13.5678L18.75 13.5612L18.75 13.5546L18.75 13.548L18.75 13.5413L18.75 13.5347L18.75 13.528L18.75 13.5214L18.75 13.5147L18.75 13.508L18.75 13.5013L18.75 13.4945L18.75 13.4878L18.75 13.4811L18.75 13.4743L18.75 13.4676L18.75 13.4608L18.75 13.454L18.75 13.4472L18.75 13.4404L18.75 13.4336L18.75 13.4268L18.75 13.4199L18.75 13.4131L18.75 13.4062L18.75 13.3994L18.75 13.3925L18.75 13.3856L18.75 13.3787L18.75 13.3718L18.75 13.3649L18.75 13.358L18.75 13.351L18.75 13.3441L18.75 13.3371L18.75 13.3301L18.75 13.3232L18.75 13.3162L18.75 13.3092L18.75 13.3022L18.75 13.2952L18.75 13.2881L18.75 13.2811L18.75 13.274L18.75 13.267L18.75 13.2599L18.75 13.2528L18.75 13.2458L18.75 13.2387L18.75 13.2315L18.75 13.2244L18.75 13.2173L18.75 13.2102L18.75 13.203L18.75 13.1959L18.75 13.1887L18.75 13.1815L18.75 13.1744L18.75 13.1672L18.75 13.16L18.75 13.1528L18.75 13.1455L18.75 13.1383L18.75 13.1311L18.75 13.1238L18.75 13.1166L18.75 13.1093L18.75 13.102L18.75 13.0947L18.75 13.0874L18.75 13.0801L18.75 13.0728L18.75 13.0655L18.75 13.0582L18.75 13.0508L18.75 13.0435L18.75 13.0361L18.75 13.0288L18.75 13.0214L18.75 13.014L18.75 13.0066L18.75 12.9992L18.75 12.9918L18.75 12.9844L18.75 12.977L18.75 12.9696L18.75 12.9621L18.75 12.9547L18.75 12.9472L18.75 12.9397L18.75 12.9323L18.75 12.9248L18.75 12.9173L18.75 12.9098L18.75 12.9023L18.75 12.8948L18.75 12.8872L18.75 12.8797L18.75 12.8722L18.75 12.8646L18.75 12.857L18.75 12.8495L18.75 12.8419L18.75 12.8343L18.75 12.8267L18.75 12.8191L18.75 12.8115L18.75 12.8039L18.75 12.7963L18.75 12.7887L18.75 12.781L18.75 12.7734L18.75 12.7657L18.75 12.7581L18.75 12.7504L18.75 12.7427L18.75 12.735L18.75 12.7273L18.75 12.7196L18.75 12.7119L18.75 12.7042L18.75 12.6965L18.75 12.6888L18.75 12.681L18.75 12.6733L18.75 12.6655L18.75 12.6578L18.75 12.65L18.75 12.6422L18.75 12.6345L18.75 12.6267L18.75 12.6189L18.75 12.6111L18.75 12.6033L18.75 12.5955L18.75 12.5876L18.75 12.5798L18.75 12.572L18.75 12.5641L18.75 12.5563L18.75 12.5484L18.75 12.5405L18.75 12.5327L18.75 12.5248L18.75 12.5169L18.75 12.509L18.75 12.5011L18.75 12.4932L18.75 12.4853L18.75 12.4774L18.75 12.4695L18.75 12.4615L18.75 12.4536L18.75 12.4456L18.75 12.4377L18.75 12.4297L18.75 12.4218L18.75 12.4138L18.75 12.4058L18.75 12.3978L18.75 12.3899L18.75 12.3819L18.75 12.3739L18.75 12.3659L18.75 12.3578L18.75 12.3498L18.75 12.3418L18.75 12.3338L18.75 12.3257L18.75 12.3177L18.75 12.3096L18.75 12.3016L18.75 12.2935L18.75 12.2854L18.75 12.2774L18.75 12.2693L18.75 12.2612L18.75 12.2531L18.75 12.245L18.75 12.2369L18.75 12.2288L18.75 12.2207L18.75 12.2126L18.75 12.2044L18.75 12.1963L18.75 12.1882L18.75 12.18L18.75 12.1719L18.75 12.1637L18.75 12.1556L18.75 12.1512M17.25 12C17.25 13.9068 17.2484 15.2615 17.1102 16.2892C16.975 17.2952 16.7213 17.8749 16.2981 18.2981C15.8749 18.7213 15.2952 18.975 14.2892 19.1102C13.2615 19.2484 11.9068 19.25 10 19.25C8.09318 19.25 6.73851 19.2484 5.71085 19.1102C4.70476 18.975 4.12511 18.7213 3.7019 18.2981C3.27869 17.8749 3.02502 17.2952 2.88976 16.2892C2.75159 15.2615 2.75 13.9068 2.75 12C2.75 10.0932 2.75159 8.73852 2.88976 7.71085C3.02502 6.70476 3.27869 6.12512 3.7019 5.70191C4.12511 5.2787 4.70476 5.02503 5.71085 4.88976C6.73851 4.7516 8.09318 4.75 10 4.75C11.9068 4.75 13.2615 4.7516 14.2892 4.88976C15.2952 5.02503 15.8749 5.2787 16.2981 5.70191C16.7213 6.12512 16.975 6.70476 17.1102 7.71085C17.2484 8.73852 17.25 10.0932 17.25 12ZM21.1422 7.78417C21.1418 7.78483 21.137 7.78511 21.129 7.783C21.1387 7.78245 21.1427 7.7835 21.1422 7.78417ZM21.0962 7.76658C21.0897 7.76146 21.087 7.75743 21.0873 7.7567C21.0876 7.75596 21.0908 7.75852 21.0962 7.76658ZM21.0873 16.2433C21.087 16.2425 21.0897 16.2385 21.0962 16.2334C21.0908 16.2414 21.0876 16.244 21.0873 16.2433ZM21.129 16.217C21.137 16.2148 21.1418 16.2151 21.1422 16.2158C21.1427 16.2165 21.1387 16.2175 21.129 16.217Z">
                    </path>
                </svg> Video Thịnh Hành</h4>
            </div>



            <div class="videos-latest-list row pt_timeline_vids ">
                <div class="videos-latest-list row">

                    <c:forEach items="${movies}" var="i">
                        <jsp:include page="video.jsp">
                            <jsp:param name="id" value="${i.link}"/>
                            <jsp:param name="thumbnail" value="https://i.ytimg.com/vi/${i.link}/hqdefault.jpg"/>
                            <jsp:param name="duration" value="23:22"/>
                            <jsp:param name="title" value="${i.title}"/>
                            <jsp:param name="user" value="Admin"/>
                            <jsp:param name="view" value="${i.viewCount}"/>
                            <jsp:param name="date" value="${i.date}"/>
                        </jsp:include>
                    </c:forEach>


<%--                    <jsp:include page="video.jsp">--%>
<%--                        <jsp:param name="id" value="ctisp3ru7kk"/>--%>
<%--                        <jsp:param name="thumbnail" value="https://i.ytimg.com/vi/ctisp3ru7kk/hqdefault.jpg?sqp=-oaymwEcCNACELwBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLD_1LqrYP_wArIhM2hQMYxgMx0sPg"/>--%>
<%--                        <jsp:param name="duration" value="23:22"/>--%>
<%--                        <jsp:param name="title" value="Cách Hack Blox Fruits 18"/>--%>
<%--                        <jsp:param name="user" value="Black Undo"/>--%>
<%--                        <jsp:param name="view" value="330,534"/>--%>
<%--                        <jsp:param name="date" value="26/11/2003"/>--%>
<%--                    </jsp:include>--%>
<%--                    <jsp:include page="video.jsp">--%>
<%--                        <jsp:param name="id" value="ctisp3ru7kk"/>--%>
<%--                        <jsp:param name="thumbnail" value="https://i.ytimg.com/vi/a_MPYVrx5-w/maxresdefault.jpg"/>--%>
<%--                        <jsp:param name="duration" value="23:22"/>--%>
<%--                        <jsp:param name="title" value="Hack Doors Hotel Roblox Mới Nhất"/>--%>
<%--                        <jsp:param name="user" value="Black Undo"/>--%>
<%--                        <jsp:param name="view" value="330,534"/>--%>
<%--                        <jsp:param name="date" value="26/11/2003"/>--%>
<%--                    </jsp:include>--%>
<%--                    <jsp:include page="video.jsp">--%>
<%--                        <jsp:param name="id" value="ObRxp5DvAP4"/>--%>
<%--                        <jsp:param name="thumbnail" value="https://i.ytimg.com/vi/ObRxp5DvAP4/maxresdefault.jpg"/>--%>
<%--                        <jsp:param name="duration" value="23:22"/>--%>
<%--                        <jsp:param name="title" value="Hướng dẫn hack Last Day On Earth Mod Menu"/>--%>
<%--                        <jsp:param name="user" value="Black Undo"/>--%>
<%--                        <jsp:param name="view" value="330,534"/>--%>
<%--                        <jsp:param name="date" value="26/11/2003"/>--%>
<%--                    </jsp:include>--%>
<%--                    <jsp:include page="video.jsp">--%>
<%--                        <jsp:param name="id" value="dtpiNBwudVc"/>--%>
<%--                        <jsp:param name="thumbnail" value="https://i.ytimg.com/vi/dtpiNBwudVc/maxresdefault.jpg"/>--%>
<%--                        <jsp:param name="duration" value="23:22"/>--%>
<%--                        <jsp:param name="title" value="Cach Hack 8 Ball Pool"/>--%>
<%--                        <jsp:param name="user" value="Black Undo"/>--%>
<%--                        <jsp:param name="view" value="330,534"/>--%>
<%--                        <jsp:param name="date" value="26/11/2003"/>--%>
<%--                    </jsp:include>--%>
<%--                    <jsp:include page="video.jsp">--%>
<%--                        <jsp:param name="id" value="Gt6iUW5TDRo"/>--%>
<%--                        <jsp:param name="thumbnail" value="https://i.ytimg.com/vi/Gt6iUW5TDRo/maxresdefault.jpg"/>--%>
<%--                        <jsp:param name="duration" value="23:22"/>--%>
<%--                        <jsp:param name="title" value="Cách Hack Tình Kiếm 3d Ver 1.0..64"/>--%>
<%--                        <jsp:param name="user" value="Black Undo"/>--%>
<%--                        <jsp:param name="view" value="330,534"/>--%>
<%--                        <jsp:param name="date" value="26/11/2003"/>--%>
<%--                    </jsp:include>--%>
<%--                    <jsp:include page="video.jsp">--%>
<%--                        <jsp:param name="id" value="X9nco9dodC8"/>--%>
<%--                        <jsp:param name="thumbnail" value="https://i.ytimg.com/vi/X9nco9dodC8/maxresdefault.jpg"/>--%>
<%--                        <jsp:param name="duration" value="23:22"/>--%>
<%--                        <jsp:param name="title" value="Menu Mod Subway sufer"/>--%>
<%--                        <jsp:param name="user" value="Black Undo"/>--%>
<%--                        <jsp:param name="view" value="330,534"/>--%>
<%--                        <jsp:param name="date" value="26/11/2003"/>--%>
<%--                    </jsp:include>--%>
<%--                    <jsp:include page="video.jsp">--%>
<%--                        <jsp:param name="id" value="UKXwIXp7V8Q"/>--%>
<%--                        <jsp:param name="thumbnail" value="https://i.ytimg.com/vi/UKXwIXp7V8Q/maxresdefault.jpg"/>--%>
<%--                        <jsp:param name="duration" value="23:22"/>--%>
<%--                        <jsp:param name="title" value="Mod Minecarf trên điên thoại"/>--%>
<%--                        <jsp:param name="user" value="Black Undo"/>--%>
<%--                        <jsp:param name="view" value="330,534"/>--%>
<%--                        <jsp:param name="date" value="26/11/2003"/>--%>
<%--                    </jsp:include>--%>
<%--                    <jsp:include page="video.jsp">--%>
<%--                        <jsp:param name="id" value="lGzH8YxFOJE"/>--%>
<%--                        <jsp:param name="thumbnail" value="https://i.ytimg.com/vi/lGzH8YxFOJE/maxresdefault.jpg"/>--%>
<%--                        <jsp:param name="duration" value="23:22"/>--%>
<%--                        <jsp:param name="title" value="Hack hide Online Mod mEnu"/>--%>
<%--                        <jsp:param name="user" value="Black Undo"/>--%>
<%--                        <jsp:param name="view" value="330,534"/>--%>
<%--                        <jsp:param name="date" value="26/11/2003"/>--%>
<%--                    </jsp:include>--%>
                </div>
            </div>
            <br><br>
            <div>
                <hr>
                <div class="pull-left showing_pages">
                </div>
                <div class="pull-right">
                    <nav class="showing_nav">
                        <ul class="pagination">
                            <li>
                                <a href="/home?p=1" class="waves-effect" title='First Page'>
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                                         stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                                         class="feather feather-chevrons-left">
                                        <polyline points="11 17 6 12 11 7"></polyline>
                                        <polyline points="18 17 13 12 18 7"></polyline>
                                    </svg>
                                </a>
                            </li>
                            <li>
                                <a href="/home?p=${CurrentPage-1}" class="waves-effect" title='Previous Page'>
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                                         stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                                         class="feather feather-chevron-left">
                                        <polyline points="15 18 9 12 15 6"></polyline>
                                    </svg>
                                </a>
                            </li>
                            <c:forEach varStatus="i" begin="1" end="${maxPage}">
                                <li class="${currentPage == i.index ? 'active' : ''}">
                                    <a href="/home?p=${i.index}" class="waves-effect">${i.index}</a></li>
                                <li>
                            </c:forEach>

                                <a href="/home?p=${currentPage+1}" class="waves-effect" title="Next Page">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                                         stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                                         class="feather feather-chevron-right">
                                        <polyline points="9 18 15 12 9 6"></polyline>
                                    </svg>
                                </a>
                            </li>
                            <li>
                                <a href="/home?p=${maxPage}" class="waves-effect" title='Last Page'>
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none"
                                         stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                                         class="feather feather-chevrons-right">
                                        <polyline points="13 17 18 12 13 7"></polyline>
                                        <polyline points="6 17 11 12 6 7"></polyline>
                                    </svg>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
            <div class="clear"></div>
        </div>

        <script type="text/javascript">
            $(document).on('change', '#category_id', function (event) {
                event.preventDefault();
                id = $(this).val();
                $('#sub_category_id').html(sub_categories_array["'" + id + "'"]);
            });
            $(document).on('change', '#sub_categories_', function (event) {
                window.location.href = site_url + '/videos/category/<?php echo($_GET["id"]) ?>/' + $('#sub_categories_').val();
            });
        </script>
        <script type="text/javascript">
            function GoToStock() {
                var keyword = $('#stock_keyword').val();
                var min_price = $('#min_price').val();
                var max_price = $('#max_price').val();
                var license = $('#license').val();
                var link = "{{LINK videos/stock}}?page_id=1&keyword=" + keyword + "&min_price=" + min_price + "&max_price=" + max_price + "&license=" + license;
                location.href = link;
            }
        </script>
    </div>
    <input type="hidden" id="main-url" value="{{MAIN_URL}}">
</div>
</div>
</div>

<!-- END MAIN CONTENT -->

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
<script>
    $('.search-icon').on('click', function(event) {
        event.preventDefault();
        $('.search-bar').toggleClass('hidden');
    });

    $('#open_slide').on('click', function(event) {
        event.preventDefault();
        $('body').toggleClass('side_open');
    });



    current_width = $(window).width();
    if(current_width <= 1251) {
        $('#open_slide').on('click', function(event) {
            $('body').addClass('mobi_side_open');
        });
    }

    //$('.sidenav-overlay').on('click', function() {
    //	$('body').removeClass('side_open');
    //});

    $('#search-bar').keyup(function(event) {
        var search_value = $(this).val();
        var search_dropdown = $('.search-dropdown');
        if (search_value == '') {
            search_dropdown.addClass('hidden');
            search_dropdown.empty();
            return false;
        } else {
            search_dropdown.removeClass('hidden');
        }
        $.post('https://demo.playtubescript.com/aj/search', {search_value: search_value}, function(data, textStatus, xhr) {
            if (data.status == 200) {
                search_dropdown.html(data.html);
            } else {
                search_dropdown.addClass('hidden');
                search_dropdown.empty();
                return false;
            }
        });
    });

    jQuery(document).click(function(event){
        if (!(jQuery(event.target).closest(".search-dropdown").length)) {
            jQuery('.search-dropdown').addClass('hidden');
        }
    });
</script>

<script>
    $(window).on("popstate", function (e) {
        location.reload();
    });
    $(document).ready(function() {
        $("img[data-src]").unveil(200);
    });

    $(document).ready(function(){
        // $('.share-video a').click(function (e) {
        //     e.preventDefault();
        // });
        $('.dropdown-toggle').dropdown()

        $("#toggle-mode").change(function(event) {
            var mode = 'day';

            if ($(this).prop( "checked" ) === true) {
                mode = 'night';
                $('<link>',{
                    rel:'stylesheet',
                    href:'<c:url value="/resources/css/night-mode.css"/>',
                    class:'night-mode-css'
                }).insertAfter('link#style-css');
                // $('.logo-img img').attr('src', 'https://demo.playtubescript.com/themes/youplay/img/logo-light.png?cache=123');
            }
            else{
                $(".night-mode-css").remove();
                // $('.logo-img img').attr('src', 'https://demo.playtubescript.com/themes/youplay/img/logo.png?cache=123');
            }


            $.post('https://demo.playtubescript.com/', {mode: mode}, function(data, textStatus, xhr) { /* pass */ });
        });

        $("li.toggle-mobile-mode").click(function(event) {
            var mode = $(this).attr('data-mode');

            $.post('<c:url value="/home"/> ', {mode: mode}, function(data, textStatus, xhr) {
                location.reload();
            });
        });
    });
</script>


</body>

</html>
