<%@ Page Language="C#" AutoEventWireup="true" CodeFile="testemail.aspx.cs" Inherits="testemail" %>

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
		     <li class="current_page_item"><a href="testemail.aspx">Home</a></li>
             
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
						
                 </ul>
				</li>
				
			</ul>
		</div>

		<!-- start content -->
		<div id="content">
			<div class="post">
            <p style="margin-left:40px;"><a href="send_mail_toreviewer.aspx">Admin</a> >>Send Mail To Reviewer</p>
		
				<div class="entry">
				<form id="form1" runat="server">
                <table align="left" 
                    
                    style="margin-left:150px;border-style:solid;border-color:Silver;border-radius:9px; height: 200; width: 300px;">
				
    <tr>
        <td style="width: 80px">
        <asp:Label ID="lbltrack2" runat="server" Text="Track" ForeColor="Maroon"></asp:Label>             </td>
        <td>
                        <asp:DropDownList ID="ddtrack2" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddtrack2_SelectedIndexChanged">
                               
                            </asp:DropDownList>     
        </td>
    </tr>
    
    <tr>
        <td>
        <asp:Label ID="lblfilepath" runat="server" Text=" Filepath:" ForeColor="Maroon"></asp:Label>
       
           
        </td>
        <td>
             <asp:DropDownList ID="ddlfilepath" runat="server" AutoPostBack="true" onselectedindexchanged="ddlfilepath_SelectedIndexChanged"
                ></asp:DropDownList> 
               
        </td>
    </tr>
    
    <tr>
    <td>
    <asp:Label ID="lblpapercode" runat="server" Visible="False"></asp:Label>
    </td>
    </tr>
    
    <tr>
        <td valign = "top">
         <asp:Label ID="lblrevieweremail" runat="server" Text=" Reviewer Email:" ForeColor="Maroon"></asp:Label>
       
                    </td>
        <td>
                       <asp:DropDownList ID="ddlreviewer_email" runat="server" AutoPostBack="true" 
                           onselectedindexchanged="ddlreviewer_email_SelectedIndexChanged" />&nbsp;</td>
    </tr>
    <tr>
    <td>
    <asp:Label ID="lblreid" runat="server" Visible="False"></asp:Label>
    </td>
    </tr>
     
    <tr>
        <td valign = "top">
         <asp:Label ID="lblbody1" runat="server" Text=" Body:" ForeColor="Maroon"></asp:Label>
       
                    </td>
        <td>
            <asp:TextBox ID="txtBody1" TextMode="MultiLine" runat="server"></asp:TextBox></td>
    </tr>
   
    <tr>
        <td>
        <asp:Label ID="lblgmailemail" runat="server" Text="Gmail Email:" ForeColor="Maroon"></asp:Label>
       
            
        </td>
        <td>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        </td>
    </tr>
    
    </tr>
    <tr>
        <td>
        <asp:Label ID="lblpasswordemail" runat="server" Text="Password Email:" ForeColor="Maroon"></asp:Label>
       
            
        </td>
        <td>
            <asp:TextBox ID="txtPassword" runat="server" TextMode = "Password" 
                style="margin-top: 0px"></asp:TextBox>
        </td>
    </tr>
   
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
		<div style="clear: both;">&nbsp;<div class="post">
				<br />
			</div>
			</div>
	</div>
	<!-- end page -->
</div>

<div id="footer">
	<p class="copyright">&copy;&nbsp;&nbsp;2013 All Rights Reserved,SRPEC &nbsp;&bull;&nbsp; Design by <a href="#">Janki Patel &amp; Binal Prajapati</a></p>
	</div>
</body>
</html>

