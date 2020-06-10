

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <style type="text/css">
             body{
                width: 100%;
                height: auto;
                overflow: hidden;
                 background-image:url('images/pic3.jpg');
                background-size: cover;
                color: black;
            }
        .vertical-menu {
            text-align: center;
            position: absolute;
            float: right;
            top:45%;
            left: 30%;
            transform: translate(-50%, -50%);  
            width: 400px;
           
        }

.vertical-menu a {
    color: whitesmoke; 
    display: list-item; 
    padding: 40px; 
    text-decoration: none;
    font-size:60px;
      
    font-family: "Palatino Linotype","Book Antiqua",Palatino,serif;
    
}
.vertical-menu a:hover {   
    background-color: black; 
.vertical-menu a.active {
    background: rgba(76, 175, 80, 0.5);
     color:black;
}
      </style>
    </head>
    <body>
        <div class="vertical-menu" >
            <!--a href="index.html" class="active"><b>HOME</b></a-->
             <a href="MainPage.jsp"><b><i>Details</i></b></a>
  </div>
        
    </body>
</html>
