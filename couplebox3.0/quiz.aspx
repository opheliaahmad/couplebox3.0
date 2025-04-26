<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="quiz.aspx.cs" Inherits="couplebox3._0.quiz" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
     :root {
    --romantic-red: #cc0033;
}

body {
    background-color: #ffe6f0;
    color: #000;
    font-family: "Times New Roman", serif;
    margin: 0;
    padding: 0;
    background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='20' height='20' viewBox='0 0 20 20'%3E%3Cg fill='%23ffb6c1' fill-opacity='0.4'%3E%3Cpath d='M10 0C4.477 0 0 4.477 0 10s4.477 10 10 10 10-4.477 10-10S15.523 0 10 0z'/%3E%3Cpath d='M10 18c-4.418 0-8-3.582-8-8 0-1.432.363-2.791 1.004-4L10 14.915 16.996 6c.641 1.209 1.004 2.568 1.004 4 0 4.418-3.582 8-8 8z'/%3E%3C/g%3E%3C/svg%3E");
    max-width: 100%;
    overflow-x: hidden;
}

.quiz-container {
    background-color: lightpink;
    border: 2px solid var(--romantic-red) !important;
    border-radius: 12px;
    padding: 20px;
    width: 600px;
    margin: 30px auto;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
    text-align: center;
}

h2 {
    color: var(--romantic-red) !important;
    font-family: "Times New Roman", serif;
}

.quiz-table {
    width: 100%;
    border-collapse: separate;
    border-spacing: 10px;
}

.quiz-table td {
    border: 2px solid var(--romantic-red) !important;
    background-color: lightpink;
    border-radius: 8px;
    padding: 8px;
    text-align: center;
}

.section-title {
    font-size: 18px;
    font-weight: bold;
    color: #990026;
    background-color: #ffe6eb;
    padding: 10px;
    border: 2px solid var(--romantic-red) !important;
    border-radius: 10px;
}

.submit-row {
    padding-top: 20px;
    border: 2px solid var(--romantic-red) !important;
    border-radius: 10px;
}
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="quiz-container">
        <h2>Personalization Quiz</h2>

        <table class="quiz-table">
            <!-- Q1 -->
            <tr>
                <td colspan="4" class="section-title">Q1: What are your shared interests?</td>
            </tr>
            <tr>
                <td><asp:CheckBox ID="cbboardgames" runat="server" AutoPostBack="True" OnCheckedChanged="cbboardgames_CheckedChanged" Text="Board Games" /></td>
                <td><asp:CheckBox ID="cboutdoors" runat="server" AutoPostBack="True" OnCheckedChanged="cboutdoors_CheckedChanged" Text="Outdoor Adventures" /></td>
                <td><asp:CheckBox ID="cbcooking" runat="server" AutoPostBack="True" OnCheckedChanged="cbcooking_CheckedChanged" Text="Cooking" /></td>
                <td><asp:CheckBox ID="cbmovies" runat="server" AutoPostBack="True" OnCheckedChanged="cbmovies_CheckedChanged" Text="Movie Nights" /></td>
            </tr>

            <!-- Q2 -->
            <tr>
                <td colspan="4" class="section-title">Q2: Preferred date style?</td>
            </tr>
            <tr>
                <td><asp:CheckBox ID="cbnightin" runat="server" AutoPostBack="True" OnCheckedChanged="cbnightin_CheckedChanged" Text="Night In" /></td>
                <td><asp:CheckBox ID="cbrestraunt" runat="server" AutoPostBack="True" OnCheckedChanged="cbrestraunt_CheckedChanged" Text="Restaurant Experience" /></td>
                <td><asp:CheckBox ID="cbnightout" runat="server" AutoPostBack="True" OnCheckedChanged="cbnightout_CheckedChanged" Text="Night Out" /></td>
                <td><asp:CheckBox ID="cbsurpriseme" runat="server" AutoPostBack="True" OnCheckedChanged="cbsurpriseme_CheckedChanged" Text="Surprise Me" /></td>
            </tr>

            <!-- Q3 -->
            <tr>
                <td colspan="4" class="section-title">Q3: Primary love language?</td>
            </tr>
            <tr>
                <td><asp:CheckBox ID="cbgiftgiving" runat="server" AutoPostBack="True" OnCheckedChanged="cbgiftgiving_CheckedChanged" Text="Gift Giving" /></td>
                <td><asp:CheckBox ID="cbwords" runat="server" AutoPostBack="True" OnCheckedChanged="cbwords_CheckedChanged" Text="Words Of Affirmation" /></td>
                <td><asp:CheckBox ID="cbqualitytime" runat="server" AutoPostBack="True" OnCheckedChanged="cbqualitytime_CheckedChanged" Text="Quality Time" /></td>
                <td><asp:CheckBox ID="cbphysicaltouch" runat="server" AutoPostBack="True" OnCheckedChanged="cbphysicaltouch_CheckedChanged" Text="Physical Touch" /></td>
            </tr>

            <!-- Submit -->
            <tr>
                <td colspan="4" class="submit-row">
                    <asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_Click" Text="Submit" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>