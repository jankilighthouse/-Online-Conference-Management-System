<%@ Page Language="C#" AutoEventWireup="true" CodeFile="upload_paper.aspx.cs" Inherits="user_upload_paper" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
 <head runat="server">
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Online Conference Management System,SRPEC  | user | Home </title>
<link rel="shortcut icon" href="../images/ni.ico"/>
<meta name="keywords" content="" />
<meta name="" content="" />
<link href="../main.css" rel="stylesheet" type="text/css" media="screen" />
     <style type="text/css">
         #form1
         {
             height: 16px;
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
				<asp:Label ID="lblwelcome" runat="server" Text="Label" ForeColor="Maroon"></asp:Label><br/>
                <table align="left" 
                    style="margin-left:150px;border-style:solid;border-color:Silver;border-radius:9px; width: 434px;">
				
                <tr>
                <td><asp:Label ID="lblName" runat="server" Text="Name Of Author" ForeColor="Maroon"></asp:Label>
				</td>
                <td>
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                </td>
				</tr>
               
               <tr>
                <td>
                <asp:Label ID="lblemail" Text="E-Mail" runat="server" ForeColor="Maroon"></asp:Label>
                </td>
                <td>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                </td>
                </tr>
               
               <tr>
                <td>
                <asp:Label ID="lbltrack" Text="Track" runat="server" ForeColor="Maroon"></asp:Label> 
                </td>
                <td>
               <asp:DropDownList ID="ddtrack" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddtrack_SelectedIndexChanged">
                                <asp:ListItem Value="CE">Computer Engineering</asp:ListItem>
                                <asp:ListItem Value="Civil">Civil Engineering</asp:ListItem>
                                <asp:ListItem Value="ME">Mechanical Engineering</asp:ListItem>
                                <asp:ListItem Value="EC">E&C Engineering</asp:ListItem>
                            </asp:DropDownList>
               </td>
                </tr>
               
                <tr>
                <td>
                <asp:Label ID="lbltopics" Text="Topics" runat="server" ForeColor="Maroon"></asp:Label>
                </td>
                <td>
                 <asp:TextBox ID="txttopic" runat="server"></asp:TextBox>
                </td>
                </tr>
                
                <tr>
                <td>
                <asp:Label ID="lblqualif" Text="Qualification" runat="server" ForeColor="Maroon"></asp:Label>
                </td>
                <td>
                <asp:TextBox ID="txtqualif" runat="server" ></asp:TextBox>
                </td>
                </tr>
               
               <tr>
              <td>
               <asp:Label ID="lbluploadpaper" Text="Upload Paper" runat="server" ForeColor="Maroon"></asp:Label>
               </td>
               <td>
               <asp:FileUpload ID="FileUpload1" runat="server" />
               </td>
               </tr>
               
               <tr>
              <td align="center" colspan="2">
             <asp:Button ID="btnUpload" Text="Upload" CssClass="myButton" runat="server" 
                      onclick="btnUpload_Click" />
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

			