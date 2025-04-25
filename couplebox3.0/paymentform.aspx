<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="paymentform.aspx.cs" Inherits="couplebox3._0.paymentform" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            border: 2px solid #cc0033;
            padding: 20px;
            background-color: lightpink;
            text-align: center;
            max-width: 400px;
            width: 100%;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
            border-radius: 12px;
        }

        .auto-style4 {
            text-align: center;
            font-size: 18px;
            margin-bottom: 20px;
             
        }

        .auto-style5 {
            width: 677px;
             border: 2px solid #cc0033;
        }

        .auto-style6 {
            width: 709px;
             border: 2px solid #cc0033;
        }
        .auto-style7 {
            width: 709px;
            text-align: justify;
             border: 2px solid #cc0033;
        }
        .auto-style8 {
            margin-left: 0px;
             
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style4">
        💳 Confirm your subscription details below:
    </p>
    <p class="auto-style4">
        Click
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/accountmanager.aspx">here</asp:HyperLink>
&nbsp;to update your account information before submitting your order!</p>

    <table class="auto-style3">
        <tr>
            <td class="auto-style6">First Name:</td>
            <td class="auto-style5"><asp:Label ID="lblFName" runat="server" /></td>
        </tr>
        <tr>
            <td class="auto-style6">Last Name:</td>
            <td class="auto-style5"><asp:Label ID="lblLName" runat="server" /></td>
        </tr>
        <tr>
            <td class="auto-style6">Shipping Address:</td>
            <td class="auto-style5"><asp:Label ID="lblAddress" runat="server" /></td>
        </tr>
        <tr>
            <td class="auto-style6">Card Number:</td>
            <td class="auto-style5"><asp:Label ID="lblCardNumber" runat="server" /></td>
        </tr>
        <tr>
            <td class="auto-style6">Monthly Price:</td>
            <td class="auto-style5"><asp:Label ID="lblPrice" runat="server" /></td>
        </tr>
        <tr>
            <td class="auto-style6">Subscription Type:</td>
            <td class="auto-style5"><asp:Label ID="lblSubType" runat="server" /></td>
        </tr>
        <tr>
            <td class="auto-style7">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="auto-style8" OnClick="Button1_Click" />
                &nbsp;</td>
            <td class="auto-style5"></td>
        </tr>
    </table>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:S25Team2ConnectionString %>"
        DeleteCommand="DELETE FROM [Users] WHERE [Email] = @Email"
        InsertCommand="INSERT INTO [Users] ([Email]) VALUES (@Email)"
        SelectCommand="SELECT [Email] FROM [Users]">
        <DeleteParameters>
            <asp:Parameter Name="Email" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Email" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
</asp:Content>
