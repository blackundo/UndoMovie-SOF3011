<%--
  Created by IntelliJ IDEA.
  User: blackundo
  Date: 13/04/2023
  Time: 01:48
  To change this template use File | Settings | File Templates.
--%>
<div class="sidebar">
    <a href="/home" class="logo-details" style="text-decoration: none;">
        <i class='bx bx-camera-movie' style="color:red"></i>
        <span class="logo_name" style="text-size:17px">ADMIN</span>
    </a>
    <hr style="margin: 0 20px; opacity: .25;">
    <ul class="nav-links">
        <li>
            <a href="/admin">
                <i class='bx bx-grid-alt'></i>
                <span class="link_name">Dashboard</span>
            </a>
            <ul class="sub-menu blank">
                <li><a class="link_name" href="#">Dashboard</a></li>
            </ul>
        </li>
        <li>
            <a href="/admin/movie">
                <i class='bx bx-movie-play'></i>
                <span class="link_name">Video</span>
            </a>
            <ul class="sub-menu blank">
                <li><a class="link_name" href="#">Video</a></li>
            </ul>
        </li>
        <li>
            <a href="/admin/category">
                <i class='bx bxs-category'></i>
                <span class="link_name">Danh mục</span>
            </a>
            <ul class="sub-menu blank">
                <li><a class="link_name" href="#">Danh mục</a></li>
            </ul>
        </li>
        <li>
            <a href="/admin/user">
                <i class='bx bxs-user-account'></i>
                <span class="link_name">Người dùng</span>
            </a>
            <ul class="sub-menu blank">
                <li><a class="link_name" href="#">Người dùng</a></li>
            </ul>
        </li>
        <li class="logout">
            <a href="#">
                <i class='bx bx-log-out'></i>
                <span class="link_name">Đăng xuất</span>
            </a>
            <ul class="sub-menu blank">
                <li><a class="link_name" href="#">Logout</a></li>
            </ul>
        </li>
        <li>
            <div class="profile-details">
                <div class="profile-content">
                    <img src="${avt}" alt="profile">
                </div>
                <div class="name-job">
                    <div class="profile_name">Boss</div>
                    <div class="job">Admin</div>
                </div>
                <a href="/logout"><i class='bx bx-log-out'></i></a>

            </div>
        </li>
    </ul>
</div>
