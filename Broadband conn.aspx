<%@ Page Title="" Language="C#" MasterPageFile="afterlogin.master" AutoEventWireup="true" CodeFile="Broadband conn.aspx.cs" Inherits="Broadband" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 86%; height: 363px; background-color: #66CCFF">
        <tr>
            <td colspan="2">
               <center style="font-style: normal; font-weight: bold; font-size: x-large">BROADBAND 
                   CONNECTION</center></td>
        </tr>
        <tr>
            <td colspan="2">
                   <a href="broadbandplanaftrlogin.aspx">View BROADBAND Plan</a></td>
        </tr>
        <tr>
            <td style="width: 251px">
                Connection Address</td>
            <td>
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox10" ErrorMessage="Required*" ForeColor="Red"></asp:RequiredFieldValidator>
               </td>
        </tr>
        <tr>
            <td style="width: 251px">
                Connection Pin-code</td>
            <td>
                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox11" ErrorMessage="Required*" ForeColor="Red"></asp:RequiredFieldValidator>
               </td>
        </tr>
        <tr>
            <td style="width: 251px">
                Billing Address</td>
            <td>
                <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox12" ErrorMessage="Required*" ForeColor="Red"></asp:RequiredFieldValidator>
               </td>
        </tr>
        <tr>
            <td style="width: 251px">
                Billing Pin-code</td>
            <td>
                <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox13" ErrorMessage="Required*" ForeColor="Red"></asp:RequiredFieldValidator>
               </td>
        </tr>
        <tr>
            <td style="width: 251px">
                Contact Number</td>
            <td>
                <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox14" ErrorMessage="Required*" ForeColor="Red"></asp:RequiredFieldValidator>
               </td>
        </tr>
        <tr>
            <td style="width: 251px">
                Select Plan </td>
            <td>
                
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                    <asp:ListItem>399</asp:ListItem>
                    <asp:ListItem>499</asp:ListItem>
                    <asp:ListItem>599</asp:ListItem>
                    <asp:ListItem>699</asp:ListItem>
                    <asp:ListItem>999</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:regConnectionString %>" 
                    SelectCommand="SELECT [select_plan] FROM [broadbandplan]">
                </asp:SqlDataSource>
                
                </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="Button1" runat="server" Text="SUBMIT" onclick="Button1_Click" 
                    style="height: 26px" />
            </td>
        </tr>
        </table>
<br />
    <img src="images/BSNLBroadband.jpg" />
    <br />
    <br />
<br />
If you want to take a connection of BSNL. You have to register first
<asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">REGISTER HERE</asp:LinkButton>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

