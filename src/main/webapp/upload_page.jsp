<%--
  Created by IntelliJ IDEA.
  User: Feruz
  Date: 7/21/2023
  Time: 12:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Upload photo page</title>
    <link rel="stylesheet" href="/resources/css/upload_page.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

</head>
<body>
<form enctype="multipart/form-data" method="post">
    <label for="photo"><span>Click here to upload photo</span></label>
    <button class="btn btn-warning"><a href="${pageContext.request.contextPath}/">Back to home</a></button>
    <input type="file" name="photo" id="photo" class="form-control w-75">
    <input type="submit" value="Upload" class="btn btn-success my-3">
</form>
</body>
</html>
