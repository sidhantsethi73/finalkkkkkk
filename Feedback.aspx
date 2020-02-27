<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
       <center style="font-family: cursive; background-color:Gray; font-size:xx-large; color: #000080"> Feedback 
           form</center>
       <table style="width: 101%; height: 248px;">
           <tr>
               <td bgcolor="#CCCCCC" style="width: 125px; height: 38px;">
                   Name</td>
               <td bgcolor="#CCCCCC" style="height: 38px">
                   <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                       ErrorMessage="Required*" ControlToValidate="TextBox2" ForeColor="#CC0000"></asp:RequiredFieldValidator>
               </td>
           </tr>
           <tr>
               <td bgcolor="#CCCCCC" style="width: 125px; height: 37px;">
                   Address</td>
               <td bgcolor="#CCCCCC" style="height: 37px">
                   <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                       ErrorMessage="Required*" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator>
                   </td>
           </tr>
           <tr>
               <td bgcolor="#CCCCCC" style="width: 125px; height: 40px;">
                   E-Mail</td>
               <td bgcolor="#CCCCCC" style="height: 40px">
                   <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                       ErrorMessage="Required*" ControlToValidate="TextBox4" ForeColor="Red"></asp:RequiredFieldValidator>
               </td>
           </tr>
           <tr>
               <td bgcolor="#CCCCCC" style="width: 125px; height: 41px;">
                   Contact No.</td>
               <td bgcolor="#CCCCCC" style="height: 41px">
                   <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                   <asp:RangeValidator ID="RangeValidator1" runat="server" 
                       ControlToValidate="TextBox5" ErrorMessage="Invalid Number" ForeColor="Red" 
                       MaximumValue="9999999999" MinimumValue="7300000000"></asp:RangeValidator>
               </td>
           </tr>
           <tr>
               <td bgcolor="#CCCCCC" style="width: 125px">
                   Feedback</td>
               <td bgcolor="#CCCCCC">
                   <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                       ErrorMessage="Required*" ControlToValidate="TextBox6" ForeColor="Red"></asp:RequiredFieldValidator>
               </td>
           </tr>
           <tr>
               <td bgcolor="#CCCCCC" colspan="2">
                   <asp:Button ID="Button1" runat="server" Height="33px" onclick="Button1_Click" 
                       Text="SUBMIT" Width="112px" />
                   <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
               </td>
           </tr>
       </table>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

