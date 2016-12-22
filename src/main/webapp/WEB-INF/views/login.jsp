<head>
 <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/style2.css">
</head>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <form action="j_spring_security_check" method="post">
   <table>
     <tr>
       <td>Please enter your username </td>
       <td><input type="text" name="j_username"></td>
     </tr>
     <tr>
      <td>Please enter your password</td>
      <td><input type="password" name="j_password"></td>
     </tr>
     <tr>
      <td><input type="submit" value="Login"></td>
     </tr>
   </table>
 </form>
</body>
</html>