<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Addreviewer.aspx.cs" Inherits="Addreviewer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Online Conference Management System,SRPEC | Home </title>
<link rel="shortcut icon" href="images/ni.ico"/>
<meta name="keywords" content="" />
<meta name="" content="" />
<link href="../main.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
<div id="header">
	<div id="logo">
		
	</div>
	<div id="menu">
		<ul id="main">
		     <li class="current_page_item"><a href="main.aspx">Home</a></li>
			<li><a href="register.aspx">Add Reviewer</a></li>
			<li><a href="login.aspx">View Marks</a></li>
			
			
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
						<li><a href="register.aspx">Add Reviewer</a></li>
			            
			            <li><a href="login.aspx">View Marks</a></li>
			
                 </ul>
				</li>
				
			</ul>
		</div>
        <div id="content">
			<div class="post">
			<p style="margin-left:40px;"><a href="Default.aspx">Home</a> &gt;&gt;Addreviewer</p>
			<img src="images/Add Reviewer.jpg" alt="new" width="150px" 
                    style="margin-left:30px; height: 162px;"/>
				
				<div class="entry">
			<form id="form1" runat="server">
             
				<table style="margin-left:180px;margin-top:-150px;border-color:Silver;border-style:solid;">
				<caption></caption>
			 <tr>
             <td> 
                 <asp:Label ID="Label3" runat="server" Text="Select Branch"></asp:Label>
            </td>
             <td>
                 <asp:DropDownList ID="ddCat" runat="server" Width="142px" >
                    
                     <asp:ListItem Value="CE" Selected="True">Computer</asp:ListItem>
                     <asp:ListItem Value="ME">Mechanical</asp:ListItem>
                     <asp:ListItem Value="EC">E&C</asp:ListItem>
                     <asp:ListItem Value="Civil">Civil</asp:ListItem>
                 </asp:DropDownList>
            </td>
             </tr>
            
			 <tr>
             <td> 
             <asp:Label ID="lblreviewer" runat="server" Text="Reviewer Name:"></asp:Label>
            </td>
             <td>
              <asp:TextBox ID="txtreviewername" runat="server" CssClass="textbox"></asp:TextBox><br />
            </td>
             </tr>
             <tr>
             <td>
             <asp:Label ID="lblqualification" runat="server" Text="Qualification"></asp:Label>
             </td>
             <td>
             <asp:TextBox ID="txtqualification" runat="server" CssClass="textbox"></asp:TextBox>
           </td>
             </tr>
              <tr>
             <td>
             <asp:Label ID="lblmobileno" runat="server" Text="MobileNo"></asp:Label>
             </td>
             <td>
             <asp:TextBox ID="txtmobileno" runat="server" CssClass="textbox"></asp:TextBox>
           </td>
             </tr>
              <tr>
             <td>
             <asp:Label ID="lblemailid" runat="server" Text="Email-Id"></asp:Label>
             </td>
             <td>
             <asp:TextBox ID="txtemailid" runat="server" CssClass="textbox"></asp:TextBox>
           </td>
             </tr>
              <tr>
             <td>
             <asp:Label ID="lbladdress" runat="server" Text="Address"></asp:Label>
             </td>
             <td>
             <asp:TextBox ID="txtaddress" runat="server" CssClass="textbox" TextMode="MultiLine"></asp:TextBox>
           </td>
             </tr>
             <tr>
             <td>     </td>
             <td> 
              <asp:Button CssClass="myButton" ID="btnAdd" runat="server" Text="Add" onclick="btnAdd_Click" 
                      />&nbsp;
           <asp:Button CssClass="myButton" ID="btnCancel" runat="server" Text="Cancel" onclick="btnCancel_Click" 
                      />
           <asp:Button CssClass="myButton" ID="btnCancel0" runat="server" Text="Update"
                      />
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
	</div></body>

</html>
