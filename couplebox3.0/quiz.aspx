<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="quiz.aspx.cs" Inherits="couplebox3._0.quiz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        text-align: center;
    }
    .auto-style14 {
        width: 443px;
        height: 120px;
    }
    .auto-style21 {
        text-align: left;
        height: 38px;
        background-color: #FFFFFF;
    }
        .auto-style25 {
            height: 11px;
            width: 221px;
            background-color: #FFFFFF;
        }
        .auto-style26 {
            height: 11px;
            width: 222px;
            background-color: #FFFFFF;
        }
        .auto-style27 {
            height: 14px;
            width: 221px;
            background-color: #FFFFFF;
        }
        .auto-style28 {
            height: 14px;
            width: 222px;
            background-color: #FFFFFF;
        }
        .auto-style29 {
            height: 7px;
            width: 221px;
            background-color: #FFFFFF;
        }
        .auto-style30 {
            height: 7px;
            width: 222px;
            background-color: #FFFFFF;
        }
        .auto-style31 {
            width: 221px;
            background-color: #FFFFFF;
        }
        .auto-style32 {
            width: 222px;
            background-color: #FFFFFF;
        }
        .auto-style33 {
            width: 449px;
            height: 79px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="auto-style1">
    <strong>Personalization Quiz</strong></h2>
<table align="center" class="auto-style33">
    <tr>
        <td class="auto-style21" colspan="2"><strong>Q1: What are your shared interests?</strong></td>
    </tr>
    <tr>
        <td class="auto-style31">
            <asp:CheckBox ID="cbboardgames" runat="server" OnCheckedChanged="cbboardgames_CheckedChanged" Text="Board Games" />
        </td>
        <td class="auto-style32">
            <asp:CheckBox ID="cboutdoors" runat="server" OnCheckedChanged="cboutdoors_CheckedChanged" Text="Outdoor Adventures" />
        </td>
    </tr>
    <tr>
        <td class="auto-style31">
            <asp:CheckBox ID="cbcooking" runat="server" OnCheckedChanged="cbcooking_CheckedChanged" Text="Cooking" />
        </td>
        <td class="auto-style32">
            <asp:CheckBox ID="cbmovies" runat="server" OnCheckedChanged="cbmovies_CheckedChanged" Text="Movie Nights" />
        </td>
    </tr>
</table>
<br />
<br />
<br />
<table align="center" class="auto-style14">
    <tr>
        <td class="auto-style21" colspan="2"><strong>Q2: Preferred date style?</strong></td>
    </tr>
    <tr>
        <td class="auto-style27">
            <asp:CheckBox ID="cbnightin" runat="server" OnCheckedChanged="cbnightin_CheckedChanged" Text="Night In" />
        </td>
        <td class="auto-style28">
            <asp:CheckBox ID="cbrestaurant" runat="server" OnCheckedChanged="cbrestraunt_CheckedChanged" Text="Restaurant Experience" />
        </td>
    </tr>
    <tr>
        <td class="auto-style25">
            <asp:CheckBox ID="cbnightout" runat="server" OnCheckedChanged="cbnightout_CheckedChanged" Text="Night Out" />
        </td>
        <td class="auto-style26">
            <asp:CheckBox ID="cbsurpriseme" runat="server" OnCheckedChanged="cbsurpriseme_CheckedChanged" Text="Surprise Me" />
        </td>
    </tr>
</table>
<br />
<br />
<br />
<table align="center" class="auto-style14">
    <tr>
        <td class="auto-style21" colspan="2"><strong>Q3: Primary love language?</strong></td>
    </tr>
    <tr>
        <td class="auto-style29">
            <asp:CheckBox ID="cbgiftgiving" runat="server" OnCheckedChanged="cbgiftgiving_CheckedChanged" Text="Gift Giving" />
        </td>
        <td class="auto-style30">
            <asp:CheckBox ID="cbwords" runat="server" OnCheckedChanged="cbwords_CheckedChanged" Text="Words Of Affirmation" />
        </td>
    </tr>
    <tr>
        <td class="auto-style31">
            <asp:CheckBox ID="cbqualitytime" runat="server" OnCheckedChanged="cbqualitytime_CheckedChanged" Text="Quality Time" />
        </td>
        <td class="auto-style32">
            <asp:CheckBox ID="cbphysicaltouch" runat="server" OnCheckedChanged="cbphysicaltouch_CheckedChanged" Text="Physical Touch" />
        </td>
    </tr>
</table>
<p class="auto-style1">
    <asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_Click" Text="Submit" />
</p>
</asp:Content>
