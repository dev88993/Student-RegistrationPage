<%-- 
    Document   : insert
    Created on : 11 Jun, 2022, 12:18:16 AM
    Author     : USER
--%>

<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<html>
    <head>
        <script type="text/javascript" language="javascript">
            funtion fun()
            {
                
            }
        </script>
    </head>
</html>
<%  
    try
    {
    Class.forName("oracle.jdbc.driver.OracleDriver");
    String Roll=request.getParameter("t1");
    String Name=request.getParameter("t2");
    String Address=request.getParameter("t3");
    String Qualification=request.getParameter("Degree");
    String Gender=request.getParameter("r");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","SYSTEM","manager");
    Statement st=con.createStatement();
    String sql="insert into student1 values ('" +Roll+ "','" +Name+ "','" +Address+ "','" +Qualification+ "','" +Gender+ "')";
    int i=st.executeUpdate(sql);
    if (i==1)
        out.println("Insertion successful");
    else
        out.println("Insertion declined");
    con.close();
    }
    catch(Exception e)
    {
        out.println("Insertion declined");
    }
%>
