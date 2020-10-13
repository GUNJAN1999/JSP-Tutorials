<%@page import="java.util.*" %>
<html>
<body>
<!-- step-1 :  create html form -->
<form action="todo-demo.jsp">
ADD ITEMS : <input type="text" name="theItem"/>
<input type="submit" value="Submit"/>
</form>
<hr/>
<!-- step-2 :add new item to todo list -->
<%
List<String> items=(List<String>)session.getAttribute("myToDoList");
if(items==null)
{
	items=new ArrayList<String>();
	session.setAttribute("myToDoList",items);
}
//see if there is a form data to add
String theItem=request.getParameter("theItem");
if(theItem!=null)
{
	items.add(theItem);	
}

%>
<!-- step-3 :display all todo item from session -->
<b>TO-DO ITEMS</b>
<hr/>
<ol>
<%
for(String a:items)
{
	out.println("<li>"+a+"</li>");
}
%>
</ol>
</body>
</html>