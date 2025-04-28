<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="couplebox3._0.registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
       .outer-box {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    border: 2px solid #cc0033; 
    padding: 35px;
    background-color: lightpink;
    text-align: center;
    max-width: 400px;
    width: 80%;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
    border-radius: 12px;
}

.auto-style2 {
    width: 100%; /* was 90%, make it 100% */
    max-width: 400px; /* was 450px, make it tighter */
    margin: 0 auto;
    border: 2px solid #cc0033;
    border-collapse: collapse;
    background-color: lightpink;
    table-layout: fixed;
}

.auto-style2 td {
    border: 1px solid #cc0033;
    padding: 8px;
    width: 10%; /* equal columns */
}

.auto-style4 {
            text-align: right;
            padding-right: 10px;
            white-space: nowrap;
            width: 26%;
        }

.auto-style5 {
    text-align: center;
}

        .auto-style6 {
            text-align: justify;
        }
        .auto-style7 {
            text-align: left;
        }

    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="outer-box">
        <h3 class="auto-style5" style="color: #990022;">
            &nbsp;Let's get started to deepen your connection! 
        </h3>
        <h3 class="auto-style5" style="color: #990022;">
            If you don’t have an account, register below. 💖
        </h3>

        <table class="auto-style2">
            <tr>
                <td class="auto-style4">First Name:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtFName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvFName" runat="server" ErrorMessage="First Name is required" ControlToValidate="txtFName"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Last Name:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtLName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvLName" runat="server" ErrorMessage="Last Name is required" ControlToValidate="txtLName"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Email Address:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Password:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Confirm Password:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtPasswordC" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="cvPasswordC" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtPasswordC" ErrorMessage="Passwords must match"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Card Number:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtCardNumber" runat="server" OnTextChanged="txtPasswordC0_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Address:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center;">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:S25Team2ConnectionString %>" 
                        SelectCommand="SELECT [Email] FROM [Users]">
                    </asp:SqlDataSource>

                    <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Register" />
                    &nbsp;
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="login.aspx" Text="Login" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

