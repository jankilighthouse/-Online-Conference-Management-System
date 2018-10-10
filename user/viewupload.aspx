<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewupload.aspx.cs" Inherits="user_viewupload" %>

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
		     <li class="current_page_item"><a href="upload_paper.aspx">Home</a></li>
		     <li><a href="viewupload.aspx">View Upload</a></li>
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
				<asp:Label ID="lblwelcome1" runat="server" Text="" ForeColor="Maroon"></asp:Label><br/>
                 
                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" OnRowCommand="GridView1_RowCommand"
                   PageSize="10"  CellPadding="3" 
            BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
            CellSpacing="2">
    <Columns>

    <asp:TemplateField HeaderText="Author_ID">
                                    <ItemTemplate>
                                        <%# Eval("author_id")%>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                
    <asp:TemplateField HeaderText="UserName">
                                    <ItemTemplate>
                                        <%# Eval("username")%>
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
                                            CommandArgument='<%# Eval("author_id")%>' ID="lnkdelete" runat="server"><img src="images/delIcon.jpg" width="20px" alt="Delete" />
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
				</div>
                 </div>
                
			<div class="post">
			</div>
			<div class="post">
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
	</div>
</body>
</html>

			