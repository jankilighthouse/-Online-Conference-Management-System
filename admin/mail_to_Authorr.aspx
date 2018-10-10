<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mail_to_Authorr.aspx.cs" Inherits="admin_mail_to_reviewer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Online Conference Management System,SRPEC  | user | Home </title>
<link rel="shortcut icon" href="../images/ni.ico"/>
<meta name="keywords" content="" />
<meta name="" content="" />
<link href="../main.css" rel="stylesheet" type="text/css" media="screen" />
    <style type="text/css">
        .style1
        {
            width: 80px;
            height: 56px;
        }
        .style2
        {
            height: 56px;
        }
    </style>
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
		     <li class="current_page_item"><a href="mail_to_Authorr.aspx">Home</a></li>
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
					<li><a href="AddEvent.aspx">Admin</a></li>
						
                 </ul>
				</li>
				
			</ul>
           
		</div>


		<!-- start content -->
		<div id="content">
			<div class="post">
            <p style="margin-left:40px;"><a href="send_mail_toreviewer.aspx">Admin</a> >>Send Mail To Author
            
            <div class="entry">
			<form id="form1" runat="server">
            <table align="left" style="margin-left:150px;border-style:solid;border-color:Silver;border-radius:9px; height: 338px;">
				
    <tr>
        <td class="style1">
        <asp:Label ID="lblselectedfilepath" runat="server" Text="Selected Paper" 
                ForeColor="Maroon" Width="100px"></asp:Label>             </td>
        <td class="style2">
                        <asp:DropDownList ID="ddselectedfile" runat="server" AutoPostBack="true" 
                            onselectedindexchanged="ddselectedfile_SelectedIndexChanged" 
                            Height="29px" >
                               
                            </asp:DropDownList>     
        </td>
    </tr>
    <tr>
        <td>
        <asp:Label ID="lblemailadd" runat="server" Text=" Email Address:" ForeColor="Maroon"></asp:Label>
       
           
        </td>
        <td>
             <asp:DropDownList ID="ddlemailaddre" runat="server" 
                 onselectedindexchanged="ddlemailaddre_SelectedIndexChanged">
             </asp:DropDownList> <br />
          
        </td>
    </tr>
    
    <tr>
        <td valign = "top">
         <asp:Label ID="lblbody1" runat="server" Text=" Body:" ForeColor="Maroon"></asp:Label>
       
                    </td>
        <td>
            <asp:TextBox ID="txtBody1" TextMode="MultiLine" runat="server" Height="120" Width="250"></asp:TextBox></td>
    </tr>
   
    <tr>
        <td>
        <asp:Label ID="lblgmailemail" runat="server" Text="Gmail Email:" ForeColor="Maroon"></asp:Label>
       
            
        </td>
        <td>
            <asp:TextBox ID="txtEmail" runat="server" Width="243px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;
        </td>
    </tr>
    <tr>
        <td>
        <asp:Label ID="lblpasswordemail" runat="server" Text="Password Email:" ForeColor="Maroon"></asp:Label>
       
            
        </td>
        <td>
            <asp:TextBox ID="txtPassword" runat="server" TextMode = "Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td>
            <asp:Button ID="Button1" Text="Send" CssClass="myButton" OnClick="SendEmail" runat="server" />
        </td>
    </tr>
</table>
              </form>
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
	<p class="copyright">&copy;&nbsp;&nbsp;2014 All Rights Reserved,SRPEC &nbsp;&bull;&nbsp; Design by C &nbsp;&bull;&nbsp; Design by <a href="#">Janki Patel &amp; Binal Prajapati</a></p>
		<div id="sidebar2" class="sidebar">
		</div>
	</div>
</body>
</html>

