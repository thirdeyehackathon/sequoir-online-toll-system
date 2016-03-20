<html>
<head>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.lang.*"%>
</head>
<body>
<%
/*try
{
	String username=request.getParameter("cc");
	String password=request.getParameter("cn");

	Class.forName("com.mysql.jdbc.Driver").newInstance();
	String connectionURL="jdbc:mysql://localhost/ctlab2";
	Connection connection=DriverManager.getConnection(connectionURL,"root","");
	if(!connection.isClosed())
		{
		out.println("Successfully connected");
		}
	else
	{
		connection.close();
		
	}
}
	
		catch(Exception ex)
		{
		out.println("Unable to connect"+ex.toString());
		}*/
		Class.forName("com.mysql.jdbc.Driver").newInstance();

		Connection conn1 = null;
		Connection conn2 = null;
        Connection conn3 = null;
 
        try {
            // connect way #1
            out.println("entered");
            String url1 = "jdbc:mysql://localhost/ctlab2";
            String user = "root";
            String password = "secret";
 
            conn1 = DriverManager.getConnection(url1, user, password);
            out.println("entered");
            if (conn1 != null) {
                System.out.println("Connected to the database test1");
            }
 
            // connect way #2
            String url2 = "jdbc:mysql://localhost/ctlab2?user=root&password=";
            conn2 = DriverManager.getConnection(url2);
            if (conn2 != null) {
                System.out.println("Connected to the database test2");
            }
 
            // connect way #3
            String url3 = "jdbc:mysql://localhost/ctlab2";
            Properties info = new Properties();
            info.put("user", "root");
            info.put("password", "");
 
            conn3 = DriverManager.getConnection(url3, info);
            if (conn3 != null) {
                System.out.println("Connected to the database test3");
            }
        } 
        catch (SQLException ex) {
            out.println("An error occurred. Maybe user/password is invalid");
            ex.printStackTrace();
            out.println("Unable to connect"+ex.toString());
        }
   
%>
</body>
</html>