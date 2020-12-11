<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="BriyaniMenu.aspx.cs" Inherits="Website.BriyaniMenu" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="align-items:center; width:100%">
        <tr>
            <td class="auto-style1">  <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="MenuItemID" Width="444px">
                <Columns>
                    <asp:BoundField DataField="MenuItemID" HeaderText="MenuItemID" InsertVisible="False" ReadOnly="True" SortExpression="MenuItemID" />
                    <asp:BoundField DataField="MenuItemName" HeaderText="MenuItemName" SortExpression="MenuItemName" />
                    <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                    <asp:BoundField DataField="MenuItemPrice" HeaderText="MenuItemPrice" SortExpression="MenuItemPrice" />
                    <asp:BoundField DataField="CurrentMenuItem" HeaderText="CurrentMenuItem" SortExpression="CurrentMenuItem" />
                    <asp:BoundField DataField="MenuItemDescription" HeaderText="MenuItemDescription" SortExpression="MenuItemDescription" />
                </Columns>
                </asp:GridView></td>
            <td style="border-left-width:inherit">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="MenuItemID" DataSourceID="SqlDataSource1" Height="50px" Width="201px">
                    <Fields>
                        <asp:BoundField DataField="MenuItemID" HeaderText="MenuItemID" InsertVisible="False" ReadOnly="True" SortExpression="MenuItemID" />
                        <asp:BoundField DataField="MenuItemName" HeaderText="MenuItemName" SortExpression="MenuItemName" />
                        <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                        <asp:BoundField DataField="MenuItemPrice" HeaderText="MenuItemPrice" SortExpression="MenuItemPrice" />
                        <asp:BoundField DataField="CurrentMenuItem" HeaderText="CurrentMenuItem" SortExpression="CurrentMenuItem" />
                        <asp:BoundField DataField="MenuItemDescription" HeaderText="MenuItemDescription" SortExpression="MenuItemDescription" />
                    </Fields>
                </asp:DetailsView>
            </td>
            <td><asp:Button ID="Button1" runat="server" Text="Order"/></td>
        </tr>
    </table>
  
    <asp:SqlDataSource ID="BriyaniSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:group22ConnectionString %>" SelectCommand="SELECT MenuItemID, MenuItemName, Category, MenuItemPrice, CurrentMenuItem, MenuItemDescription FROM MenuItem WHERE (Category LIKE 'Briyani')"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:group22ConnectionString %>" DeleteCommand="DELETE FROM [MenuItem] WHERE [MenuItemID] = @original_MenuItemID AND [MenuItemName] = @original_MenuItemName AND [Category] = @original_Category AND [MenuItemPrice] = @original_MenuItemPrice AND [CurrentMenuItem] = @original_CurrentMenuItem AND (([MenuItemDescription] = @original_MenuItemDescription) OR ([MenuItemDescription] IS NULL AND @original_MenuItemDescription IS NULL))" InsertCommand="INSERT INTO [MenuItem] ([MenuItemName], [Category], [MenuItemPrice], [CurrentMenuItem], [MenuItemDescription]) VALUES (@MenuItemName, @Category, @MenuItemPrice, @CurrentMenuItem, @MenuItemDescription)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [MenuItem]" UpdateCommand="UPDATE [MenuItem] SET [MenuItemName] = @MenuItemName, [Category] = @Category, [MenuItemPrice] = @MenuItemPrice, [CurrentMenuItem] = @CurrentMenuItem, [MenuItemDescription] = @MenuItemDescription WHERE [MenuItemID] = @original_MenuItemID AND [MenuItemName] = @original_MenuItemName AND [Category] = @original_Category AND [MenuItemPrice] = @original_MenuItemPrice AND [CurrentMenuItem] = @original_CurrentMenuItem AND (([MenuItemDescription] = @original_MenuItemDescription) OR ([MenuItemDescription] IS NULL AND @original_MenuItemDescription IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_MenuItemID" Type="Int32" />
            <asp:Parameter Name="original_MenuItemName" Type="String" />
            <asp:Parameter Name="original_Category" Type="String" />
            <asp:Parameter Name="original_MenuItemPrice" Type="Decimal" />
            <asp:Parameter Name="original_CurrentMenuItem" Type="Byte" />
            <asp:Parameter Name="original_MenuItemDescription" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MenuItemName" Type="String" />
            <asp:Parameter Name="Category" Type="String" />
            <asp:Parameter Name="MenuItemPrice" Type="Decimal" />
            <asp:Parameter Name="CurrentMenuItem" Type="Byte" />
            <asp:Parameter Name="MenuItemDescription" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="MenuItemID" PropertyName="SelectedValue" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="MenuItemName" Type="String" />
            <asp:Parameter Name="Category" Type="String" />
            <asp:Parameter Name="MenuItemPrice" Type="Decimal" />
            <asp:Parameter Name="CurrentMenuItem" Type="Byte" />
            <asp:Parameter Name="MenuItemDescription" Type="String" />
            <asp:Parameter Name="original_MenuItemID" Type="Int32" />
            <asp:Parameter Name="original_MenuItemName" Type="String" />
            <asp:Parameter Name="original_Category" Type="String" />
            <asp:Parameter Name="original_MenuItemPrice" Type="Decimal" />
            <asp:Parameter Name="original_CurrentMenuItem" Type="Byte" />
            <asp:Parameter Name="original_MenuItemDescription" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            width: 439px;
        }
    </style>
</asp:Content>


