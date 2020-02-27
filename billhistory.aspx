<%@ Page Title="" Language="C#" MasterPageFile="afterlogin.master" AutoEventWireup="true" CodeFile="billhistory.aspx.cs" Inherits="billhistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">



    <table style="width: 100%">
        <tr>
            <td style="width: 114px; height: 21px">
                Enter customer no.</td>
            <td style="height: 21px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 114px">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
                <br />
            </td>
        </tr>
    </table>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="bill_no" HeaderText="bill_no" 
                SortExpression="bill_no" />
            <asp:BoundField DataField="consumer_no" HeaderText="consumer_no" 
                SortExpression="consumer_no" />
            <asp:BoundField DataField="cons_name" HeaderText="cons_name" 
                SortExpression="cons_name" />
            <asp:BoundField DataField="address" HeaderText="address" 
                SortExpression="address" />
            <asp:BoundField DataField="contact_no" HeaderText="contact_no" 
                SortExpression="contact_no" />
            <asp:BoundField DataField="connection" HeaderText="connection" 
                SortExpression="connection" />
            <asp:BoundField DataField="number" HeaderText="number" 
                SortExpression="number" />
            <asp:BoundField DataField="fixed_monthly_chrges" 
                HeaderText="fixed_monthly_chrges" SortExpression="fixed_monthly_chrges" />
            <asp:BoundField DataField="usage_charges" HeaderText="usage_charges" 
                SortExpression="usage_charges" />
            <asp:BoundField DataField="service_tax" HeaderText="service_tax" 
                SortExpression="service_tax" />
            <asp:BoundField DataField="late_fee_chrges" HeaderText="late_fee_chrges" 
                SortExpression="late_fee_chrges" />
            <asp:BoundField DataField="total_chrges" HeaderText="total_chrges" 
                SortExpression="total_chrges" />
            <asp:BoundField DataField="bill_date" HeaderText="bill_date" 
                SortExpression="bill_date" />
            <asp:BoundField DataField="due_date" HeaderText="due_date" 
                SortExpression="due_date" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:regConnectionString %>" 
    SelectCommand="SELECT * FROM [bill] WHERE ([consumer_no] = @consumer_no)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="consumer_no" 
                PropertyName="Text" Type="String" />
        </SelectParameters>
</asp:SqlDataSource>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

</asp:Content>

