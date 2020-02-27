<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table bgcolor="#66ccff" cellpadding="1" style="height: 647px; background-color: #99CCFF; border-top-color: #000000; color: #000000;">
            <tr>
                <td bgcolor="#66ccff" colspan="3" 
                    
                    style="background-color: #C0C0C0; font-size: xx-large; color: #0099FF; height: 27px;">
                    <center style="color: #000000">REGISTRATION FORM</center></td>
            </tr>
            <tr>
                <td bgcolor="#66ccff" class="style9" style="width: 110px; height: 21px;">
                    First Name</td>
                <td bgcolor="#66ccff" class="style4" style="width: 213px; height: 21px;">
                    <asp:TextBox ID="fnm" runat="server" Width="127px" Height="22px"></asp:TextBox>
                </td>
                <td bgcolor="#66ccff" class="style4" style="width: 163px; height: 21px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="fnm" ErrorMessage="Required*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td bgcolor="#66ccff" class="style10" style="width: 110px; height: 22px;">
                    Last Name</td>
                <td bgcolor="#66ccff" class="style7" style="width: 213px; height: 22px;">
                    <asp:TextBox ID="lstname" runat="server" Width="127px"></asp:TextBox>
                </td>
                <td bgcolor="#66ccff" class="style7" style="width: 163px; height: 22px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="lstname" ErrorMessage="Required*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td bgcolor="#66ccff" class="style11" style="width: 110px; height: 14px;">
                    Address</td>
                <td bgcolor="#66ccff" class="style3" style="width: 213px; height: 14px;">
                    <asp:TextBox ID="address" runat="server" Width="127px"></asp:TextBox>
                </td>
                <td bgcolor="#66ccff" class="style3" style="width: 163px; height: 14px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ErrorMessage="Required*" ForeColor="Red" ControlToValidate="address"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td bgcolor="#66ccff" class="style11" style="width: 110px; height: 12px;">
                    Contact No .</td>
                <td bgcolor="#66ccff" class="style3" style="width: 213px; height: 12px;">
                    <asp:TextBox ID="contact" runat="server" Width="127px" MaxLength="10"></asp:TextBox>
                  
                </td>
                <td bgcolor="#66ccff" class="style3" style="width: 163px; height: 12px;">
                    <asp:RangeValidator ID="RangeValidator2" runat="server" 
                        ErrorMessage="RangeValidator" MaximumValue="9999999999" 
                        MinimumValue="7500000000" ControlToValidate="contact" ForeColor="Red"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td bgcolor="#66ccff" class="style10" style="width: 110px; height: 17px;">
                    City</td>
                <td bgcolor="#66ccff" class="style7" style="width: 213px; height: 17px;">
                    <asp:TextBox ID="city" runat="server" Width="127px"></asp:TextBox>
                </td>
                <td bgcolor="#66ccff" class="style7" style="width: 163px; height: 17px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="city" ErrorMessage="Required*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td bgcolor="#66ccff" class="style10" style="width: 110px; height: 19px">
                    Pin-code</td>
                <td bgcolor="#66ccff" class="style7" style="width: 213px; height: 19px;">
                    <asp:TextBox ID="pin" runat="server" Width="127px" MaxLength="7"></asp:TextBox>
                   
                </td>
                <td bgcolor="#66ccff" class="style7" style="width: 163px; height: 19px;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ErrorMessage="Required*" ForeColor="Red" ControlToValidate="pin"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td bgcolor="#66ccff" class="style10" style="height: 11px; width: 110px;">
                    E-Mail</td>
                <td bgcolor="#66ccff" class="style7" style="width: 213px; height: 11px;">
                    <asp:TextBox ID="mail" runat="server" Width="127px"></asp:TextBox>
                </td>
                <td bgcolor="#66ccff" class="style7" style="width: 163px; height: 11px;">
                    </td>
            </tr>
            <tr>
                <td bgcolor="#66ccff" class="style10" style="width: 110px; height: 12px;">
                    password</td>
                <td bgcolor="#66ccff" class="style7" style="width: 213px; height: 12px;">
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Password" Width="127px"></asp:TextBox>
                </td>
                <td bgcolor="#66ccff" class="style7" style="width: 163px; height: 12px;">
                    </td>
            </tr>
            <tr>
                <td bgcolor="#66ccff" class="style10" style="width: 110px; height: 8px;">
                    confirm password</td>
                <td bgcolor="#66ccff" class="style7" style="width: 213px; height: 8px;">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="127px"></asp:TextBox>
                </td>
                <td bgcolor="#66ccff" class="style7" style="width: 163px; height: 8px;">
                    <asp:CompareValidator ID="CompareValidator3" runat="server" 
                        ControlToCompare="TextBox1" ControlToValidate="TextBox2" 
                        ErrorMessage="password mismatch" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td bgcolor="#66ccff" class="style10" style="width: 110px; height: 23px;">
                    Image</td>
                <td bgcolor="#66ccff" class="style7" style="width: 213px; height: 23px;">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
                <td bgcolor="#66ccff" class="style7" 
                    style="width: 163px; margin-left: 120px; height: 23px;">
                    <asp:Image ID="Image1" runat="server" Height="80px" Width="150px" />
                </td>
            </tr>
            <tr>
                <td bgcolor="#66ccff" class="style8" colspan="3" style="height: 30px">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="REGISTER" 
                        style="height: 26px" BackColor="#CCCCCC" ForeColor="Black" />
                </td>
            </tr>
            </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

