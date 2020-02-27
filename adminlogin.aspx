<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="admimlogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Business Company</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="styles.css">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
 
    <!-- Start WOWSlider.com HEAD section --> <!-- add to the <head> of your page -->
	<link rel="stylesheet" type="text/css" href="engine1/style.css" />
	<script type="text/javascript" src="engine1/jquery.js"></script>
	<!-- End WOWSlider.com HEAD section -->


 
    <style type="text/css">
        .style1
        {
            text-decoration: underline;
        }
    </style>


 
</head>
<body>
    <form id="form1" runat="server">
<div id="wh_bg">
  <div id="bg_bg">
    <div id="top">
      <div class="top1">
          <asp:Image ID="Image1" runat="server" Height="170px" 
              ImageUrl="~/admin/bsnl.jpg" Width="998px" />
        </div>
      <div id="menu">
         <div id="Div1">
      
<div id='cssmenu'>
<ul>
    
</ul>

</div>


    </div>
      </div>
    </div>
    <div id="content">
      <div id="part1">
        <div id="con">
          <div class="con1"> 
              <div>
                  <table style="width: 76%; height: 184px">
                      <tr>
                          <td bgcolor="Silver" colspan="2">
                              <center>
                                  ADMIN LOGIN</center>
                          </td>
                      </tr>
                      <tr>
                          <td bgcolor="Silver" style="width: 99px">
                              Name</td>
                          <td bgcolor="Silver">
                              <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td bgcolor="Silver" style="width: 99px">
                              Password</td>
                          <td bgcolor="Silver">
                              <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td bgcolor="Silver" colspan="2">
                              <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Login" />
                              <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                          </td>
                      </tr>
                  </table>
              </div>
              <div>
              </div>
            </div>
          <div class="con2"> <span class="style1"><strong><em>BSNL ADMIN</em></strong></span>
              <span class="flt" style="width:270px;">
              <img src="images/dot1.gif" width="13" height="9" alt="" class="flt" style="margin:15px 0px 0px 0px;" />&nbsp;
              <asp:Image ID="Image2" runat="server" Height="190px" 
                  ImageUrl="~/admin/dc38833fb4.jpg" Width="254px" />
              </span>&nbsp;<img src="images/bar1.gif" width="274" height="1" alt="" class="flt" style="margin-top:10px;" />
              <img src="images/cont.gif" width="125" height="16" alt="" class="cont" />
              <span class="con_txt"><strong><em>Registered &amp; Corporate Office Bharat Sanchar Bhavan Harish Chandra 
              Mathur Lane Janpath, New Delhi-110 001 Corporate identity Number 
              (CIN):U74899DL2000GOI107739&nbsp; </em></strong>
              <br />
              <br /></span> </div>
        </div>
      </div>
    </div>
</div>
    </form>
</body>
</html>

