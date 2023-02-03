<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>

<head>
    <link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
    <link href='<c:url value="/resources/css/main.css" />' rel='stylesheet'>
    <link href='<c:url value="/resources/css/delete.css" />' rel='stylesheet'>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript" src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="webjars/jquery/3.6.0/jquery.js" />
    </script>
    <script type="text/javascript" src="webjars/popper.js/2.9.3/umd/popper.min.js" />
    </script>
    <title>Book Category</title>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<jsp:include page="header.jsp" />

<body>
    <div class="container" style="margin-top: 10px;">

        <c:if test="${type.equals('categories')}">
            <div class="col-xs-12 col-sm-12 col-md-10">
                <c:if test="${not empty categoryList}">
                    <table class="table">
                        <thead class="thead-dark">
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">Name</th>
                                <th scope="col">Description</th>
                            </tr>
                        </thead>
                        <tbody>
                        <button class="btn btn-sm btn-primary" style="margin-bottom: 10px;"
                                                        onclick="location.href='newCategory'">Add
                                                        Category</button>
                            <c:forEach var="category" items="${categoryList}" varStatus="index">
                                <tr>
                                    <th scope="row">${category.id}</th>
                                    <td>${category.name}</td>
                                    <td>${category.description}</td>
                                    <td>
                                        <button class="btn btn-sm btn-primary"
                                            onclick="location.href='editCategory/${category.id}'">Edit</button>
                                        <a class="btn btn-sm btn-danger" href="#iModal${category.id}"
                                            class="trigger-btn" data-toggle="modal" data-id="${category.id}?">Delete</a>
                                    </td>
                                    <div id="iModal${category.id}" class="modal fade">
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
                                                    <p>Do you really want to delete category "${category.name}"? This
                                                        category has "${listBook.size()}" books.</p>
                                                </div>
                                                <div class="modal-footer justify-content-center">
                                                    <button type="button" class="btn btn-secondary"
                                                        data-dismiss="modal">Cancel</button>
                                                    <button type="button" class="btn btn-danger"
                                                        onclick="location.href='deleteCategory/${category.id}'">Delete</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </tr>
                            </c:forEach>

                        </tbody>
                    </table>
                </c:if>
                <c:if test="${categoryList.size() == 0}">
                    <br>
                    <div class="alert alert-warning">
                        There is no data, please search again with new keyword... Love <3 </div>
                </c:if>
            </div>
        </c:if>

        <c:if test="${type.equals('newCategories')}">
            <div class="col-md-4">
                <form:form action="newCategory" method="POST" modelAttribute="category">
                    <fieldset class="scheduler-border">
                        <legend class="scheduler-border">
                            <c:out value="${msg}" />
                        </legend>
                        <div class="form-group">
                            <label class="control-label">Description (*)</label>
                            <form:input path="description" type="text" class="form-control" placeholder="Description"
                                required="true" />
                        </div>
                        <div class="form-group">
                            <label class="control-label">Name (*)</label>
                            <form:input path="name" type="text" class="form-control" placeholder="Name Of Category"
                                required="true" />
                        </div>
                        <br>
                        <button class="btn- btn-primary" type="submit">Save</button>
                    </fieldset>
                </form:form>
            </div>
    </div>
    </c:if>

    <c:if test="${type.equals('update')}">
        <form:form action="updateCategory" method="POST" modelAttribute="category">
            <div class="form-group">
                <label class="control-label">ID</label>
                <form:input path="id" type="text" class="form-control" id="id" placeholder="ID" disabled="true" />
                <form:hidden path="id" />
            </div>

            <div class="form-group">
                <label class="control-label">Name (*)</label>
                <form:input path="name" type="text" class="form-control" placeholder="OrderDate" required="true" />
            </div>
            <div class="form-group">
                <label class="control-label">Description (*)</label>
                <form:input path="description" type="text" class="form-control" placeholder="Description" required="true" />
            </div>
            <br>
            <button class="btn- btn-primary" type="submit">Save</button>
        </form:form>
    </c:if>
</body>
<script src="<c:url value=" /resources/js/script.js" />"></script>

</html>