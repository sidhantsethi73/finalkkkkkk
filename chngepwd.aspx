<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="chngepwd.aspx.cs" Inherits="chngepwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 93%; height: 172px; border: 1px solid #D4D0D0; background-color: #2DACE0" 
        bgcolor="#33CCFF">
        <tr>
            <td colspan="2" style="height: 42px" bgcolor="Silver">
             <center style="font-style: normal; font-weight: bold; font-size: x-large">UPDATE PASSWORD</center></td>
        </tr>
        <tr>
            <td bgcolor="#33CCFF" style="height: 40px; width: 177px">
                E-Mail</td>
            <td bgcolor="#33CCFF" style="height: 40px">
                <asp:TextBox ID="TextBox3" runat="server" Enabled="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Required*" ForeColor="Red" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
               </td>
        </tr>
        <tr>
            <td bgcolor="#33CCFF" style="height: 40px; width: 177px">
                New Password</td>
            <td bgcolor="#33CCFF" style="height: 40px">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Required*" ForeColor="Red" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
               </td>
        </tr>
        <tr>
            <td bgcolor="#33CCFF" style="width: 177px">
                Confirm Password</td>
            <td bgcolor="#33CCFF">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Required*" ForeColor="#FF3300" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td bgcolor="#33CCFF" colspan="2">
                <asp:Button ID="Button1" runat="server" Height="29px" onclick="Button1_Click" 
                    style="margin-left: 92px" Text="UPDATE" Width="122px" />
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

