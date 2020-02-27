<%@ Page Title="" Language="C#" MasterPageFile="~/afterlogin.master" AutoEventWireup="true" CodeFile="postpaidbill aftrlogin.aspx.cs" Inherits="postpaidbill_aftrlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
 <table style="width: 100%; border-style: solid; border-width: 1px" 
    bgcolor="#66CCFF">
        <tr>
            <td colspan="2">
                <center>
                    POSTPAID BILL</center>
            </td>
        </tr>
        <tr>
            <td style="height: 23px; width: 154px">
                Postpaid no<asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td style="height: 23px">
                <asp:TextBox ID="TextBox11" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 154px">
                Consumer name</td>
            <td>
                <asp:TextBox ID="TextBox12" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 154px">
                Address</td>
            <td>
                <asp:TextBox ID="TextBox13" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 154px">
                Contact no.</td>
            <td>
                <asp:TextBox ID="TextBox14" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 154px">
                Fixed monthly charges</td>
            <td>
                <asp:TextBox ID="TextBox15" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 154px">
                Tax(15%)</td>
            <td>
                <asp:TextBox ID="TextBox16" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 154px">
                Bill date</td>
            <td>
                <asp:TextBox ID="TextBox17" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 154px">
                Due bill date</td>
            <td>
                <asp:TextBox ID="TextBox18" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 154px">
                Total</td>
            <td>
                <asp:TextBox ID="TextBox10" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="Button2" runat="server" Text="Pay Bill" 
                    onclick="Button2_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

