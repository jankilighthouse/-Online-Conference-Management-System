<%@ Page Language="C#" AutoEventWireup="true" CodeFile="showevent.aspx.cs" Inherits="showevent" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Online Conference Management System,SRPEC | Home </title>
<link rel="shortcut icon" href="images/ni.ico"/>
<meta name="keywords" content="" />
<meta name="" content="" />
<link href="main.css" rel="stylesheet" type="text/css" media="screen" />
      <style type="text/css">
          .DetailsViewClass
          {}
      </style>
</head>
<body>
    <form id="form1" runat="server">
<div id="header">
	<div id="logo">

	    <br />

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
		<!-- start content -->
		<div id="content" title="Recent Conference">
			<div class="post">

 <asp:DetailsView ID="DetailsViewExample" AllowPaging="true" BorderColor="White" AutoGenerateRows="false"
            runat="server" Height="50px" Font-Bold="true" Font-Size="Medium"  OnPageIndexChanging="DetailsViewExample_PageIndexChanging"
               Width="336px">
            <Fields>
                <asp:TemplateField HeaderText="Conference Name:" HeaderStyle-ForeColor="Maroon">
                    <ItemTemplate>
                            <asp:Label ID="lblID" Text='<%# Eval("ID") %>' Visible="false" runat="server"></asp:Label>

                          <asp:Label ID="lblFirstName" Text='<%# Eval("conference_name") %>' runat="server"></asp:Label>
                    </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Time:" HeaderStyle-ForeColor="Maroon">
                    <ItemTemplate>
                        <asp:Label ID="lblLastName" Text='<%# Eval("time") %>' runat="server"></asp:Label>
                    </ItemTemplate>
                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="Start Date:" HeaderStyle-ForeColor="Maroon">
                    <ItemTemplate>
                        <asp:Label ID="lblLastName" Text='<%# Eval("start_date") %>' runat="server"></asp:Label>
                    </ItemTemplate>
                    </asp:TemplateField>

                     <asp:TemplateField HeaderText="End Date:" HeaderStyle-ForeColor="Maroon" >
                    <ItemTemplate>
                        <asp:Label ID="lblLastName" Text='<%# Eval("end_date") %>' runat="server"></asp:Label>
                    </ItemTemplate>
                    </asp:TemplateField>

</Fields>
 </asp:DetailsView>
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
</div>
    </form>
</body>
</html>