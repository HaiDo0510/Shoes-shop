<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
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

<!-- them moi san pham -->
  <div class="formBorder">
    <p class="example formHeader" style="padding: 10px;">Nhập thông tin sản phẩm</p>
    <h1
      style="color: black;  padding: 5px; margin: 10px; text-align: center; ">
      Thêm mới Sản phẩm</h1>
    <form action="./ProductController?id=<c:out value='${product.id }'/>" method="post" name="personForm" style="padding: 50px 0px 0px 530px;">
      <table border="4" style="border-collapse: collapse">
        <input type="hidden" name="personId"
          value="" />

        <tr>
          <td class="inputLabel">Image:</td>
          <td><input type="file" name="image"  value="<c:out value='${product.image}'/>" />
          </td>
        </tr>
        <tr>
          <td class="example inputLabel">
            <div class="batbuoc">Name:</div>
          </td>
          <td><input batbuoc="true" inputName="Tên"
            size="50" type="text" name="name"
            value="<c:out value='${product.name}'/>" /></td>
        </tr>
        <tr>
          <td class="inputLabel">
            <div class="batbuoc">Price:</div>
          </td>
          <td><input batbuoc="true" inputName="Họ" type="text" size="50"
            name="price" value="<c:out value='${product.price}'/>"/></td>
        </tr>
        
        <tr>
          <td colspan="2" align="center"><input type="reset"
            value="Nhập lại" /> <input type="submit" value="Lưu" /> 
            <button id="cancelButton"><a href="ProductController?action=listProduct">Thoát</a></button></td>
        </tr>
      </table>
    </form>
</body>
</html>