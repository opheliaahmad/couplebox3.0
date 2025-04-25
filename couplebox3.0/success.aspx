<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="success.aspx.cs" Inherits="couplebox3._0.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            position: absolute;
            top: 55%;
            left: 50%;
            transform: translate(-50%, -50%);
             border: 2px solid #cc0033;
            padding: 20px;
            background-color: lightpink;
            text-align: center;
            max-width: 470px;
            width: 100%;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
            border-radius: 12px;
        }

        .auto-style4 {
            text-align: center;
            font-size: 18px;
            margin-bottom: 20px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style3">
        <p class="auto-style4">
            <strong>You are now subscribed to the 
                <asp:Label ID="lblSubtype" runat="server" BorderColor="#CC0000" BorderStyle="Dotted" /> 
                box! 🎁</strong></p>
        <p class="auto-style4">
            <strong><br />
                You will receive a new box filled with mystery romance items every 30 days! 💕
            </strong>
        </p>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/heart.png" />
    </div>

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