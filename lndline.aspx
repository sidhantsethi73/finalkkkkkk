<%@ Page Title="" Language="C#" MasterPageFile="afterlogin.master" AutoEventWireup="true" CodeFile="lndline.aspx.cs" Inherits="lndline" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 89%; height: 507px; background-color: #66CCFF; margin-left: 0px;">
        <tr>
            
            <td colspan="2" style="height: 80px"> <center style="font-style: normal; font-weight: bold; font-size: x-large; color: #CC3300;">LANDLINE CONNECTION</center>
                </td>
        </tr>
        <tr>
            <td colspan="2">
                 <a href="landlineplanaftrlogin.aspx">View LANDLINE Plan</a></td>
        </tr>
        <tr>
            <td style="width: 150px">
                Name
                </td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Required*" ControlToValidate="TextBox6" ForeColor="Red">required</asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td style="width: 150px">
                Billing Address</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Required*" ControlToValidate="TextBox2" ForeColor="Red">required</asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td style="width: 150px; height: 48px;">
                Tariff Plan Opted</td>
            <td style="height: 48px">
                <asp:DropDownList ID="ddl" runat="server">
                    <asp:ListItem>199</asp:ListItem>
                    <asp:ListItem>250</asp:ListItem>
                    <asp:ListItem>399</asp:ListItem>
                    <asp:ListItem>500</asp:ListItem>
                    <asp:ListItem>699</asp:ListItem>
                </asp:DropDownList>
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 150px">
                Date of Applying</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 150px; height: 44px;">
                Status</td>
            <td style="height: 44px">
                <asp:RadioButton ID="RadioButton1" runat="server" Text="Active" 
                    GroupName="ab" />
                <asp:RadioButton ID="RadioButton2" runat="server" Text="De-active" 
                    GroupName="ab" />
            </td>
        </tr>
        <tr>
            <td style="width: 150px; height: 41px;">
                Pin Code</td>
            <td style="height: 41px">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="Required*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 150px; height: 45px;">
                No. of Connection</td>
            <td style="height: 45px">
                <asp:DropDownList ID="ddl2" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="Button1" runat="server" Height="31px" onclick="Button1_Click" 
                    style="margin-left: 0px" Text="SUBMIT" Width="147px" />
            &nbsp;
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
<br />
    <img src="images/BSNL_Landline.jpg" />
    <br />
    <br />
If you want to take a connection of BSNL. You have to register first
<asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">REGISTER HERE</asp:LinkButton>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

