<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="success.aspx.cs" Inherits="couplebox3._0.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            width: 770px;
        }
        .auto-style5 {
            width: 770px;
            text-align: center;
            height: 18px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="auto-style2">
        <tr>
            <td colspan="2">&nbsp;</td>
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
</asp:Content>
