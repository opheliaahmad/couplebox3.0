<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="update.aspx.cs" Inherits="couplebox3._0.update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <style type="text/css">
    body {
        margin: 0;
        padding: 0;
        background-color: #ffe6ec;
        font-family: Arial, sans-serif;
    }

    .auto-style3 {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        border: 2px solid #cc0033;
        padding: 20px;
        background-color: lightpink;
        text-align: center;
        width: 90%;
        max-width: 800px;
        min-height: 300px; /* Ensures visible size in Designer */
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
        border-radius: 12px;
    }

    table.auto-style3 {
        border-collapse: collapse;
        width: 100%;
        border: 2px solid #cc0033;
    }

    .auto-style3 td {
        border: 1px solid #cc0033;
        padding: 10px;
        vertical-align: middle;
    }
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style3">
        <table class="auto-style3">
            <tr>
                <td colspan="6"><strong>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ConnectionStrings:S25Team2ConnectionString3%>"
            DeleteCommand="DELETE FROM [Users] WHERE [Email] = @Email"
            InsertCommand="INSERT INTO [Users] ([Email], [Password], [FName], [LName], [Address], [CardNumber]) VALUES (@Email, @Password, @FName, @LName, @Address, @CardNumber)"
            ProviderName="<%$ ConnectionStrings:S25Team2ConnectionString3.ProviderName %>"
            SelectCommand="SELECT * FROM [Users] WHERE ([Email] = @Email)"
            UpdateCommand="UPDATE [Users] SET [Password] = @Password, [FName] = @FName, [LName] = @LName, [Address] = @Address, [CardNumber] = @CardNumber WHERE [Email] = @Email">
            <DeleteParameters>
                <asp:Parameter Name="Email" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="FName" Type="String" />
                <asp:Parameter Name="LName" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="CardNumber" Type="String" />
                <asp:Parameter Name="SubType" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter Name="Email" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="UserId" Type="Int32" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="FName" Type="String" />
                <asp:Parameter Name="LName" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="CardNumber" Type="String" />
                <asp:Parameter Name="SubType" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
                    Update Page</strong></td>
            </tr>
            <tr>
                <td colspan="2">Would you like to change this field? Check if yes.</td>
                <td></td>
                <td><strong>Current Values</strong></td>
                <td><strong>New Value</strong></td>
                <td></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td>Cannot be changed.</td>
                <td></td>
                <td><asp:Label ID="lblEmail" runat="server"></asp:Label></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><asp:CheckBox ID="cbPassword" runat="server" AutoPostBack="true" OnCheckedChanged="cbPassword_CheckedChanged"/></td>
                <td></td>
                <td><asp:Label ID="lblPassword" runat="server"></asp:Label></td>
                <td><asp:TextBox ID="txtPassword" runat="server" TextMode="Password" /></td>
                <td><asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password required."></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>Confirm Password:</td>
                <td></td>
                <td></td>
                <td><asp:Label ID="lblPassC" runat="server"></asp:Label></td>
                <td><asp:TextBox ID="txtPassC" runat="server" TextMode="Password" /></td>
                <td><asp:CompareValidator ID="cvPassword" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtPassC" ErrorMessage="Passwords must be the same."></asp:CompareValidator></td>
            </tr>
            <tr>
                <td>First Name:</td>
                <td><asp:CheckBox ID="cbFName" runat="server" AutoPostBack="true" OnCheckedChanged="cbFName_CheckedChanged"/></td>
                <td></td>
                <td><asp:Label ID="lblFName" runat="server"></asp:Label></td>
                <td><asp:TextBox ID="txtFName" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="rfvFName" runat="server" ControlToValidate="txtFName" ErrorMessage="First name required."></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>Last Name:</td>
                <td><asp:CheckBox ID="cbLName" runat="server" AutoPostBack="true" OnCheckedChanged="cbLName_CheckedChanged"/></td>
                <td></td>
                <td><asp:Label ID="lblLName" runat="server"></asp:Label></td>
                <td><asp:TextBox ID="txtLName" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="rfvLName" runat="server" ControlToValidate="txtLName" ErrorMessage="Last name required."></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>Address:</td>
                <td><asp:CheckBox ID="cbAddress" runat="server" AutoPostBack="true" OnCheckedChanged="cbAddress_CheckedChanged"/></td>
                <td></td>
                <td><asp:Label ID="lblAddress" runat="server"></asp:Label></td>
                <td><asp:TextBox ID="txtAddress" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtAddress" ErrorMessage="Address required."></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>Card Number:</td>
                <td><asp:CheckBox ID="cbCardNumber" runat="server" AutoPostBack="true" OnCheckedChanged="cbCardNumber_CheckedChanged"/></td>
                <td></td>
                <td><asp:Label ID="lblCardNumber" runat="server"></asp:Label></td>
                <td><asp:TextBox ID="txtCardNumber" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="rfvCardNumber" runat="server" ControlToValidate="txtCardNumber" ErrorMessage="Card number required."></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>Subscription Type:</td>
                <td>Please change on the subscription page.</td>
                <td></td>
                <td><asp:Label ID="lblSubType" runat="server"></asp:Label></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td colspan="6">
                    <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update Information" />
                </td>
            </tr>
        </table>

    </div>
</asp:Content>