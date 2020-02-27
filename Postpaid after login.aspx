<%@ Page Title="" Language="C#" MasterPageFile="~/afterlogin.master" AutoEventWireup="true" CodeFile="Postpaid after login.aspx.cs" Inherits="Postpaid_after_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<table style="width: 95%; height: 600px; background-color: #66CCFF">
        <tr>
            <td colspan="2"><center style="font-style: normal; font-weight: bold; font-size: x-large">POSTPAID PLAN</center>
                </td>
        </tr>
        <tr>
            <td style="width: 161px">
                Plan Name</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="plan_name" 
                    DataValueField="plan_name" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:regConnectionString %>" 
                    SelectCommand="SELECT [plan_name] FROM [postpaid]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 161px">
&nbsp;Activation Charges</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 161px">
                Security Deposit</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 161px">
                Fixed Monthly Charges</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 161px">
                Free Local Calls</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 161px">
                Free STD Calls</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 161px">
                Local Call Charges</td>
            <td>
                <asp:TextBox ID="TextBox11" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 161px">
                National Call Charges</td>
            <td>
                <asp:TextBox ID="TextBox12" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 161px">
                International Call Charges</td>
            <td>
                <asp:TextBox ID="TextBox13" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 161px">
                Total</td>
            <td>
                <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                </td>
        </tr>
        </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

