<%@ Page Title="" Language="C#" MasterPageFile="~/afterlogin.master" AutoEventWireup="true" CodeFile="recieptaftrlogin.aspx.cs" Inherits="recieptaftrlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<h1 style="font-style: italic;  height: 57px; width: 780px; text-align: center;"> <b><u>RECEIPT</u></b></h1>
           <table cellpadding="2" 
            style="width: 100%; border: 2px solid #c0c0c0; background-color: #cccccc">
            <tr>
                <td>
                    Receipt Number</td>
                <td style="width: 342px">
                    <asp:TextBox ID="TextBox1" runat="server" ontextchanged="TextBox1_TextChanged" 
                        Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
  
                    Connection <b>
                    Number</b></td>
                <td style="width: 342px">
                    <asp:Label ID="Label46" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="height: 27px">
  
        <b>
                    Consumer 
                    Name</b></td>
                <td style="width: 342px; height: 27px">
                    <asp:Label ID="Label47" runat="server" Text="Label"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td style="height: 27px">
                    Total Amount</td>
                <td style="width: 342px; height: 27px">
                    <asp:Label ID="Label48" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="height: 27px">
                    Date</td>
                <td style="width: 342px; height: 27px">
                    <asp:Label ID="Label49" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="height: 27px">
                    Payment Mode</td>
                <td style="width: 342px; height: 27px">
                    <asp:Label ID="Label51" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="height: 27px">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        Text="Proceed to home" />
                </td>
                <td style="width: 342px; height: 27px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="height: 27px" colspan="2">
                    <asp:Label ID="Label45" runat="server" Font-Bold="True" Font-Size="15pt" 
                        ForeColor="#660066" Text="Thanks For Your Payment...Please Visit Again!!!"></asp:Label>
                </td>
            </tr>
        </table>
      
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

