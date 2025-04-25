<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="couplebox3._0.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style4">
&nbsp;&nbsp;&nbsp; Log in to begin your next chapter, together!<br />
    </p>
    <table align="center" class="auto-style2">
        <tr>
            <td class="auto-style3">Email Address:</td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" OnTextChanged="txtEmail_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Password:</td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" OnTextChanged="txtPassword_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td>
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:S25Team2ConnectionString %>" SelectCommand="SELECT [Email] FROM [Users]" OnSelecting="SqlDataSource1_Selecting">
    </asp:SqlDataSource>
    <br />
</asp:Content>
