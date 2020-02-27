<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Broadbandbill.aspx.cs" Inherits="Broadbandbill" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 94%; border-style: solid; border-width: 1px; height: 313px;" 
    bgcolor="#66CCFF">
        <tr>
            <td colspan="2">
                <center>BROADBAND BILL</center></td>
        </tr>
        <tr>
            <td style="height: 23px; width: 154px">
                Broadband no<asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td style="height: 23px; width: 393px;">
                <asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 154px">
                Consumer name</td>
            <td style="width: 393px">
                <asp:TextBox ID="TextBox2" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 154px">
                Address</td>
            <td style="width: 393px">
                <asp:TextBox ID="TextBox3" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 154px">
                Contact no.</td>
            <td style="width: 393px">
                <asp:TextBox ID="TextBox4" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 154px">
                Fixed monthly charges</td>
            <td style="width: 393px">
                <asp:TextBox ID="TextBox5" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 154px">
                Tax(15%)</td>
            <td style="width: 393px">
                <asp:TextBox ID="TextBox6" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 154px">
                Bill date</td>
            <td style="width: 393px">
                <asp:TextBox ID="TextBox8" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 154px">
                Due bill date</td>
            <td style="width: 393px">
                <asp:TextBox ID="TextBox9" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 154px; height: 26px;">
                Total</td>
            <td style="height: 26px; width: 393px">
                <asp:TextBox ID="TextBox10" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" bgcolor="#66CCFF" style="height: 30px">
                <asp:Button ID="Button1" runat="server" Text="Pay Bill" 
                    onclick="Button1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

