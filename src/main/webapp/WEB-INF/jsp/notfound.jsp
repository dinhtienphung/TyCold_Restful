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
    <title>Book Not Found</title>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container" style="margin-top: 20px;  display: flex; justify-content: center;">
        <div class="modal-fade" display="true">
                                                        <div class="modal-dialog modal-confirm">
                                                            <div class="modal-content">
                                                                <div class="modal-header flex-column">
                                                                    <div class="icon-box">
                                                                        <i class="fal fa-times">&#129409;</i>
                                                                    </div>
                                                                    <h4 class="modal-title w-50">Book Not Found</h4>
                                                                </div>
                                                                <div class="modal-body">
                                                                    <p style="font-size: 110%;">This Book ID: ${id} is not exist! Please choose another!</p>
                                                                </div>
                                                                <div class="modal-footer justify-content-center">
                                                                    <button type="button" class="btn btn-primary"
                                                                        onclick="location.href='/TamNgo_Date8/'">Back to Book</button>
                                                                </div>
                                                            </div>
                                                        </div>
    </div>
</body>

</html>