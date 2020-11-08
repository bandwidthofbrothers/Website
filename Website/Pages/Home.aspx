<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Website.Pages.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel2" runat="server">
        <p style="font-family: 'Wide Latin'; font-size: large">Welcome to Geetha's Homemade Curries</p>
        <p><asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/Slogan.png" /> </p>
    </asp:Panel> 

    <asp:Panel ID="Panel1" runat="server">
        <p>Login to place an order</p>
        <p><asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/Login Icon with text.png" Height="57px" Width="80px" PostBackUrl="~/Login.aspx" />&nbsp; </p>
    </asp:Panel>

    <asp:Panel ID="Panel3" runat="server">
        <p>Create an account</p>
        <p><asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Images/register-icon.png" PostBackUrl="~/Register.aspx" Height="77px" Width="82px" /></p>
    </asp:Panel>

    <asp:Panel ID="Panel4" runat="server">
        <p>Check out our menu</p>
        <p><asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/Images/Menu Icon 2.png" PostBackUrl="~/Pages/Menu.aspx" Height="62px" Width="67px" /></p>
    </asp:Panel>

</asp:Content>
