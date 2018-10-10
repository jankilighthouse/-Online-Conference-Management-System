<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Online Conference Management System,SRPEC | Home </title>
<link rel="shortcut icon" href="images/ni.ico"/>
<meta name="keywords" content="" />
<meta name="" content="" />
<link href="main.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
<div id="header">
	<div id="logo">

	</div>
	<div id="menu">
		<ul id="main">
		     <li class="current_page_item"><a href="main.aspx">Home</a></li>
			<li><a href="register.aspx">Registration</a></li>
			<li><a href="login.aspx">Login</a></li>

		</ul>
	</div>
    <div id="wrapper">
	<!-- start page -->
	<div id="page">
		<div id="sidebar1" class="sidebar">
			<ul>
				<li>
					<h2>Categories</h2>
					<ul>
					<li><a href="main.aspx">Home</a></li>
						<li><a href="register.aspx">Registration</a></li>

			            <li><a href="login.aspx">Login</a></li>

                 </ul>
				</li>

			</ul>
		</div>
        <div id="content">
			<div class="post">
			<p style="margin-left:40px;"><a href="Default.aspx">Home</a> >>Registration</p>
			<img src="images/register.jpg" alt="new" height="150px" width="150px" style="margin-left:30px;"/>

				<div class="entry">
			<form id="form1" runat="server">

				<table style="margin-left:180px;margin-top:-150px;border-color:Silver;border-style:solid;">
				<caption></caption>
			 <tr>
             <td>
            <asp:Label ID="lblusername" Text="Username" runat="server"></asp:Label>
            </td>

            <td>
            <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
            ControlToValidate="txtusername" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>

            </td>
            </tr>
            <tr>
            <td>
            <asp:Label ID="lblpassword" Text="Password" runat="server"></asp:Label>
            </td>

            <td>
            <asp:TextBox ID="txtpassword" TextMode="Password" runat="server"></asp:TextBox>
            </td>
            </tr>
            <tr>
            <td>
            <asp:Label ID="lblretypepwd" Text="ReType Password" runat="server"></asp:Label>
            </td>

            <td>
            <asp:TextBox ID="txtretpepwd" TextMode="Password" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server"
            ControlToCompare="txtpassword" ControlToValidate="txtretpepwd"
            ErrorMessage="CompareValidator">Not Matched</asp:CompareValidator>

            </td>
            </tr>


            <tr>
            <td>
            <asp:Label ID="lblEmail" Text="Email-ID" runat="server"></asp:Label>
            </td>

            <td>
            <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
            ControlToValidate="txtemail" ErrorMessage="RegularExpressionValidator"
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Email-Id
        is not well formed</asp:RegularExpressionValidator>
            </td>
            </tr>
            <tr>
            <td>
            <asp:Label ID="lblmblno" Text="Mobile No" runat="server"></asp:Label>
            </td>
            <td>
            <asp:TextBox ID="txtmblno" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
            ControlToValidate="txtmblno" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>

            </td>
            </tr>

            <tr>
            <td align="center" colspan="2">
            <asp:Button CssClass="myButton" ID="btnsave" Text="Save" runat="server"
                    onclick="btnsave_Click" />
            </td>
            </tr>
             <tr><td>&nbsp;</td><td><asp:Label ID="lblmsg" runat="server" Text=""  ForeColor="Maroon"></asp:Label>
            </td></tr>

 </table>
 </form>
  </div>
  </div>
			<div class="post">
				<div class="entry">
				</div>
			</div>
			<div class="post">
				<div class="entry">
				</div>
			</div>
		</div>
		<!-- end content -->
		<!-- start sidebars -->
		<div id="sidebar2" class="sidebar">
		</div>
		<!-- end sidebars -->
		<div style="clear: both;">&nbsp;</div>
	</div>
	<!-- end page -->
</div>
<div id="footer">
	<p class="copyright">&copy;&nbsp;&nbsp;2013 All Rights Reserved,SRPEC &nbsp;&bull;&nbsp; Design by <a href="#">Janki Patel &amp; Binal Prajapati</a></p>


  </div>
  </body>
</html>