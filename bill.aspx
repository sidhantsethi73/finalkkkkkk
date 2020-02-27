<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="bill.aspx.cs" Inherits="bill" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <center><h1><u>Bill Generation</u></h1>
 <table style="width: 100%">
     <tr>
         <td style="width: 222px; height: 26px;">
             BILL NO.</td>
         <td style="height: 26px">
             <asp:TextBox ID="TextBox1" runat="server" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
             </td>
         <td style="height: 26px">
             &nbsp;</td>
     </tr>
     <tr>
         <td style="width: 222px">
             CONSUMER NO.</td>
         <td>
             <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                 DataSourceID="SqlDataSource1" DataTextField="consumer_no" 
                 DataValueField="consumer_no" 
                 onselectedindexchanged="DropDownList1_SelectedIndexChanged">
             </asp:DropDownList>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                 ConnectionString="<%$ ConnectionStrings:regConnectionString %>" 
                 SelectCommand="SELECT [consumer_no] FROM [adminaddconsumer]">
             </asp:SqlDataSource>
         </td>
         <td>
             &nbsp;</td>
     </tr>
     <tr>
         <td style="width: 222px">
             CONSUMER NAME </td>
         <td>
             <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
         </td>
         <td>
             &nbsp;</td>
     </tr>
     <tr>
         <td style="width: 222px">
             ADDRESS</td>
         <td>
             <asp:TextBox ID="TextBox4" runat="server" ontextchanged="TextBox4_TextChanged"></asp:TextBox>
         </td>
         <td>
             &nbsp;</td>
     </tr>
     <tr>
         <td style="width: 222px">
             CONTACT NO.</td>
         <td>
             <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
         </td>
         <td>
             &nbsp;</td>
     </tr>
     <tr>
         <td style="width: 222px">
             CONNECTION</td>
         <td>
             <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
         </td>
         <td>
             &nbsp;</td>
     </tr>
     <tr>
         <td style="width: 222px">
             NUMBER</td>
         <td>
             <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
         </td>
         <td>
             &nbsp;</td>
     </tr>
     <tr>
         <td style="width: 222px">
             FIXED MONTHLY CHARGES</td>
         <td>
             <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
         </td>
         <td>
             <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Button" />
         </td>
     </tr>
     <tr>
         <td style="width: 222px">
             USAGE CHARGES</td>
         <td>
             <asp:TextBox ID="TextBox14" runat="server" 
                 ontextchanged="TextBox14_TextChanged"></asp:TextBox>
         </td>
         <td>
             &nbsp;</td>
     </tr>
     <tr>
         <td style="width: 222px">
             SERVICE TAX(14%)</td>
         <td>
             <asp:TextBox ID="TextBox6" runat="server" ontextchanged="TextBox6_TextChanged"></asp:TextBox>
         </td>
         <td>
             &nbsp;</td>
     </tr>
     <tr>
         <td style="width: 222px">
             TOTAL CHARGES</td>
         <td>
             <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
         </td>
         <td>
             &nbsp;</td>
     </tr>
     <tr>
         <td style="width: 222px">
             BILL DATE</td>
         <td>
             <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
         </td>
         <td>
             &nbsp;</td>
     </tr>
     <tr>
         <td style="width: 222px">
             LATE FEE CHARGES</td>
         <td>
             <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
         </td>
         <td>
             &nbsp;</td>
     </tr>
     <tr>
         <td style="width: 222px">
             DUE DATE</td>
         <td>
             <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
         </td>
         <td>
             &nbsp;</td>
     </tr>
     <tr>
         <td style="width: 222px">
             BILL AFTER DUE DATE</td>
         <td>
             <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
         </td>
         <td>
             &nbsp;</td>
     </tr>
     <tr>
         <td colspan="2">
             <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
         </td>
         <td>
             &nbsp;</td>
     </tr>
     </table>
     
     </center>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

