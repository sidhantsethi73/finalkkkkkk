<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="forgotpwd.aspx.cs" Inherits="forgotpwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 101%; height: 159px; border: 1px solid #D4D0D0; background-color: #2DACE0">
        <tr>
            <td colspan="2" bgcolor="Silver">
                <center style="font-style: normal; font-weight: bold; font-size: x-large">FORGOT PASSWORD</center></td>
        </tr>
        <tr>
            <td style="width: 193px; height: 43px;">
                Username</td>
            <td style="height: 43px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Required*" ForeColor="#FF3300" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                E-Mail</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Required*" ForeColor="#FF3300" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="Button1" runat="server" Height="35px" style="margin-left: 98px" 
                    Text="SUBMIT" Width="141px" onclick="Button1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

