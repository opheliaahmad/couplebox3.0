﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="couplebox3._0._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body {
            padding-top: 8vh;
            overflow-x: hidden;
            overflow-y: auto;
        }

        .outer-box {
            margin: 50px auto;
            padding: 20px;
            background-color: lightpink;
            border: 2px solid hotpink;
            border-radius: 12px;
            text-align: center;
            width: 90%;
            max-width: 800px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
        }

        .auto-style2 {
            font-size: larger;
            margin: 0 auto;
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
            font-size: 24px;
            margin-bottom: 20px;
        }

        table.auto-style2 {
            width: 100%;
            border: 2px solid #cc0033;
            border-collapse: collapse;
        }

        table td, table th {
            border: 1px solid #cc0033;
            padding: 10px;
            text-align: center;
            word-break: break-word;
        }

        .auto-style7 {
            text-align: center;
            height: 42px;
        }

        .auto-style8 {
            max-width: 100%;
            display: block;
            margin: 0 auto;
        }

        .auto-style9, .auto-style10 {
            width: 100%;
        }

        .auto-style11 {
            color: #B51918;
        }

        @media (max-width: 600px) {
            .auto-style6 {
                font-size: 20px;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="outer-box">
        <h3 class="auto-style6">
            <strong>Welcome to Couple’s Box!</strong>
        </h3>

        <p class="auto-style5">
            A personalized monthly experience designed to deepen your connection. 
            Whether you’re newlyweds, long-time partners, or somewhere in between, 
            we deliver unique moments to your doorstep so that you can bond, grow, and make lasting memories together.
        </p>

        <table align="center" class="auto-style2">
            <tr>
                <td colspan="2" class="auto-style7">
                    Get started with
                    <asp:HyperLink ID="hlregister2" runat="server" NavigateUrl="~/registration.aspx" CssClass="auto-style4">Register</asp:HyperLink>
                    or
                    <asp:HyperLink ID="hllogin2" runat="server" NavigateUrl="~/login.aspx" CssClass="auto-style4">Login</asp:HyperLink>!
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style9">
                    <strong>Welcome to CoupleBox</strong> — Where Every Box Begins a New Chapter in Your Love Story. 
                    At CoupleBox, we believe that romance should never feel routine. 
                    Our subscription service delivers curated, romantic mystery boxes designed exclusively for couples who crave adventure, connection, and a spark of surprise. 
                    Each month, you and your partner will receive a beautifully packaged box filled with thoughtfully selected items. 
                    Rediscover the joy of discovery. Grow closer. Fall in love — again and again. Every box is a new journey. 
                    Where will yours take you?
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style5">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Love Box 2.png" CssClass="auto-style8" Height="281px" Width="330px" />
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style10">
                    <asp:Button ID="btnQuiz" runat="server" OnClick="btnQuiz_Click" Text="Take the Quiz!" />
                    <br /><br />
                    Click the button above to take a quick quiz to discover which one of our boxes will be the perfect fit to spice things up between you and your partner! 
                    Or click
                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style11" NavigateUrl="~/subscription.aspx">here</asp:HyperLink>
                    to subscribe once logged in.
                </td>
            </tr>
        </table>
    </div>
</asp:Content>