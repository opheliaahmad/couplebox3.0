<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="subscription.aspx.cs" Inherits="couplebox3._0.subscription" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .outer-box {
            position: absolute;
            top: 38%;
            left: 50%;
            transform: translate(-50%, -50%);
            border: 2px solid #cc0033; 
            padding: 20px;
            background-color: lightpink;
            text-align: center;
            max-width: 1000px;
            width: 100%;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
            border-radius: 12px;
        }

       .auto-style2 {
    width: 958px;
    border: 2px solid #cc0033;         /* red outer border */
    border-collapse: collapse;
    background-color: lightpink;
}

.auto-style2 td {
    border: 1px solid #cc0033;         /* red borders inside cells */
    padding: 10px;
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

        </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="outer-box">
        <table align="center" class="auto-style2">
            <tr>
                <td class="auto-style4" colspan="2" style="text-align: center">
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
                    Chose which subscription type you would like! Based on your quiz we recommend choosing the
                    <asp:Label ID="lblQuiz" runat="server"></asp:Label>
                    &nbsp;box! &lt;3
                </td>
            </tr>
            <tr>
                <td class="auto-style6" style="text-align: center">
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
    </div>
</asp:Content>
