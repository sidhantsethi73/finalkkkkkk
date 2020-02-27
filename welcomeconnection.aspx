<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="welcomeconnection.aspx.cs" Inherits="welcomeconnection" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p style="font-family: 'Lucida Calligraphy'; color: #0000FF; font-size: xx-large">
        Congratulations,
    </p>
    <p style="font-family: 'Lucida Calligraphy'; font-size: x-large; color: #0000FF">
        Successfully Connection Assigned.</p>
    <table style="width: 100%; background-color: #66CCFF">
        <tr>
            <td>
                Name</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Contact No. given</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                
                Connection type</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                
                <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
                
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <p style="font-family: 'Lucida Calligraphy'; color: #0000FF; font-size: xx-large">
        Now, You can enjoy the services of BSNL
    </p>
    <br />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

