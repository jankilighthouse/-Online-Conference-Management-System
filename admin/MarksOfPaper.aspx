<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MarksOfPaper.aspx.cs" Inherits="MarksOfPaper" %>

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
         .style1
         {
             color: #FF0000;
         }
         .style2
         {
             color: #FF0000;
             font-size: larger;
         }
     </style>
</head>
<body>
<div id="header">
	<div id="logo">

	</div>
	<div id="menu">
		<ul id="main">
		     <li class="current_page_item"><a href="main.aspx">Reviewing</a></li>

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
					<li><a href="MarksOfPaper.aspx">Reviewing</a></li>
                 </ul>
				</li>

			</ul>
		</div>
        <div id="content">
			<div class="post">
			<p style="margin-left:40px;"><a href="MarksOfPaper.aspx"></a> Home&gt;&gt;Reviewing</p>
			<img src="images/Review.jpg" alt="Review" height="150px" width="150px" style="margin-left:30px;"/>

				<div class="entry">
			<form id="form1" runat="server">

				<table style="border: medium solid Silver; margin-left:180px; margin-top:-150px; width: 459px; height: 250px;">
				<caption></caption>
                <tr>
                <td>
                    <asp:Label ID="lb1_rid" runat="server" Text=""></asp:Label>
                    &nbsp;</td>

                <td>
                 <asp:Label ID="lb1p_id" runat="server" Text=""></asp:Label>

                    &nbsp;</td>
                </tr>
			 <tr>
             <td class="style1">
                 Composition Of The Paper</td>

            <td>


                <asp:CheckBoxList ID="CheckBoxList1" runat="server"
                    RepeatDirection="Horizontal">
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>0</asp:ListItem>
                </asp:CheckBoxList>

            </td>
            </tr>
            <tr>
            <td class="style1">
                Quality Of the Technology</td>

            <td>
                <asp:CheckBoxList ID="CheckBoxList2" runat="server"
                    RepeatDirection="Horizontal">
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>0</asp:ListItem>
                </asp:CheckBoxList>
            </td>
            </tr>
            <tr>
            <td class="style1">
                Clarity Of Paper</td>

            <td>
                <asp:CheckBoxList ID="CheckBoxList3" runat="server"
                    RepeatDirection="Horizontal">
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>0</asp:ListItem>
                </asp:CheckBoxList>

            </td>
            </tr>


            <tr>
            <td class="style1">
                Originality</td>

            <td>
                <asp:CheckBoxList ID="CheckBoxList4" runat="server"
                    RepeatDirection="Horizontal">
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>0</asp:ListItem>
                </asp:CheckBoxList>
            </td>
            </tr>
            <tr>
            <td class="style1">
                Significance</td>
            <td>
                <asp:CheckBoxList ID="CheckBoxList5" runat="server"
                    RepeatDirection="Horizontal">
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>0</asp:ListItem>
                </asp:CheckBoxList>

            </td>
            </tr>
            <tr>
            <td class="style1" >
                Demonstration
            </td>
            <td>
                <asp:CheckBoxList ID="CheckBoxList6" runat="server"
                    RepeatDirection="Horizontal">
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>0</asp:ListItem>
                </asp:CheckBoxList>
            </td></tr>
            <tr><td align="center" colspan="2">
            <asp:Button CssClass="myButton" ID="btnsum" Text="Sum" runat="server" onclick="btnsum_Click"
                     />
            </td></tr>
            <tr><td class="style2">
                <strong>Total Marks
            </strong>
            </td>
            <td>
            <asp:TextBox ID="txttotal" runat="server"></asp:TextBox>
            </td></tr>

            <tr>
            <td align="center" colspan="2">
            <asp:Button CssClass="myButton" ID="btnsave" Text="Save" runat="server" onclick="btnsave_Click"
                     />
            &nbsp;
            <asp:Button CssClass="myButton" ID="btncancel" Text="Cancel" runat="server" onclick="btncancel_Click"
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
