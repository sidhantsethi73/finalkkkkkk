<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="broadbandplan.aspx.cs" Inherits="planname" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table style="width: 78%; height: 417px; background-color: #66CCFF; margin-bottom: 0px;">
        <tr>
        <td colspan="2"><center style="font-style: normal; font-weight: bold; font-size: x-large">PLANS</center>
                </td>
          <tr>
            <td style="width: 251px">
                Plan Name</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource2" DataTextField="plan_name" 
                    DataValueField="plan_name" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem>399</asp:ListItem>
                    <asp:ListItem>499</asp:ListItem>
                    <asp:ListItem>599</asp:ListItem>
                    <asp:ListItem>699</asp:ListItem>
                    <asp:ListItem>999</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:regConnectionString %>" 
                    SelectCommand="SELECT [plan_name] FROM [plansofbroadband]"></asp:SqlDataSource>
               </td>
        </tr>
        <tr>
            <td style="width: 251px; height: 28px;">
                Monthly Charges</td>
            <td style="height: 28px">
                <asp:TextBox ID="TextBox2" runat="server" Enabled="False"></asp:TextBox>
               </td>
        </tr>
        <tr>
            <td style="width: 251px">
                Download Upload speed</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Enabled="False"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td style="width: 251px">
                Security Deposit</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" Enabled="False"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td style="width: 251px">
                Telephone Fixed Monthly Charges</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" Enabled="False"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td style="width: 251px">
                Free Calls</td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server" Enabled="False"></asp:TextBox>
       </td>
        </tr>
        &nbsp;</td>
       
        <tr>
            <td>
                Total</td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>       
       
        </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

