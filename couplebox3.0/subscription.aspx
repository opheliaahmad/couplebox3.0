<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="subscription.aspx.cs" Inherits="couplebox3._0.subscription" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 958px;
        }

        .auto-style4 {
            text-align: justify;
            height: 22px;
        }

        .auto-style5 {
            text-align: justify;
            width: 479px;
            height: 82px;
        }

        .auto-style6 {
            text-align: justify;
            width: 858px;
            height: 82px;
        }
        .auto-style7 {
            text-align: justify;
            height: 82px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="auto-style2">
        <tr>
            <td class="auto-style4" colspan="2">
                Chose which subscription type you would like! Based on your quiz we recommend choosing the
                <asp:Label ID="lblQuiz" runat="server"></asp:Label>
                &nbsp;box! &lt;3
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:CheckBox ID="CheckBox1" runat="server" Text="Love Birds" CssClass="exclusive-checkbox" />
                ..............................($31.99/mo)<br />
                <asp:CheckBox ID="cb2" runat="server" Text="High Class Romance" CssClass="exclusive-checkbox" />
                ...............($44.99/mo)<br />
                <asp:CheckBox ID="cb3" runat="server" Text="The King and Queen" CssClass="exclusive-checkbox" />
                ...............($69.99/mo)<br />
            </td>
            <td class="auto-style5">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Select" />
&nbsp;
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7" colspan="2">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:S25Team2ConnectionString %>" DeleteCommand="DELETE FROM [Users] WHERE [Email] = @Email" InsertCommand="INSERT INTO [Users] ([Email]) VALUES (@Email)" SelectCommand="SELECT [Email] FROM [Users]">
                    <DeleteParameters>
                        <asp:Parameter Name="Email" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Email" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>

    <script>
        window.addEventListener('DOMContentLoaded', function () {
            const checkboxes = document.querySelectorAll('.exclusive-checkbox input[type="checkbox"]');

            checkboxes.forEach(cb => {
                cb.addEventListener('change', function () {
                    if (this.checked) {
                        checkboxes.forEach(other => {
                            if (other !== this) {
                                other.checked = false;
                            }
                        });
                    }
                });
            });
        });
    </script>
</asp:Content>