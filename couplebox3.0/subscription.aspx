<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="subscription.aspx.cs" Inherits="couplebox3._0.subscription" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            text-align: justify;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="auto-style2">
        <tr>
            <td class="auto-style3">Chose which subsciption type you would like!</td>
        </tr>
        <tr>
            <td>
                <asp:CheckBox ID="CheckBox1" runat="server" Text="Love Birds" />
                <br />
                <asp:CheckBox ID="CheckBox2" runat="server" />
                <br />
                <asp:CheckBox ID="CheckBox3" runat="server" />
                <br />
                <asp:CheckBox ID="CheckBox4" runat="server" />
            </td>
        </tr>
    </table>
</asp:Content>
