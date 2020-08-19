<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>HaiDo.com</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
  <style type="text/css">
    a:hover{
      text-decoration-line: none;
    }
    a{
      border-width: 0;
      border-color: black;
    }
  </style>
</head>
<body>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  
  
  <!-- Links -->
  <ul class="navbar-nav" >
    <li class="nav-item">
      <a class="nav-link" href="./UserController?action=listUser">Quản lí tài khoản</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="./ProductController?action=listProduct">Quản lí sản phẩm</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="./Bill?action=listBill">Quản lí Đơn Hàng</a>
    </li>
  </ul>

  <!-- Brand/logo -->
  
  <div class="container" style="background-color: #343a40; float: right; padding-left: 800px; width: 500px;">
    <div class="dropdown" style="background-color: #343a40;">
      <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" style="background-color: white; color: black; border-color: black; box-shadow: 1px 1px 1px black;">
        <a class="navbar-brand" href="#" >
          <img src="./views/admin/KhanhBua.jpg" alt="logo" style="width:40px;">
        </a>
          admin 
      </button>
      <div class="dropdown-menu dropdown-menu-right">
        <a class="dropdown-item" href="#">Xem tin cá nhân</a>
        <a class="dropdown-item" href="#">Sửa thông tin cá nhân</a>
        <a class="dropdown-item" href="./views/wed/account.jsp">Đăng xuất</a>
      </div>
    </div>
  </div>
</nav>


<!-- body danh sach bang user-->
<div style="margin-left: 20%; margin-right: 20%;">
    <h1 style="padding: 30px; text-align: center;">Danh Sách Tài khoản người dùng</h1>
    <input class="form-control" id="myInput" type="text" placeholder="Search..">
  <br>
    <button type="" class="btn btn-primary" style="margin-left: 40px;"><a href="./UserController?action=insert" style="color: white;">Thêm mới</a></button>
    
      <table class="table table-hover" style="margin: 40px; width: 900px">
        <thead>
          <tr>
            <th>ID</th>
            <th>Firstname</th>
            <th>Lastname</th>
            <th>Email</th>
            <th>PassWord</th>
            <th></th>
          </tr>
        </thead>
        <tbody id="myTable">
        	<c:forEach items="${users}"  var="user">
	          <tr>
	            <td><c:out value="${user.id }"/></td>
	            <td><c:out value="${user.firstName }"/></td>
	            <td><c:out value="${user.lastName }"/></td>
	            <td><c:out value="${user.email }"/></td>
	            <td><c:out value="${user.passWord }"/></td>
	            <td colspan="2" align="center"><button><a href="./UserController?action=edit&id=<c:out value="${user.id }"/>" style="color: black;">Sửa</a></button> <button><a href="./UserController?action=delete&id=<c:out value="${user.id }"/>" style="color: black;">Xóa</a></button> </td>
	          </tr>
          	</c:forEach>
        </tbody>
      </table>
</div>
<script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>    
</body>
</html>