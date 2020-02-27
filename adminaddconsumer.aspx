<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="adminaddconsumer.aspx.cs" Inherits="adminaddconsumer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
        ADD CONSUMER</p>
    <table style="width: 100%">
        <tr>
            <td style="width: 115px">
                Consumer no</td>
            <td>
                <asp:TextBox ID="TextBox10" runat="server" 
                    ontextchanged="TextBox10_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 115px">
                Consumer Name</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 115px">
                Address&nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 115px">
                Contact no.</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 115px">
                E-mail</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 115px">
                Connection type</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>landline</asp:ListItem>
                    <asp:ListItem>mobile prepaid</asp:ListItem>
                    <asp:ListItem>mobile postpaid</asp:ListItem>
                    <asp:ListItem>broadband</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 115px">
                Connection No.given</td>
            <td>
                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 115px">
                Plan name</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" Width="120px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 115px">
                No.of connection</td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server" ontextchanged="TextBox8_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 115px">
                date.of.applying</td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 115px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 115px">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="submit" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

