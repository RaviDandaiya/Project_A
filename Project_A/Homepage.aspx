<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="Project_A.Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online Assigament project</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="bootstrap/bootstrap.min.css" rel="stylesheet" />
    <link href="datatable/data/jquery.dataTables.min.css" rel="stylesheet" />
    <link href="fontawesome/font/font-awesome.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <style>
        body{
            font-family:Arial, Helvetica, sans-serif;
            background-image:url(images/rv4.jpg);
            background-repeat: no-repeat;
            height:500%;
            color:white;
        }
        h3{
            font-family:Arial;
            font-stretch: 1% 500%;
            font-size:40px;
            margin-left:50px;
        }
        .cad{
            color:white;
        }
       .pad{
           margin:0 20px;
           
           border-radius:6px;
           height:35px;
           width:100px;
           color:black;
       }
       .pad:hover{
           color:black;
       }
       
       section{
           margin-top:50px;
       }
       section .auto h1{
           margin:50px;
       }
       section .auto p{
           margin:50px;
       }
       footer{
           color:white;
       }
          footer .text a{
           color:white;
       }
       .setsize{
           height:620px;
           width:300px;
       }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
               <nav class="navbar">
                <h3>Attendance Management System</h3>
                <nav class="navbar navbar-expand-lg navbar-light">
                     <%-- <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>--%>
                 <div class="collapse navbar-collapse" id="navbarSupportedContent">
                     <ul class="navbar-nav mr-auto">
                           <li class="nav-item active pad">
                            <%-- <asp:LinkButton class="nav-item cad" href="adminlogin.aspx" ID="Linkbutton1" runat="server">Admin Login</asp:LinkButton>--%>
                           </li>
                           <li class="nav-item pad ">
                           <asp:LinkButton class="nav-item cad" href="stafflogin.aspx" ID="Linkbutton2" runat="server">Staff Login</asp:LinkButton>
                           </li>
                           <li class="nav-item pad">
                              <asp:LinkButton class="nav-item cad" href="userlogin.aspx" ID="Linkbutton3" runat="server">Student Login</asp:LinkButton>
                           </li>
                        
                 </ul>  
               </div>
             </nav>
            </nav>
        </div>
 <section id="main-content">
	<div class="main">
        <div class="col">
            <div class="auto">
                 <h1>Online <br /> Attendance Management System<br /> from Experts</h1>
                
           
             <h4> <p>If you any problem please contect us<br /> rvdandaiya07@gmail.com</p>
             </h4>

        </div>
	</div>
        </div>
</section>
         <footer>
                <blockquote class="blockquote text-center link">
                    <p>&copy All right Reversed <a class="footer" href="#" >Developed by Ravi</a></p>
                </blockquote>
         </footer>
    </form>
</body>
</html>
