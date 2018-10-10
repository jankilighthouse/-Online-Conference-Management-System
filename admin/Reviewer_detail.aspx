<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Reviewer_detail.aspx.cs" Inherits="Reviewer_detail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Online Conference Management System,SRPEC | Home </title>
<link rel="shortcut icon" href="images/ni.ico"/>
<meta name="keywords" content="" />
<meta name="" content="" />
<link href="../main.css" rel="stylesheet" type="text/css" media="screen" />
     <style type="text/css">
         #form1
         {
             width: 585px;
         }
     </style>
</head>
<body>
<div id="header">
	<div id="logo">

	</div>
	<div id="menu">
		<ul id="main">
		     <li class="current_page_item"><a href="Reviewer_details.aspx">Home</a></li>
			  <li><a href="Addreviewer.aspx">Reviewer</a></li>
                <li><a href="AddEvent.aspx">Event</a></li>
                <li><a href="testemail.aspx">E-Mail To Reviewer</a></li>


                <li><a href="mail_to_Authorr.aspx">E-Mail To Author</a></li>
                 <li><a href="logout.aspx">Logout</a></li>


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
					<li><a href="testemail.aspx">Home</a></li>
					<li>Reviewer Details</li>

                 </ul>
				</li>

			</ul>
		</div>
        <div id="content">
			<div class="post">
			<p style="margin-left:40px;"><a href="Default.aspx">Home</a> >>Login</p>
			&nbsp;<form id="form1" runat="server">

				<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false"
                   PageSize="10"  CellPadding="2"
            BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px"
            CellSpacing="2" Height="1px" style="margin-top: 0px" Width="500px">
    <Columns>

    <asp:TemplateField HeaderText="Reviewer_ID">
                                    <ItemTemplate>
                                        <%# Eval("Reviewer_id")%>
                                    </ItemTemplate>
                                </asp:TemplateField>

    <asp:TemplateField HeaderText="Track">
                                    <ItemTemplate>
                                        <%# Eval("track")%>
                                    </ItemTemplate>
                                </asp:TemplateField>


    <asp:TemplateField HeaderText="Name">

                                       <ItemTemplate>
                                        <%# Eval("reviewer_name")%>
                                        </ItemTemplate>
                                        </asp:TemplateField>
     <asp:TemplateField HeaderText="Qualification">

                                       <ItemTemplate>
                                        <%# Eval("qualification")%>
                                        </ItemTemplate>
                                        </asp:TemplateField>

      <asp:TemplateField HeaderText="MobileNo">

                                       <ItemTemplate>
                                        <%# Eval("mobile_no")%>
                                        </ItemTemplate>
                                        </asp:TemplateField>

       <asp:TemplateField HeaderText="Email">

                                       <ItemTemplate>
                                        <%# Eval("email")%>
                                        </ItemTemplate>
                                        </asp:TemplateField>


              <asp:TemplateField HeaderText="Address">

                                       <ItemTemplate>
                                        <%# Eval("address")%>
                                        </ItemTemplate>
                                        </asp:TemplateField>


                                        <asp:TemplateField>



                                         <ItemTemplate>


                                        <asp:LinkButton OnClientClick="return confirm('sure delete it????');" CommandName="Del"
                                            CommandArgument='<%# Eval("Reviewer_id")%>' ID="lnkdelete" runat="server"><img src="images/delIcon.jpg" width="20px" alt="Delete" />
                                                       </asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
    </Columns>
    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <FooterStyle BackColor="Gold" ForeColor="#8C4510" />
            <PagerStyle ForeColor="Maroon" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="Coral" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="Maroon" Font-Bold="True" ForeColor="Silver" />

</asp:GridView>
               </form>

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