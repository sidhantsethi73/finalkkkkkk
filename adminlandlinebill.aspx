<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="adminlandlinebill.aspx.cs" Inherits="landlinebill" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 100%; border-style: solid; border-width: 1px" 
        bgcolor="#0066CC">
        <tr>
            <td colspan="2" bgcolor="#0066CC" style="height: 43px">
               <center>LANDLINE BILL</center> 
            </td>
        </tr>
        <tr>
            <td style="width: 162px; height: 37px;">
                Landline no.</td>
            <td style="height: 37px">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" Width="150px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:regConnectionString %>" 
                    SelectCommand="SELECT [landline_no] FROM [adminaddconsumer]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 162px; height: 23px;">
                Consumer name</td>
            <td style="height: 23px">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 162px; height: 36px;">
                Address</td>
            <td style="height: 36px">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 162px; height: 30px;">
                Contact no</td>
            <td style="height: 30px">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 162px; height: 34px;">
                Fixed monthly charges</td>
            <td style="height: 34px">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 162px; height: 33px;">
                &nbsp;Tax(15%)</td>
            <td style="height: 33px">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 162px; height: 33px;">
                Fine</td>
            <td style="height: 33px">
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 162px; height: 31px;">
                Bill 
                Date</td>
            <td style="height: 31px">
                &nbsp;<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 162px; height: 32px;">
                Due bill date</td>
            <td style="height: 32px">
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 162px; height: 33px;">
                Total bill</td>
            <td style="height: 33px">
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="Button1" runat="server" Text="PAY BILL" 
                    onclick="Button1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

