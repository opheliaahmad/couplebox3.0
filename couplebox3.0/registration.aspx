<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="couplebox3._0.registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        width: 80%;
    }
    .auto-style4 {
        text-align: right;
    }
        .auto-style5 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="auto-style5">
    Lets get started to deepen your connection! If you dont have an account register below.<br />
</h3>
<table align="center" class="auto-style2">
    <tr>
        <td class="auto-style4">First Name:</td>
        <td>
            <asp:TextBox ID="txtFName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvFName" runat="server" ErrorMessage="First Name is required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Last Name:</td>
        <td>
            <asp:TextBox ID="txtLName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvLName" runat="server" ErrorMessage="Last Name is required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Email Address:</td>
        <td>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Password:</td>
        <td>
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Confirm Password:</td>
        <td>
            <asp:TextBox ID="txtPasswordC" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="cvPasswordC" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtPasswordC" ErrorMessage="Passwords must match"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Button ID="btnRegister" runat="server" OnClick="Button1_Click" Text="Register" />
        </td>
        <td>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="login.aspx" Text="Login" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:S25Team2ConnectionString %>" SelectCommand="SELECT [Email] FROM [Users]">
            </asp:SqlDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
    </table>
<br />
</asp:Content>
