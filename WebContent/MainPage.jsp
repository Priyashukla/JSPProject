
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MainPage</title>
    </head>
    <style type="text/css">
    body{
                width: 100%;
                height: auto;
                overflow: hidden;
                 background-image:url('images/pic13.jpg');
                background-size: cover;
                color: black;
            }
        .vertical-menu {
            text-align: center;
            position: absolute;
            float: right;
            top:45%;
            left: 50%;
            transform: translate(-50%, -50%);  
            width: 400px;
           
        }

.vertical-menu a {
    color: whitesmoke; 
    display: block; 
    padding: 40px; 
    text-decoration: none;
    font-size:30px;
    font-family: "Palatino Linotype","Book Antiqua",Palatino,serif;
    
}
.vertical-menu a:hover {   
    background-color: black; 
.vertical-menu a.active {
    background: rgba(7, 17, 8, 0.5);
     color:black;
}
      </style>
    </head>
    <body>
        <div class="vertical-menu">
            <a href="insert.jsp" class="active"><b>Add Detail</b></a>
            <a href="Show.jsp" class="active"><b>Show Detail</b></a>
            <a href="Update.jsp"><b><i>Update & Delete Detail</i></b></a>
            <a href="index.html"><b><i>Home</i></b></a>
  </div>
    </body>
        
    
</html>
