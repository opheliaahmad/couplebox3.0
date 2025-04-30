<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="paymentform.aspx.cs" Inherits="couplebox3._0.paymentform" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
.auto-style3 {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    border: 2px solid #cc0033;
    padding: 40px 30px;
    background-color: lightpink;
    text-align: center;
    max-width: 500px;
    width: 100%;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
    border-radius: 20px;
}


        .auto-style4 {
            text-align: center;
            font-size: 18px;
            margin-bottom: 20px;
            background-color: pink;
             
        }

        .auto-style8 {
            margin-left: 0px;
             background-color: lightpink;
        }
    .auto-style9 {
        border: 2px solid #cc0033;
        padding: 12px 10px;
        font-size: 16px;
        background-color: pink;
   
    }
    .auto-style10 {
        width: 709px;
        border: 2px solid #cc0033;
        padding: 12px 10px;
        font-size: 16px;
        text-align: right;
    }
    .auto-style11 {
        width: 677px;
        border: 2px solid #cc0033;
        padding: 12px 10px;
        
/* Medium padding */font-size: 16px;
        text-align: left;
    }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style3">
        <tr>
            <td class="auto-style9" colspan="2">    <p class="auto-style4">
        💳 Confirm your subscription details below:
    </p>
    <p class="auto-style4">
        Click
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/update.aspx">here</asp:HyperLink>
&nbsp;to update your account information before submitting your order!</p>

            </td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>First Name:</strong></td>
            <td class="auto-style11"><asp:Label ID="lblFName" runat="server" /></td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>Last Name:</strong></td>
            <td class="auto-style11"><asp:Label ID="lblLName" runat="server" /></td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>Shipping Address:</strong></td>
            <td class="auto-style11"><asp:Label ID="lblAddress" runat="server" /></td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>Card Number:</strong></td>
            <td class="auto-style11"><asp:Label ID="lblCardNumber" runat="server" /></td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>Monthly Price:</strong></td>
            <td class="auto-style11"><asp:Label ID="lblPrice" runat="server" /></td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>Subscription Type:</strong></td>
            <td class="auto-style11"><asp:Label ID="lblSubType" runat="server" /></td>
        </tr>
        <tr>
            <td class="auto-style9" colspan="2">
                &nbsp;<asp:Button ID="Button1" runat="server" Text="Submit" CssClass="auto-style8" OnClick="Button1_Click" />
                &nbsp;</td>
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
