<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="mobconaftrlogin.aspx.cs" Inherits="mobconaftrlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<br />
   <table style="width: 99%; height: 400px; background-color: #66CCFF">
        <tr>
           <td colspan="2" style="height: 80px"> <center style="font-style: normal; font-weight: bold; font-size: x-large; color: #CC3300;">MOBILE CONNECTION<br />
               </center>
                </td>
        </tr>
        <tr>
            <td style="width: 249px">
               <a href="prepaid after login.aspx"> View PREPAID Plan</a></td>
            <td>
                 <a href="Postpaid after login.aspx">View POSTPAID Plan</a></td>
        </tr>
        <tr>
            <td style="width: 249px">
                Customer Name</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Required*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td style="width: 249px">
                Connection type</td>
            <td>
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="11" 
                    Text="prepaid" oncheckedchanged="RadioButton1_CheckedChanged" />
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="11" 
                    Text="postpaid" />
                </td>
        </tr>
        <tr>
            <td style="width: 249px">
                Address</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Required*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 249px">
                Id Proof</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="FileUpload1" ErrorMessage="Required*" ForeColor="Red"></asp:RequiredFieldValidator>
               </td>
        </tr>
        <tr>
            <td style="width: 249px; height: 38px;">
                E-mail</td>
            <td style="height: 38px">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Required*" ForeColor="Red"></asp:RequiredFieldValidator>
               </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="SUBMIT" />
               </td>
        </tr>
        </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

