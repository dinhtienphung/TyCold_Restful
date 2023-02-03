<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
<head>
    <link href='<c:url value="/resources/css/delete.css" />' rel='stylesheet'>
    <link href='<c:url value="/resources/css/home.css" />' rel='stylesheet'>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript" src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="webjars/jquery/3.6.0/jquery.js" />
    </script>
    <script type="text/javascript" src="webjars/popper.js/2.9.3/umd/popper.min.js" />
    </script>
    <title>Book Manager</title>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<jsp:include page="header.jsp" />
<body>
    <div class="container" style="margin-top: 20px;">
        <div class="row">
            <div class="col-xs-12 col-sm-8 col-md-6">
                <form:form action="search" method="get">
                    <div class="input-group">
                        <input name="searchInput" type="text" class="form-control"
                            placeholder="Search by name or author..." />
                        <span class="input-group-btn">
                            <button class="btn- btn-primary" style="height: 38px;" type=" submit">Search</button>
                        </span>
                    </div>
                </form:form>
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-10">
            <c:if test="${not empty bookList}">
                <table class="table">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Name</th>
                            <th scope="col">Author</th>
                            <th scope="col">ISBN</th>
                            <th scope="col">Price</th>
                            <th scope="col">Publish Date</th>
                            <th scope="col">Category</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="book" items="${bookList}" varStatus="index">
                            <tr>
                                <th scope="row">${book.id}</th>
                                <td>${book.name}</td>
                                <td>${book.author}</td>
                                <td>${book.bookDetails.isbn}</td>
                                <td>${book.bookDetails.price} &#65284</td>
                                <td>${book.bookDetails.publishDate}</td>
                                <td>${book.category.name}</td>
                                <td>
                                    <button class="btn btn-sm btn-primary"
                                        onclick="location.href='edit/${book.id}'">Edit</button>
                                    <a class="btn btn-sm btn-danger" href="#myModal${book.id}" class="trigger-btn"
                                        data-toggle="modal" data-id="${book.id}?">Delete</a>
                                </td>

                                <div id="myModal${book.id}" class="modal fade">
                                    <div class="modal-dialog modal-confirm">
                                        <div class="modal-content">
                                            <div class="modal-header flex-column">
                                                <div class="icon-box">
                                                    <i class="fal fa-times">&#129409;</i>
                                                </div>
                                                <h4 class="modal-title w-100">Are you sure?</h4>
                                                <button type="button" class="close" data-dismiss="modal"
                                                    aria-hidden="true">&times;</button>
                                            </div>
                                            <div class="modal-body">
                                                <p>Do you really want to delete book "${book.name}"? This process cannot
                                                    be undone.</p>
                                            </div>
                                            <div class="modal-footer justify-content-center">
                                                <button type="button" class="btn btn-secondary"
                                                    data-dismiss="modal">Cancel</button>
                                                <button type="button" class="btn btn-danger"
                                                    onclick="location.href='delete/${book.id}'">Delete</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </tr>

                        </c:forEach>
                    </tbody>
                </table>

            </c:if>
            <c:if test="${bookList.size() == 0}">
                <br>
                <div class="alert alert-warning">
                    There is no data, please search again with new keyword... Love <3 </div>
            </c:if>
        </div>
    </div>
</body>
<script src='<c:url value="/resources/js/script.js"/>'></script>
</html>