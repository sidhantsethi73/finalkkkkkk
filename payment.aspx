<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="payment.aspx.cs" Inherits="payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

<table style="width:100%;">
        <tr>
            <td align="center" class="style1" colspan="3">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Size="35px" ForeColor="Black" Text="Payment Mode"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Menu ID="Menu1" runat="server" BackColor="White" Font-Bold="True" Font-Size="20px" ForeColor="#FF0066" Height="394px" onmenuitemclick="Menu1_MenuItemClick" Width="240px">
                    <Items>
                        
                        <asp:MenuItem Text="Net Banking" Value="Net Banking"></asp:MenuItem>
                        <asp:MenuItem Text="Credit Card" Value="Credit Card"></asp:MenuItem>
                        <asp:MenuItem Text="Debit Card" Value="Debit Card"></asp:MenuItem>
                    </Items>
                </asp:Menu>
            </td>
            <td colspan="2">
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View2" runat="server">
                        <asp:Panel ID="Panel3" runat="server" BackColor="Silver" BorderColor="#CC0066" 
                            BorderStyle="Double" Height="274px" Width="589px">
                            <table style="width:100%;">
                                <tr>
                                    <td align="center" colspan="3">
                                        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="20pt" 
                                            ForeColor="White" Text="Pay using Net Banking"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <asp:Label ID="Label23" runat="server" Text="Label" Visible="False"></asp:Label>
                                        <asp:Label ID="Label24" runat="server" Text="Label" Visible="False"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <asp:Label ID="Label22" runat="server" Text="Label"></asp:Label>
                                        <asp:Label ID="Label25" runat="server" Text="Label" Visible="False"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label9" runat="server" Font-Size="15pt" ForeColor="White" 
                                            Text="Choose your Bank"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="13pt" 
                                            Height="40px" Width="151px">
                                            <asp:ListItem>-- Select Bank --</asp:ListItem>
                                            <asp:ListItem>HDFC Bank</asp:ListItem>
                                            <asp:ListItem>ICICI Bank</asp:ListItem>
                                            <asp:ListItem>AXIS Bank</asp:ListItem>
                                            <asp:ListItem>Yes Bank</asp:ListItem>
                                            <asp:ListItem>Punjab National Bank Corp Accnt</asp:ListItem>
                                            <asp:ListItem>Punjab National Bank Retail Accnt</asp:ListItem>
                                            <asp:ListItem>Oriental Bank Of Commerce(OBC)</asp:ListItem>
                                        </asp:DropDownList>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                            ControlToValidate="DropDownList1" ErrorMessage="Select your Bank" 
                                            InitialValue="-- Select Bank --" SetFocusOnError="True" ValidationGroup="na"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <asp:Label ID="Label10" runat="server" Font-Size="13pt" ForeColor="White" 
                                            Text="Note : After clicking on the&quot; Pay&quot; button, you will be directed to a secure gateway for payment"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="3">
                                        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Italic="True" 
                                            Font-Size="15pt" Height="39px" onclick="Button1_Click" Text="PAY" 
                                            ValidationGroup="na" Width="132px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="3">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="3">
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </asp:View>
                    <asp:View ID="View3" runat="server">
                        <asp:Panel ID="Panel4" runat="server" BackColor="Silver" BorderColor="#CC0066" 
                            BorderStyle="Double" Height="387px" Width="597px">
                            <table style="width:100%; height: 700px;">
                                <tr>
                                    <td align="center">
                                        <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Italic="False" 
                                            Font-Size="20pt" ForeColor="White" Text="Pay using Credit Card"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Panel ID="Panel6" runat="server" Height="722px">
                                            <table style="width:100%;">
                                                <tr>
                                                    <td class="style4">
                                                        <asp:Label ID="Label12" runat="server" Font-Size="15pt" ForeColor="White" 
                                                            Text="Card Number"></asp:Label>
                                                    </td>
                                                    <td colspan="2">
                                                        <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="228px"></asp:TextBox>
                                                    </td>
                                                    <td class="style5">
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                                            ControlToValidate="TextBox1" ErrorMessage="Specify the card number" 
                                                            SetFocusOnError="True" ValidationGroup="cc"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style4">
                                                        &nbsp;</td>
                                                    <td colspan="2">
                                                        &nbsp;</td>
                                                    <td class="style5">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="style4">
                                                        <asp:Label ID="Label13" runat="server" Font-Size="15pt" ForeColor="White" 
                                                            Text="Expiry Date"></asp:Label>
                                                    </td>
                                                    <td colspan="3">
                                                        <asp:Label ID="Label14" runat="server" Font-Size="15pt" ForeColor="White" 
                                                            Text="CVV"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style4">
                                                        <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="182px"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="TextBox3" runat="server" Height="30px" TextMode="Password" 
                                                            Width="228px"></asp:TextBox>
                                                    </td>
                                                    <td colspan="2">
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                            ControlToValidate="TextBox3" ErrorMessage="This field is required" 
                                                            SetFocusOnError="True" ValidationGroup="cc"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style3" colspan="4">
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                            ControlToValidate="TextBox2" ErrorMessage="This field is required" 
                                                            ValidationGroup="cc"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style4">
                                                        <asp:Label ID="Label15" runat="server" Font-Size="15pt" ForeColor="White" 
                                                            Text="Name On Card"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="TextBox4" runat="server" Height="30px" Width="228px"></asp:TextBox>
                                                    </td>
                                                    <td colspan="2">
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                            ControlToValidate="TextBox4" ErrorMessage="This field is required" 
                                                            SetFocusOnError="True" ValidationGroup="cc"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center" class="style7" colspan="4">
                                                        <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Italic="True" 
                                                            Font-Size="20pt" Height="44px" onclick="Button2_Click" Text="PAY" 
                                                            ValidationGroup="cc" Width="130px" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center" class="style7" colspan="4">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td align="center" class="style4" colspan="4">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="style4" colspan="4">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td align="center" colspan="4">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td align="center" colspan="4">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td align="center" colspan="4">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td align="center" colspan="4">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td align="center" colspan="4">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td align="center" colspan="4">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td align="center" colspan="4">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td align="center" colspan="4">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td align="center" colspan="4">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td align="center" colspan="4">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td align="center" colspan="4">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td align="center" colspan="4">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td align="center" colspan="4">
                                                        &nbsp;</td>
                                                </tr>
                                            </table>
                                        </asp:Panel>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </asp:View>
                    <asp:View ID="View5" runat="server">
                        <asp:Panel ID="Panel8" runat="server" BackColor="Silver" BorderColor="#CC0066" 
                            BorderStyle="Double" Height="367px" Width="602px">
                            <table style="width:100%;">
                                <tr>
                                    <td align="center">
                                        <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Italic="False" 
                                            Font-Size="20pt" ForeColor="White" Text="Pay using Debit Card"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Panel ID="Panel9" runat="server">
                                        </asp:Panel>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Panel ID="Panel10" runat="server">
                                            <table style="width:100%;">
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="Label18" runat="server" Font-Size="15pt" ForeColor="White" 
                                                            Text="Card Number"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="TextBox5" runat="server" Height="30px" Width="228px"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                                            ControlToValidate="TextBox5" ErrorMessage="This field is required" 
                                                            SetFocusOnError="True" ValidationGroup="dc"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="3">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="Label19" runat="server" Font-Size="15pt" ForeColor="White" 
                                                            Text="Expiry date"></asp:Label>
                                                    </td>
                                                    <td colspan="2">
                                                        <asp:Label ID="Label20" runat="server" Font-Size="15pt" ForeColor="White" 
                                                            Text="CVV"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:TextBox ID="TextBox6" runat="server" Height="30px" Width="182px"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="TextBox7" runat="server" Height="30px" TextMode="Password" 
                                                            Width="228px"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                                            ControlToValidate="TextBox7" ErrorMessage="This field is required" 
                                                            SetFocusOnError="True" ValidationGroup="dc"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="3">
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                                            ControlToValidate="TextBox6" ErrorMessage="This field is required" 
                                                            SetFocusOnError="True" ValidationGroup="dc"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="Label21" runat="server" Font-Size="15pt" ForeColor="White" 
                                                            Text="Name on Card"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="TextBox8" runat="server" Height="30px" Width="228px"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                                            ControlToValidate="TextBox8" ErrorMessage="This field is required" 
                                                            SetFocusOnError="True" ValidationGroup="dc"></asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td align="center" colspan="3">
                                                        <asp:Button ID="Button3" runat="server" Font-Bold="True" Font-Italic="True" 
                                                            Font-Size="20pt" Height="42px" onclick="Button3_Click" Text="PAY" 
                                                            Width="121px" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center" colspan="3">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td align="center" colspan="3">
                                                        &nbsp;</td>
                                                </tr>
                                            </table>
                                        </asp:Panel>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </asp:View>
                </asp:MultiView>
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>




</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

