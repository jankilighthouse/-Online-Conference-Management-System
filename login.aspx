﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

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
			<p style="margin-left:40px;"><a href="Default.aspx">Home</a> >>Login</p>
			<img src="images/Login.jpg" alt="new" height="150px" width="150px" style="margin-left:30px;"/>
            <form id="form1" runat="server">
           
            <table style="margin-left:180px;margin-top:-150px;border-color:Silver;border-style:solid;">
				<caption></caption>
			 <tr>
             <td> 
                 <asp:Label ID="Label3" runat="server" Text="Select User"></asp:Label>
            </td>
             <td>
                 <asp:DropDownList ID="ddCat" runat="server" Width="142px">
                     <asp:ListItem Value="A">Administrator</asp:ListItem>
                     <asp:ListItem Value="U" Selected="True">User</asp:ListItem>
                 </asp:DropDownList>
            </td>
             </tr>
            
			 <tr>
             <td> 
             <asp:Label ID="lbusername" runat="server" Text="Username"></asp:Label>
            </td>
             <td>
              <asp:TextBox ID="txtusername1" runat="server" CssClass="textbox"></asp:TextBox><br />
            </td>
             </tr>
             <tr>
             <td>
             <asp:Label ID="lbpwd" runat="server" Text="Password"></asp:Label>
             </td>
             <td>
             <asp:TextBox ID="txtPassword" runat="server" CssClass="textbox" TextMode="Password"></asp:TextBox>
           </td>
             </tr>
             <tr>
             <td>     </td>
             <td>  <asp:Button CssClass="myButton" ID="btnLogin" runat="server" Text="Login" 
                     onclick="btnLogin_Click" />&nbsp;
           <asp:Button CssClass="myButton" ID="btnCancel" runat="server" Text="Cancel" 
                     onclick="btnCancel_Click" />
            </td>
             </tr>
             <tr><td>&nbsp;</td><td><asp:Label ID="lblmsg" runat="server" Text=""  ForeColor="Maroon"></asp:Label>
            </td></tr>
            
            </table> 
            
               &nbsp;<div class="entry">
			  
               </form>
			
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
	</div></body>
</html>