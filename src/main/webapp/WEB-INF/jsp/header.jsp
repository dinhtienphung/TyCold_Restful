<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<link href="../webjars/bootstrap/5.1.3/css/bootstrap.min.css"
      rel="stylesheet">
      <link href="/resources/css/main.css" rel="stylesheet">
<html>
<div class="head_nav">
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="/TamNgo_Date8/" style="padding-left: 10px;">Book Manager</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
      aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <a class="nav-link" href="newBook">Add book</a>
        </li>
        <li class="nav-item active">
          <a class="nav-link" href="category">Category</a>
        </li>
      </ul>
    </div>
  </nav>
</div>

</html>