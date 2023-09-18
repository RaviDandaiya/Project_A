<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="Project_A.adminlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../bootstrap/bootstrap.min.css" rel="stylesheet" />
    <link href="datatable/data/jquery.dataTables.min.css" rel="stylesheet" />
    <link href="fontawesome/font/font-awesome.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <style>
.box{
     border: 1px solid;
  padding: 10px;
  box-shadow: 10px 10px 10px 10px #888888;
}
    </style>
</head>
<body style="background-color:mediumpurple";>
    <form id="form1" runat="server">
         <div class="container">
        <div class="row">
            
           <div class="col-md-6 mx-auto">
                <div class="card box ">
                     <div class="card-body ">
                         <div class="row">
                             <div class="col">
                                    <center>
                                        <img src="../images/l.png"  width="150px"/>
                                    </center>
                             </div>
                         </div>
                         <div class="row">
                             <div class="col">
                                    <center>
                                        <h3>Admin Login </h3>              
                                    </center>
                             </div>
                         </div>
                          <div class="row">
                             <div class="col">
                                 <hr/>
                             </div>
                         </div>
                          <div class="row">
                             <div class="col">
                                  <label>Email ID:</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Email ID"></asp:TextBox>
                                 </div>
                                 <label>Password</label>
                                 <div class="form-group">
                                     <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                 </div>
                                 <div class="form-group">
                                     <asp:LinkButton ID="Button1" class="btn btn-primary btn-block btn-lg" runat="server" Text="Login" OnClick="Button1_Click" /></asp:LinkButton>
                                 </div>         
                             </div>
                         </div>
                     </div>
                     <a href="Homepage.aspx"><< back to home</a>
                      </div>
                </div>
        </div>
    </div>
    </form>
</body>
</html>
