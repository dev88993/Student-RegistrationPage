<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<html>
    <head>
        <title> Student Update</title>
        <style>
            body{
                background: linear-gradient(120deg,#2980b9,aqua,aquamarine);
                height: 50vh;
                overflow: hidden;
            }
            mark{
                color: #8e44ad;
            }
            
            
            p{
                color: red;
            }
            input{
                font-family: georgia;
                font-size: 20;
               
                border-left: double;
                border-right: double;
                border-bottom-style: inset;
                border-top-style: outset;
                color: #3366ff;
                
            }
            textArea{
                font-family: georgia;
                font-size: 20;
                
                border-left: double;
                border-right: double;
                border-bottom-style: inset;
                border-top-style: outset;
                color: #3366ff;
            }
            select{
                font-family: georgia;
                font-size: 20;
                
                border-left: double;
                border-right: double;
                border-bottom-style: inset;
                border-top-style: outset;
                color: #3366ff;
            }
            #btn1{
                background-color: whitesmoke;
                padding: 5px;
                font-family: georgia;
                border: blueviolet;
                border-left: double;
                border-right: double;
                border-bottom-style: groove;
                border-top-style: groove;
                color: #8e44ad;
                border-color: red;
            }
            #btn2{
                background-color: whitesmoke;
                padding: 5px;
                font-family: georgia;
                border: aqua;
                border-left: double;
                border-right: double;
                border-bottom-style: outset;
                border-top-style: inset;
                color: #2980b9;
                border-color: yellowgreen;
            }
            form{
                box-shadow: 2px 3px 10px 10px graytext;
                background-image: url(D:/web/student.jpg);
                background-repeat: no-repeat;
                background-size: 100% 100%;
                height: 550;
            }
            a{
                font-family: georgia;
                font-size: 25;
                color: blueviolet;
                position: absolute;
                right: 35%;
                bottom: 23%;
                border-style: inset;
                height: 5%;
                background-color: aqua;
            }
        </style>
        
    </head>
    <body>
        <form method="post" action="updated.jsp" name="f">    
        <%  
    try
    {
        String a="",b="",c="",d="",r="";
        int flag=0;
    Class.forName("oracle.jdbc.driver.OracleDriver");
    String Roll=request.getParameter("Roll");
    r=Roll;
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","SYSTEM","manager");
    Statement st=con.createStatement();
    String sql=("select * from student1");
    ResultSet rs=st.executeQuery(sql);
    while (rs.next())
    {
        if(Roll.equals(rs.getString(1)))
        {
            flag=1;
            a=rs.getString(2);
            b=rs.getString(3);
            c=rs.getString(4);
            d=rs.getString(5);
            break;
        }
        else
            flag=0;
    }
    rs.close();
    con.close();
     if(flag==1)
     {
         %>
          <br><h1><i><u><p align="center" length="100"><mark>UPDATION PAGE</mark></i></u></h1>
                  
     <table align="center">
    <tr>
        <td><font size="6" face="tohama" color="#1B4F72"><b>Roll:&nbsp;</td>
        <td>&nbsp;<input type="text" name="t1" value=<%= r%>></td>
    </tr>
    <tr>
        <td><font size="6" face="tohama" color="#1B4F72"><b>Name:&nbsp;</td>
        <td>&nbsp;<input type="text" name="t2"value=<%= a%>></td>
    </tr>
    <tr>
        <td><font size="6" face="tohama" color="#1B4F72"><b>Address:&nbsp;</td>
        <td>&nbsp;<input type="text" name="t3" value=<%= b%>></td>
    </tr>
    <tr>
        <td><font size="6" face="tohama" color="#1B4F72"><b>Qualification:&nbsp;</td>
        <td>&nbsp;<input type="text" name="t4" value=<%= c%>></td>
    </tr>
                <tr>
                    <td><font size="6" face="tohama" color="#1B4F72"><b>Gender:</td>
                    <td><input type="radio" name="rd" id="r1" value="Male">Male
                        <input type="radio" name="rd" id="r2" value="Female">Female
                        <input type="text" name="t5" value=<%= d%>></td>
                </tr>
                <tr>
                    <td colspan="2"><p align="right">
                            <input type="submit" name="btn1" id="btn1" value="UPDATE">
                    </td>
                </tr>
                </table>
        
         <%
     }
    }
    catch(Exception e)
    {
        out.println("Failed");
    }
   
        
%>
        </form>

        </body>
   
 </html>
