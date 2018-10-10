<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddEvent.aspx.cs" Inherits="admin_AddEvent" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
		     <li class="current_page_item"><a href="AddEvent.aspx">Home</a></li>

		    <li><a href="view_all_paper.aspx">View All Paper</a></li>

            <li><a href="Addreviewer.aspx">Reviewer</a></li>
                <li><a href="AddEvent.aspx">Event</a></li>
                <li><a href="testemail.aspx">E-Mail To Reviewer</a></li>


                <li><a href="mail_to_Authorr.aspx">E-Mail To Author</a></li>
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
					<li><a href="AddEvent.aspx">Home</a></li>
<li> Conference Deatils</li>

                 </ul>
				</li>

			</ul>
		</div>

		<!-- start content -->
		<div id="content">
			<div class="post">
            <p style="margin-left:40px;"><a href="ViewPaper.aspx">Admin</a> >>Conference Detail</p>

				<div class="entry">
				<form id="form1" runat="server">
				 <table align="left"
                     style="margin-left:150px;border-style:solid;border-color:Silver;border-radius:9px; width: 470px; height: 258px;">

                <tr>
                <td><asp:Label ID="lblconfname" runat="server" Text="Conference Name" ForeColor="Maroon"></asp:Label>
				</td>
                <td>
                <asp:TextBox ID="txtconfname" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                            ControlToValidate="txtconfname" ErrorMessage="Conference name Should not be Blank."
                            Font-Bold="False"></asp:RequiredFieldValidator>
                </td>
				</tr>

                <tr>
                <td><asp:Label ID="lbltime" runat="server" Text="Time" ForeColor="Maroon"></asp:Label>
				</td>
                <td>
                <asp:TextBox ID="txttime" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="vldTime" runat="server"
                            ControlToValidate="txttime" ErrorMessage="Time Should not be Blank."
                            Font-Bold="False"></asp:RequiredFieldValidator>
                </td>
				</tr>

               <tr>
                <td>
                <asp:Label ID="lblstartdate" Text="StartDate" runat="server" ForeColor="Maroon"></asp:Label>
                </td>
                <td>
                <asp:TextBox ID="txtstartdate" runat="server"></asp:TextBox>

                <asp:RequiredFieldValidator ID="vldstdate" runat="server"
                            ErrorMessage="Plese Enter Starting Date" ControlToValidate="txtstartdate"
                            ValidationGroup="a" Font-Bold="False"></asp:RequiredFieldValidator>
                </td>
                </tr>

               <tr>
                <td>
                <asp:Label ID="lblenddate" Text="EndDate" runat="server" ForeColor="Maroon"></asp:Label>
                </td>
                <td>
                <asp:TextBox ID="txtenddate" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="vldEndDate" runat="server"
                            ErrorMessage="Please Enter Ending Date" ControlToValidate="txtenddate"
                            ValidationGroup="a" Font-Bold="False"></asp:RequiredFieldValidator>

                </td>
                </tr>
                <tr>
               <td align="center" colspan="2">
                <asp:Button ID="btnsave" Text="Save" CssClass="myButton" runat="server"
                      onclick="btnsave_Click" />
                      <asp:Label ID="lblmsg" runat="server" Text="" ForeColor="Black"></asp:Label>
              </td>
               </tr>

              </table>
              </form>
				</div>
                 </div>

			<div class="post">
			</div>
			<div class="post">
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

