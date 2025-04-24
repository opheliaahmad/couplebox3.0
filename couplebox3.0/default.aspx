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
    <br />
        Get started with
        <asp:HyperLink ID="hlregister2" runat="server" NavigateUrl="~/registration.aspx" CssClass="auto-style4">Register</asp:HyperLink>
&nbsp;or
        <asp:HyperLink ID="hllogin2" runat="server" NavigateUrl="~/login.aspx" CssClass="auto-style4">Login</asp:HyperLink>
        !</p>
</asp:Content>
