<%@ Page Language="C#" AutoEventWireup="true" CodeFile="changed_password.aspx.cs" Inherits="user_changed_password" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
 <head id="Head1" runat="server">
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Online Conference Management System,SRPEC  | user | Home </title>
<link rel="shortcut icon" href="../images/ni.ico"/>
<meta name="keywords" content="" />
<meta name="" content="" />
<link href="../main.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
<p>
        <br />
    </p>
<!-- start header -->
<div id="header">
	<div id="logo">
		
	</div>
	<div id="menu">
		<ul id="main">
		     <li class="current_page_item"><a href="upload_paper.aspx">Home</a></li>
		     <li><a href="viewupload.aspx">View Upload</a></li>
              <li><a href="changed_password.aspx">Change Password</a></li>
			
			 <li><a href="logout.aspx">Logout</a></li>
			 
			
		</ul>
	</div>


<!-- end header -->
<div id="wrapper">
	<!-- start page -->
	<div id="page">
		<div id="sidebar1" class="sidebar">
			<ul>
				<li>
					<h2>Categories</h2>
					<ul>
					<li><a href="upload_paper.aspx">Home</a></li>
						
                 </ul>
				</li>
				
			</ul>
		</div>

		<!-- start content -->
		<div id="content">
			<div class="post">
				<div class="entry">
				<form id="form1" runat="server">

                <div>
                            <table style="margin-left: 200px;border-color:Silver;border-style:solid;border-radius:9px;">
                                <caption>
                                    Change Password</caption>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label1" runat="server" Text="User ID"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtUid" runat="server" CssClass="textbox"></asp:TextBox><br />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label4" runat="server" Text="OLD Password"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtoPassword" runat="server" CssClass="textbox" TextMode="Password"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtPassword" runat="server" CssClass="textbox" TextMode="Password"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label3" runat="server" Text="Confirm Password"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtcpassword" runat="server" CssClass="textbox" TextMode="Password"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td>
                                        <asp:Button CssClass="button" ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />&nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;
                                    </td>
                                    <td>
                                        <asp:Label ID="lblmsg" runat="server" Text="" ForeColor="Maroon"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </div>


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

			