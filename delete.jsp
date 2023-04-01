<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>
            Deletion page
        </title>
        <style>
            #btn{
                background-color: whitesmoke;
                padding: 10px;
                font-family: georgia;
                border: aqua;
                border-left: double;
                border-right: double;
                border-bottom-style: outset;
                border-top-style: inset;
                color: #2980b9;
                border-color: yellowgreen;
                position: absolute;
                right: 45%;
                bottom: 65%;
            }
            div{
                font-family: georgia;
                font-size: 25;
                color: #000000;
                position: absolute;
                right: 35%;
                bottom: 75%;
                
            }
        </style>
    </head>
    <body>
        <div>
            <b><u>TO RETURN HOMEPAGE PRESS</u>:</b>
        </div>
        <table align="center">
        <form method="post" action="index.html">
            <tr>
                <td>
                    <input type="submit" name="btn" id="btn" value="HOME"></td>
            </tr>
        </form>
        </table>
</html>
<% 
    
    try
    {
        String Roll="";
        Roll=request.getParameter("Roll");
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","SYSTEM","manager");
        Statement st=con.createStatement();
        String sql="Delete from student1 where Roll='"+Roll+"'";
        int i=st.executeUpdate(sql);
        if (i==1)
            out.print("Deletion successful");
        else
            out.print("Deletion Failed"+Roll);
        con.close();    
    }
    catch(Exception e)
            {
                out.print(e.toString());
            }
    %>