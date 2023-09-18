<%@ Page Title="" Language="C#" MasterPageFile="~/stud.Master" AutoEventWireup="true" CodeBehind="sattendance.aspx.cs" Inherits="Project_A.sattendance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  
    <center>
          <div style="background-image:url('../images/wh.jpg'); width: 1200px; align="center">
    <table align="center" style= "width: 386рх">
        <tr>
         <td align="center">
         <h3>Select:</h3>
     </td>
         <td align="center">
             <input type ="month" name="startDate" id="Text1"  class="date-picker" runat="server" value="" /> 
             <asp:Label ID="lb" runat="server" Text="Label"></asp:Label> </td>
        </tr>
         <tr>
             <td colspan="2" align="center">
                 <asp:Button ID="Button1" runat="server" Text="Select" Font-Bold="True"
                     Font-Size="Large" Height="44px" Width="103px" OnClick="Button1_Click1" />
          </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                 <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large"
                     ForeColor="#9900CC"></asp:Label>
             </td>
        </tr>
         <tr>
             <td colspan="2" align="center">
              <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large"
                  ForeColor="#9900CC" ></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                 <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large">
             </asp:Label>
      </td>
         </tr>
        </table>
             
              </div>
        </center>
                    

</asp:Content>
