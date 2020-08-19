<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  
  
  <!-- Links -->
  <ul class="navbar-nav" >
    <li class="nav-item">
      <a class="nav-link" href="../../UserController?action=listUser">Quản lí tài khoản</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="../../ProductController?action=listProduct">Quản lí sản phẩm</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="../../Bill?action=listBill">Quản lí Đơn Hàng</a>
    </li>
  </ul>

  <!-- Brand/logo -->
  
  <div class="container" style="background-color: #343a40; float: right; padding-left: 800px; width: 500px;">
    <div class="dropdown" style="background-color: #343a40;">
      <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" style="background-color: white; color: black; border-color: black; box-shadow: 1px 1px 1px black;">
        <a class="navbar-brand" href="#" >
          <img src="KhanhBua.jpg" alt="logo" style="width:40px;">
        </a>
          admin 
      </button>
      <div class="dropdown-menu dropdown-menu-right">
        <a class="dropdown-item" href="#">Xem tin cá nhân</a>
        <a class="dropdown-item" href="#">Sửa thông tin cá nhân</a>
        <a class="dropdown-item" href="../wed/account.jsp">Đăng xuất</a>
      </div>
    </div>
  </div>
</nav>

</body>
</html>