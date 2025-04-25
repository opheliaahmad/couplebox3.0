<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="couplebox3._0._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-size: larger;
        }
        .auto-style4 {
        color: #FF3399;
    }
    .auto-style5 {
        text-align: center;
    }
    .auto-style6 {
        text-align: center;
        color: #FF0066;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="auto-style6">
        <strong data-end="174" data-start="147"><span class="auto-style2">Welcome to Couple’s Box!</span></strong></h3>
    <p class="auto-style5">
        A personalized monthly experience designed to deepen your connection. Whether you’re newlyweds, long-time partners, or somewhere in between, we deliver unique moments to your doorstep so that you can bond, grow, and make lasting memories together.</p>
<p class="auto-style5">
    <table align="center" class="auto-style2">
        <tr>
            <td colspan="2">Get started with
        <asp:HyperLink ID="hlregister2" runat="server" NavigateUrl="~/registration.aspx" CssClass="auto-style4">Register</asp:HyperLink>
&nbsp;or
        <asp:HyperLink ID="hllogin2" runat="server" NavigateUrl="~/login.aspx" CssClass="auto-style4">Login</asp:HyperLink>
        !</td>
        </tr>
        <tr>
            <td class="auto-style4">Description:</td>
            <td class="auto-style3" rowspan="4">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/heart.png" />
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Click the button bellow to take a quick quiz to discover which one of our boxes with be the perfect fit to spice things up between you and your partner!<br />
                <br />
                <asp:Button ID="btnQuiz" runat="server" OnClick="btnQuiz_Click" Text="Quiz!" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
        </tr>
    </table>
    <br />
        </p>
</asp:Content>
