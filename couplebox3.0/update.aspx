<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="update.aspx.cs" Inherits="couplebox3._0.update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            text-align: center;
        }
    .auto-style6 {
        height: 23px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <table align="center" class="auto-style2">
        <tr>
            <td class="auto-style5" colspan="6">Update Page</td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="6">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style6">Would you like to change this field? Check if yes.</td>
            <td class="auto-style6"></td>
            <td class="auto-style6">Current Values</td>
            <td class="auto-style6">New Value</td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">Email:</td>
            <td class="auto-style4">Cannot be changed.</td>
            <td class="auto-style4">&nbsp;</td>
            <td>
                <asp:Label ID="lblEmail" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>
<asp:RequiredFieldValidator ID="rfvPassC" runat="server" 
    ControlToValidate="txtPassC" 
    ErrorMessage="Please confirm your password." 
    Enabled="false" 
    ForeColor="Red" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Password:</td>
            <td class="auto-style8">
                <asp:CheckBox ID="cbPassword" runat="server" AutoPostBack="true" OnCheckedChanged="cbPassword_CheckedChanged"/>
            </td>
            <td class="auto-style8">
                &nbsp;</td>
            <td class="auto-style9">
                <asp:Label ID="lblPassword" runat="server"></asp:Label>
            </td>
            <td class="auto-style9">
               <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
            </td>
            <td class="auto-style9">
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password required."></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Confirm Password:</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>
                <asp:Label ID="lblPassC" runat="server"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPassC" runat="server"  TextMode="Password" />
            </td>
            <td>
                <asp:CompareValidator ID="cvPassword" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtPassC" ErrorMessage="Passwords must be the same."></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">First Name:</td>
            <td class="auto-style4">
                <asp:CheckBox ID="cbFName" runat="server" AutoPostBack="true" OnCheckedChanged="cbFName_CheckedChanged"/>
            </td>
            <td class="auto-style4">
                &nbsp;</td>
            <td>
                <asp:Label ID="lblFName" runat="server"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtFName" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvFName" runat="server" ControlToValidate="txtFName" ErrorMessage="First name required."></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Last Name:</td>
            <td class="auto-style4">
                <asp:CheckBox ID="cbLName" runat="server" AutoPostBack="true" OnCheckedChanged="cbLName_CheckedChanged"/>
            </td>
            <td class="auto-style4">
                &nbsp;</td>
            <td>
                <asp:Label ID="lblLName" runat="server"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtLName" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvLName" runat="server" ControlToValidate="txtLName" ErrorMessage="Last name required."></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Address:</td>
            <td class="auto-style4">
                <asp:CheckBox ID="cbAddress" runat="server" AutoPostBack="true" OnCheckedChanged="cbAddress_CheckedChanged"/>
            </td>
            <td class="auto-style4">
                &nbsp;</td>
            <td>
                <asp:Label ID="lblAddress" runat="server"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtAddress" ErrorMessage="Address required."></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Card Number:</td>
            <td class="auto-style4">
                <asp:CheckBox ID="cbCardNumber" runat="server" AutoPostBack="true" OnCheckedChanged="cbCardNumber_CheckedChanged"/>
            </td>
            <td class="auto-style4">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td>
                <asp:Label ID="lblCardNumber" runat="server"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCardNumber" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvCardNumber" runat="server" ErrorMessage="Card number required."></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Subscription Type:</td>
            <td class="auto-style4">
                Please change on the subcription page.</td>
            <td class="auto-style4">
                &nbsp;</td>
            <td>
                <asp:Label ID="lblSubType" runat="server"></asp:Label>
            </td>
            <td>
                <br />
                <br />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="6">
                <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update Information" />
            </td>
        </tr>
        <tr>
            <td colspan="6">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ConnectionStrings:S25Team2ConnectionString3%>" DeleteCommand="DELETE FROM [Users] WHERE [Email] = @Email" InsertCommand="INSERT INTO [Users] ([Email], [Password], [FName], [LName], [Address], [CardNumber]) VALUES (@Email, @Password, @FName, @LName, @Address, @CardNumber)" ProviderName="<%$ ConnectionStrings:S25Team2ConnectionString3.ProviderName %>" SelectCommand="SELECT * FROM [Users] WHERE ([Email] = @Email)" UpdateCommand="UPDATE [Users] SET [Password] = @Password, [FName] = @FName, [LName] = @LName, [Address] = @Address, [CardNumber] = @CardNumber WHERE [Email] = @Email">
                    <DeleteParameters>
                        <asp:Parameter Name="Email" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Password" Type="String" />
                        <asp:Parameter Name="FName" Type="String" />
                        <asp:Parameter Name="LName" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="CardNumber" Type="String" />
                        <asp:Parameter Name="SubType" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:Parameter Name="Email" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="UserId" Type="Int32" />
                        <asp:Parameter Name="Password" Type="String" />
                        <asp:Parameter Name="FName" Type="String" />
                        <asp:Parameter Name="LName" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="CardNumber" Type="String" />
                        <asp:Parameter Name="SubType" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
