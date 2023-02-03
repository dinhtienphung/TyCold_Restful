<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
    <link href='<c:url value="/resources/css/main.css" />' rel='stylesheet'>
    <link href='<c:url value="/resources/css/delete.css" />' rel='stylesheet'>
    <link href='<c:url value="/resources/css/home.css" />' rel='stylesheet'>
    <script type="text/javascript" src="/resources/js/time.js"></script>
    <link href='<c:url value="/resources/images/logocat.png" />' rel='icon'>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript" src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="webjars/jquery/3.6.0/jquery.js" />
    </script>
    <script type="text/javascript" src="webjars/popper.js/2.9.3/umd/popper.min.js" />
    </script>
    <title>${type}</title>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container" style="margin-top: 20px;  display: flex; justify-content: center;">
        <div class="col-md-4">
            <form:form action="${action}" method="POST" modelAttribute="book">
                <fieldset class="scheduler-border">
                    <legend class="scheduler-border">
                    </legend>
                    <c:if test="${type.equals('Update Book')}">
                        <div class="form-group">
                            <label class="control-label">ID</label>
                            <form:input path="id" type="text" class="form-control" id="id" placeholder="ID"
                                disabled="true" />
                            <form:hidden path="id" />
                            <form:hidden path="bookDetails.id" />
                        </div>
                    </c:if>
                    <div class="form-group">
                        <label class="control-label">Name (*)</label>
                        <form:input path="name" type="text" class="form-control" placeholder="Name" />

                        <small style="color: red;">
                            <form:errors path="name" class="text-error" />
                        </small>
                    </div>
                    <div class="form-group">
                        <label class="control-label">Author (*)</label>
                        <form:input path="author" type="text" class="form-control" placeholder="Author" />
                        <small style="color: red;">
                            <form:errors path="author" class="text-error" />
                        </small>
                    </div>
                    <div class="form-group">
                        <label class="control-label">ISBN (*)</label>
                        <form:input path="bookDetails.isbn" type="text" class="form-control" placeholder="ISBN"
                            default="1" required="true" />
                    </div>
                    <div class="form-group">
                        <label class="control-label">Price (*)</label>
                        <form:input path="bookDetails.price" type="number" step="any" min="1" class="form-control"
                            placeholder="Price" required="true" />
                    </div>
                    <div class="form-group">
                        <label class="control-label">Number Of Pages (*)</label>
                        <form:input path="bookDetails.numberOfPage" type="number" min="1" class="form-control"
                            placeholder="Number Of Page" required="true" />
                    </div>
                    <div class="form-group">
                        <label class="control-label">Public Date (*)</label>
                        <form:input path="bookDetails.publishDate" type="date" class="form-control"
                            placeholder="Public Date" required="true" value="2023-01-23" />
                    </div>
                    <div class="form-group">
                        <label class="control-label">Category (*)</label>

                        <form:select path="category.id" class="form-control">
                            <form:option value="0" label="--- Select ---" />
                            <form:options items="${categoryList}" />
                        </form:select>
                        <small style="color: red;">
                            <c:out value="${message}" />
                        </small>
                    </div>
                    <br>
                    <button class="btn btn-primary btn-sm" type="submit"
                        style="width: 432px; height: 38px; font-size: 110%;">Save</button>
                </fieldset>
            </form:form>
        </div>
    </div>
</body>

</html>