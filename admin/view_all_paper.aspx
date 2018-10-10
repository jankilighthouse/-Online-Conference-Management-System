<%@ Page Language="C#" AutoEventWireup="true" CodeFile="view_all_paper.aspx.cs" Inherits="admin_view_paper" %>

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
		     <li class="current_page_item"><a href="mail_to_Authorr.aspx">Home</a></li>
              <li><a href="view_all_paper.aspx">View All Paper</a></li>

            <li><a href="Addreviewer.aspx">Reviewer</a></li>
                <li><a href="AddEvent.aspx">Event</a></li>
                <li><a href="testmail.aspx">E-Mail To Reviewer</a></li>


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
            <p style="margin-left:40px;"><a href="send_mail_toreviewer.aspx">Admin</a> >>Send Mail To Author</p>

				<form id="form1" runat="server">

                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" OnRowCommand="GridView1_RowCommand"
                 PageSize="10"  CellPadding="0"
            BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px"
            CellSpacing="2" Width="500px" Height="166px" style="margin-top: 0px">
    <Columns>

    <asp:TemplateField HeaderText="Author_ID">
                                    <ItemTemplate>
                                        <%# Eval("author_id")%>
                                    </ItemTemplate>
                                </asp:TemplateField>

    <asp:TemplateField HeaderText="Paper_Code">
                                    <ItemTemplate>
                                        <%# Eval("paper_code")%>
                                    </ItemTemplate>
                                </asp:TemplateField>

    <asp:TemplateField HeaderText="User_Name">
                                    <ItemTemplate>
                                        <%# Eval("username")%>
                                    </ItemTemplate>
                                </asp:TemplateField>


    <asp:TemplateField HeaderText="Email">
                                    <ItemTemplate>
                                        <%# Eval("email")%>
                                    </ItemTemplate>
                                </asp:TemplateField>

 <asp:TemplateField HeaderText="Track">
                                    <ItemTemplate>
                                        <%# Eval("track")%>
                                    </ItemTemplate>
                                </asp:TemplateField>

 <asp:TemplateField HeaderText="Topic">
                                    <ItemTemplate>
                                        <%# Eval("topic")%>
                                    </ItemTemplate>
                                </asp:TemplateField>
   <asp:TemplateField HeaderText="Qualification">
                                    <ItemTemplate>
                                        <%# Eval("qualification")%>
                                    </ItemTemplate>
                                </asp:TemplateField>


 <asp:TemplateField HeaderText="Filepath">

                                       <ItemTemplate>
                                        <%# Eval("filepath")%>
                                        </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField>
                                         <ItemTemplate>

                                        <asp:LinkButton OnClientClick="return confirm('sure delete it????');" CommandName="Del"
                                            CommandArgument='<%# Eval("author_id")%>' ID="lnkdelete" runat="server">
                                            <img src="~/images/delIcon.jpg" width="20px" alt="Delete" />
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

                <br />
                <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>



              </form>
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
	</div>
</body>
</html>

