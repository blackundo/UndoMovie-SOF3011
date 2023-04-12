<%--
  Created by IntelliJ IDEA.
  User: blackundo
  Date: 13/04/2023
  Time: 01:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/commons/taglib.jsp" %>

<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
  <meta charset="UTF-8">

  <!-- Custom CSS -->
  <link rel="stylesheet" href="<c:url value='/resources/admin/css/style2.css' /> ">

  <!-- Boxicons CDN Link -->
  <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>


  <!-- Bootstrap v5.0.2 -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
          crossorigin="anonymous"></script>

  <!-- jQuery v3.6.0 -->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"
          integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

  <!-- DataTables -->
  <link rel="stylesheet" type="text/css" href="<c:url value='/resources/admin/datatables/datatables.min.css' />"/>
  <script type="text/javascript" src="<c:url value='/resources/admin/datatables/datatables.min.js' />"></script>

  <!-- CKEditor -->
  <script src="<c:url value='/resources/admin/ckeditor/ckeditor.js' />"></script>

  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title><dec:title default="Admin Page"/></title>
</head>
<body>
<div class="main">
  <%@include file="/commons/admin/nav.jsp" %>

  <section class="home-section">
    <dec:body/>

  </section>
</div>

<!-- Custom JS -->
<script type="text/javascript" src="<c:url value='/resources/admin/js/script.js' />"></script>

<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</body>
</html>