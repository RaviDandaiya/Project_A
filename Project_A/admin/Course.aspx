<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="Course.aspx.cs" Inherits="Project_A.Course" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <center>
<div style="background-image: url('images/bg.jpg'); width: 1200px; height: 477px">
    <asp:SqlDataSource runat="server" ConnectionString="<%$ ConnectionStrings:rv1 %>" ProviderName="<%$ ConnectionStrings:rv1.ProviderName %>" SelectCommand="SELECT [CID], [CourseName] FROM [Course]" ID="ctl00"></asp:SqlDataSource>
    <table align="center" style="width: 386px">
        <tr>
            <td colspan="2" align="center">
                <h2>
                    Add Course</h2>
                <br />
            </td>
            
        </tr>
        <tr>
            <td>
                <b>Course: &nbsp;&nbsp;&nbsp;</b>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="44px" Width="230px"
                    CausesValidation="True" placeholder="Course Name"></asp:TextBox>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" 
                    ForeColor="Red" ErrorMessage="Enter Course Name"></asp:RequiredFieldValidator></td>
            
        </tr>
        <tr>
            <td colspan="2" align="center" >
                <asp:Button ID="Button1" runat="server" Text="Add" Height="44px"
                    Width="80px" Font-Bold="True" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"  DataKeyNames="CID"
                    OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit"
                    OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing"
                    OnRowUpdating="GridView1_RowUpdating"  PageSize="4" Height="202px" Width="257px" >
                    <Columns>
                        <asp:TemplateField HeaderText="Course">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("CourseName") %>' ></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("CourseName") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                             <asp:CommandField CausesValidation="false" ButtonType="Link" ShowEditButton="true" ShowDeleteButton="true" HeaderText="Operation"/>
                                
                   </Columns>



                </asp:GridView>


            </td>
        </tr>
    </table>
    <div align="center">


        <br />
    <br />
    <br />
    <br />
    <br />
    </div>
   </div>
</center>


</asp:Content>
