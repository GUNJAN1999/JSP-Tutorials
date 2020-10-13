<html>

<body>
<h3>Training Portal</h3>
<hr/><hr/>
<%
String favLang="JAVA";
Cookie[] theCookie=request.getCookies();
if(theCookie!=null)
{
	for(Cookie tempCookie:theCookie)
	{
		if("myApp.favoriteLanguage".equals(tempCookie.getName()))
		{
			favLang=tempCookie.getValue();
			break;
		}
			
	}
}

%>
<hr/><hr/>
I KNOW YOUR FAVORITE LANGUAGE IS : <%=favLang %>
<hr/><hr/>
Want to change your favorite language <a href="cookies-personalize-form.html">CLICK HERE</a>
<hr/><hr/>
</body>

</html>