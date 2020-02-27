<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<script type ="text/javascript">

    window.onload = window.history.forward(0);  //calling function on window onload
    
</script>
    <div style="height: 110px">

    <table cellspacing="1" 
        
        style="width: 100%; border: 1px solid #000000; background-color: #66CCFF; height: 184px;">
        <tr>
            <td colspan="2" style="height: 48px" bgcolor="Silver">
                <center style="font-style: normal; font-weight: bold; font-size: x-large">MY ACCOUNT</center> </td>
        </tr>
        <tr>
            <td style="width: 183px; font-size: large; font-style: normal; font-weight: bold;">
                User Name</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="125px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Required*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 183px; font-size: large; font-style: normal; font-weight: bold;">
                Password</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="125px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Required*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
               <asp:Button ID="Button1" runat="server" Text="LOGIN" onclick="Button1_Click" 
                    style="margin-left: 33px" Width="88px" />
            </td>
        </tr>
        <tr>
            <td style="width: 183px">
                <a href="register.aspx" tabindex="4">New User 
                Registration</a></td>
            <td>
                <a href="forgotpwd.aspx" tabindex="5">Forgot your 
                Password ?</a></td>
        </tr>
        </table>

</div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

