<html>
<head>
<title>Confirmation Page</title>
</head>
<body>
<%
String favLang=request.getParameter("favoriteLanguage");
Cookie theCookie=new Cookie("myApp.favoriteLanguage",favLang);
theCookie.setMaxAge(1200*24*365);
response.addCookie(theCookie);
%>
<h3>Congratulations!!</h3><hr/><hr/>
We have set your favorite language to : ${param.favoriteLanguage }

<a href="cookies-homepage.jsp">Return to Homepage</a>
</body>

</html>