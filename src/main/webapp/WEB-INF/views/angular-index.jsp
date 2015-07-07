<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>angular-index.jsp</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/app.css"/>
</head>
<body ng-app="myApp">
  <ul class="menu">
    <li><a href="#/home">home</a></li>
    <li><a href="#/help">help</a></li>
  </ul>

  <div ng-view></div>

  <div>Angular seed app: v<span app-version></span></div>

  <!-- In production use:
  <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.0.4/angular.min.js"></script>
  -->
  <script src="${pageContext.request.contextPath}/resources/lib/angular/angular.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/app.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/services.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/controllers.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/filters.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/directives.js"></script>
</body>
</html>
