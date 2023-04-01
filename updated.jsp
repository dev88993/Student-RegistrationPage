<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>

<%
    try
    {
        String a="",b="",c="",d="",e="";
        int flag=1;
        Class.forName("oracle.jdbc.driver.OracleDriver");
        a=request.getParameter("t1");
        b=request.getParameter("t2");
        c=request.getParameter("t3");
        d=request.getParameter("t4");
        e=request.getParameter("rd");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","SYSTEM","manager");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from student1");
        while(rs.next())
        {
            if(a.equals(rs.getString(1)))
            {
                String sql="Update student1 set Name='"+b+"',Address='"+c+"',Qualification='"+d+"',Gender='"+e+"' where Roll='"+a+"'";
                int m=st.executeUpdate(sql);
                if(m==1)
                    flag=1;
                else
                {
                    flag=0;
                    break;
                }
            }
            else
                flag=0;
        }   
        if(flag==1)
            out.println("Updation Successful");
        else
            out.println("Updation Declined");
        rs.close();
        con.close();
        }
    
    catch(Exception e)
             {
             out.println(e.toString());             
             }
    %>
