<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="newcon.aspx.cs" Inherits="newcon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div style="font-size: large; font-weight: normal; font-style: oblique; color: #009999; text-decoration: blink"> 
    <center style="font-style: normal; font-weight: bold; font-size: x-large; color: #CC3300;">
        LANDLINE CONNECTION<br />
        <br />
    </center>


 If you want a new LANDLINE connection "CLICK BELOW"

        <br />

    <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/lndline.aspx">Click Here</asp:HyperLink>
    <br />
</div>
 <div style="color: #009999; font-style: oblique; font-weight: normal; font-size: large; text-decoration: blink">
  <center style="font-style: normal; font-weight: bold; font-size: x-large; color: #CC3300;">
      MOBILE CONNECTION<br />
<br />
    </center>
If you want a new MOBILE connection "CLICK BELOW"

     <br />
     <br />
     <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/mobilecon.aspx">Click Here</asp:HyperLink>
     <br />

 </div>
 <div style="color: #009999; font-style: oblique; font-size: large; font-weight: normal; text-decoration: blink">
  <center style="font-style: normal; font-weight: bold; font-size: x-large; color: #CC3300;">
      BROADBAND CONNECTION<br />
<br />
    </center>
     If you want a new BROADBAND connection &quot;CLICK BELOW&quot;
     <br />
     <br />
     <asp:HyperLink ID="HyperLink3" runat="server" 
         NavigateUrl="~/Broadband plan.aspx">Click Here</asp:HyperLink>
     <br />
 </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

