<html>

<body>
<h3> JSP BUILD-IN OBJECTS</h3>
Request user agent(to get too know the browser
<%= request.getHeader("User-Agent") %>
<hr/><hr/>
Request Language : <%=request.getLocale() %>
</body>

</html>