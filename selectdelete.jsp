<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Select</title>
        <script type="text/javascript" lang="javascript"> 
         function fun()
         {
             alert(output);
         }
        </script>
        <style>
            select{
                font-family: georgia;
                font-size: 20;
                border-left: double;
                border-right: double;
                border-bottom-style: inset;
                border-top-style: outset;
                color: blue;
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
            a{
                font-family: georgia;
                font-size: 25;
                color: blueviolet;
                position: absolute;
                right: 35%;
                bottom: 67%;
                border-style: inset;
                height: 5%;
                background-color: aqua;
            }
            
        </style>
    </head>
    <body>
        <form name="f" method="post" action="delete.jsp">
    <center>
        <h1><B><i><u>Select roll number you want to Delete :</u></i></u></h1>
        <br>
        <br>
        <font size="6" face="tohama" color="#1B4F72"><b>Roll&nbsp;
            &nbsp;<select name="Roll">
        <option>-Select-</option>
                        <%
                            try
                            {
                            Class.forName("oracle.jdbc.driver.OracleDriver");
                            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","SYSTEM","manager");
                            Statement st=con.createStatement();
                            String sql="select * from student1";
                            ResultSet rs=st.executeQuery(sql);
                            while (rs.next())
                            {  
                        %>
                        <option><%=rs.getString("Roll")%></option>
                        <%
                            
                            }
                            }
                            catch (Exception e)
                            {
                                
                            }
                        
                        
                        %>
            </select>
            
            <p align="CENTER">
                
                <input type="submit" name="btn1" id="btn1" value="DELETE" onclick="fun()">
            
        </form>

    </body>
</html>
