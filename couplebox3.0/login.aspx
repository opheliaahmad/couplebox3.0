<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="couplebox3._0.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
    position: absolute;
    top: 38%;
    left: 50%;
    transform: translate(-50%, -50%);
    border: 2px solid hotpink;
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
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style4">
        ❤️ Log in to begin your next chapter, together!
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                    ConnectionString="<%$ ConnectionStrings:S25Team2ConnectionString %>"
                    SelectCommand="SELECT [Email] FROM [Users]" 
                    OnSelecting="SqlDataSource1_Selecting" DeleteCommand="DELETE FROM [Users] WHERE [Email] = @Email" InsertCommand="INSERT INTO [Users] ([Email]) VALUES (@Email)">
                    <DeleteParameters>
                        <asp:Parameter Name="Email" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Email" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
    </p>

    <table class="auto-style3">
        <tr>
            <td>Email Address:</td>
            <td class="auto-style5">
                <br />
                <asp:TextBox ID="txtEmail" runat="server" OnTextChanged="txtEmail_TextChanged"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage=" Email Required!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Password:</td>
            <td class="auto-style5">
                <br />
                <asp:TextBox ID="txtPassword" runat="server" OnTextChanged="txtPassword_TextChanged"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage=" Incorrect Password!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
            </td>
            <td class="auto-style5">
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
            </td>
        </tr>
        </table>
</asp:Content>
