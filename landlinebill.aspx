<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="landlinebill.aspx.cs" Inherits="landlinebill" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
   
        <table style="width: 100%; border-style: solid; border-width: 1px" 
    bgcolor="#66CCFF">
        <tr>
            <td colspan="2">
                <center>
                    LANDLINE BILL</center>
            </td>
        </tr>
        <tr>
            <td style="height: 23px; width: 154px">
                Landline no<asp:Label ID="Label1" 
                    runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td style="height: 23px">
                <asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 154px">
                Consumer name</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 154px">
                Address</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 154px">
                Contact no.</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 154px">
                Fixed monthly charges</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 154px">
                Tax(14%)</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 154px">
                Bill date</td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server" Enabled="False" 
                    ontextchanged="TextBox8_TextChanged"></asp:TextBox>
            </td>
        <tr>
            <td style="width: 154px; height: 33px;">
                Due bill date</td>
            <td style="height: 33px">
                <asp:TextBox ID="TextBox9" runat="server" Enabled="False"></asp:TextBox>
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
                <asp:Button ID="Button1" runat="server" Text="Pay Bill" 
                    onclick="Button1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

