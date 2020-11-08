<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Management.aspx.cs" Inherits="Website.Pages.Management" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Pages/Management/ManageItems.aspx">Add New Item</asp:LinkButton>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="MenuItemID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Width="100%">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="MenuItemID" HeaderText="MenuItemID" ReadOnly="True" SortExpression="MenuItemID" />
            <asp:BoundField DataField="MenuItemName" HeaderText="MenuItemName" SortExpression="MenuItemName" />
            <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
            <asp:BoundField DataField="MenuItemPrice" HeaderText="MenuItemPrice" SortExpression="MenuItemPrice" />
            <asp:BoundField DataField="CurrentMenuItem" HeaderText="CurrentMenuItem" SortExpression="CurrentMenuItem" />
            <asp:BoundField DataField="MenuItemDescription" HeaderText="MenuItemDescription" SortExpression="MenuItemDescription" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:group22ConnectionString %>" DeleteCommand="DELETE FROM [MenuItem] WHERE [MenuItemID] = @MenuItemID" InsertCommand="INSERT INTO [MenuItem] ([MenuItemName], [Category], [MenuItemPrice], [CurrentMenuItem], [MenuItemDescription]) VALUES (@MenuItemName, @Category, @MenuItemPrice, @CurrentMenuItem, @MenuItemDescription)" SelectCommand="SELECT [MenuItemID], [MenuItemName], [Category], [MenuItemPrice], [CurrentMenuItem], [MenuItemDescription] FROM [MenuItem]" UpdateCommand="UPDATE [MenuItem] SET [MenuItemName] = @MenuItemName, [Category] = @Category, [MenuItemPrice] = @MenuItemPrice, [CurrentMenuItem] = @CurrentMenuItem, [MenuItemDescription] = @MenuItemDescription WHERE [MenuItemID] = @MenuItemID">
        <DeleteParameters>
            <asp:Parameter Name="MenuItemID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MenuItemName" Type="String" />
            <asp:Parameter Name="Category" Type="String" />
            <asp:Parameter Name="MenuItemPrice" Type="Decimal" />
            <asp:Parameter Name="CurrentMenuItem" Type="Byte" />
            <asp:Parameter Name="MenuItemDescription" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="MenuItemName" Type="String" />
            <asp:Parameter Name="Category" Type="String" />
            <asp:Parameter Name="MenuItemPrice" Type="Decimal" />
            <asp:Parameter Name="CurrentMenuItem" Type="Byte" />
            <asp:Parameter Name="MenuItemDescription" Type="String" />
            <asp:Parameter Name="MenuItemID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
