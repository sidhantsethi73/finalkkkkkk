<%@ Page Title="" Language="C#" MasterPageFile="~/afterlogin.master" AutoEventWireup="true" CodeFile="Paybill after login.aspx.cs" Inherits="Paybill_after_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<p>
       <center style="font-family: 'Lucida Calligraphy'; font-size: x-large; color: #000066"> PAY MY BILLS</center>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="landline" 
        Width="85px" />
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
        Text="mobile postpaid" />
    <asp:Button ID="Button3" runat="server" Text="Broadband" 
        onclick="Button3_Click" />
    <asp:Panel ID="Panel2" runat="server" Visible="False">
        <table style="width: 100%; border-style: solid; border-width: 1px">
            <tr>
                <td colspan="2" style="height: 23px">
                  <center> LANDLINE FORM</center> 
                </td>
            </tr>
            <tr>
                <td style="height: 28px; width: 159px">
                    ENTER LANDLINE NO</td>
                <td style="height: 28px">
                    <asp:TextBox ID="TextBox4" runat="server" Width="135px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="Button4" runat="server" Text="VIEW BILL" 
                        onclick="Button4_Click" PostBackUrl="~/landlinebill aftrlogin.aspx" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <p>
        &nbsp;</p>
    <asp:Panel ID="Panel3" runat="server" Visible="False">
        <table style="width: 100%; border-style: solid; border-width: 1px">
            <tr>
                <td colspan="2" style="height: 23px">
                  <center> MOBILE POSTPAID FORM</center> 
                </td>
            </tr>
            <tr>
                <td style="height: 23px; width: 159px">
                    ENTER POSTPAID NO</td>
                <td style="height: 23px">
                    <asp:TextBox ID="TextBox2" runat="server" ontextchanged="TextBox2_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="Button5" runat="server" Text="VIEW BILL" 
                        onclick="Button5_Click" PostBackUrl="~/Postpaid after login.aspx" />
                    <br />
                    <br />
                    </td>
            </tr>
           
        </table>
        </asp:Panel>
        <asp:Panel ID="Panel4" runat="server" Visible="False">
        <table style="width: 100%; border-style: solid; border-width: 1px">
            <tr>
                <td colspan="2" style="height: 23px">
                  <center> &nbsp;BROADBAND FORM</center> 
                </td>
            </tr>
            <tr>
                <td style="height: 23px; width: 159px">
                    ENTER BROADBAND&nbsp; NO</td>
                <td style="height: 23px">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="Button6" runat="server" Text="VIEW BILL" 
                        onclick="Button6_Click1" PostBackUrl="~/broadbandbill aftr login.aspx" />
                    <br />
                    <br />
                    </td>
            </tr>
           
        </table>
        </asp:Panel>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

