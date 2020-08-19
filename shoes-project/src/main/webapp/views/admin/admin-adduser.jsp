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
    <p class="example formHeader" style="padding: 10px;">Nhập thông tin người dùng</p>
    <h1
      style="color: black;  padding: 5px; margin: 10px; text-align: center; ">
      Thêm mới tài khoản</h1>
    <form action="./UserController?id=<c:out value='${user.id }'/>" method="post" name="user" style="padding: 50px 0px 0px 530px;">
      <table border="4" style="border-collapse: collapse">
        <!-- <input type="hidden" name=""
          value="" /> -->
        <tr>
          <td class="example inputLabel">
            <div class="batbuoc">Firstname:</div>
          </td>
          <td><input batbuoc="true" inputName="Tên"
            size="50" type="text" name="firstName"
            value="<c:out value='${user.firstName }'/>" /></td>
        </tr>
        <tr>
          <td class="inputLabel">
            <div class="batbuoc">LastName:</div>
          </td>
          <td><input batbuoc="true" inputName="Họ" type="text" size="50"
            name="lastName" value="<c:out value='${user.lastName }'/>"/></td>
        </tr>
        <tr>
          <td class="example inputLabel">email:</td>
          <td><input size="50"
            type="text" name="email" value="<c:out value='${user.email }'/>"/></td>
        </tr>
        <tr>
          <td class="inputLabel">
            <div class="batbuoc">PassWord:</div>
          </td>
          <td><input size="50"
            value="<c:out value='${user.passWord }'/>"  maxlength="20"
            size="22" type="passWord" name="passWord" /></td>
        </tr>
        <tr>
          <td colspan="2" align="center"><input type="reset"
            value="Nhập lại" /> <input type="submit" value="Lưu" /> 
            <button id="cancelButton"><a href="UserController?action=listUser">Thoát</a></button></td>
        </tr>
      </table>
    </form>
</body>
</html>