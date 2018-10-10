<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table align="center">
<tr>
<td></td>
<td align="right" >
</td>
<td align="center">
<b>Registration Form</b>
</td>
</tr>
<tr>
<td></td>
<td align="right" >
<asp:Label ID="lbluser" runat="server" Text="Username"></asp:Label>
</td>
<td>
<asp:TextBox ID="txtuser" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="txtuser" ErrorMessage="UserName can't be left blank" 
        SetFocusOnError="True"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td></td>
<td align="right" >
<asp:Label ID="lblpwd" runat="server" Text="Password"></asp:Label>
</td>
<td>
<asp:TextBox ID="txtpwd" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="txtpwd" ErrorMessage="Password can't be left blank" 
        SetFocusOnError="True"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td></td>
<td align="right" >
<asp:Label ID="lblcnfmpwd" runat="server" Text="Address"></asp:Label>
</td>
<td>
<asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="txtaddress" ErrorMessage="address can't be left blank" 
        SetFocusOnError="True"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td></td>
<td align="right">
<asp:Label ID="lblfname" runat="server" Text="Email"></asp:Label>
</td>
<td>
<asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="txtemail" ErrorMessage="Email can't be left blank" 
        SetFocusOnError="True" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
</td>
</tr>
<tr>
<td></td>
<td align="right">
<asp:Label ID="lbllname" runat="server" Text="Qualification"></asp:Label>
</td>
<td>
<asp:TextBox ID="txtlqualif" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
        ControlToValidate="txtlqualif" 
        ErrorMessage="Quailification can't be left blank" SetFocusOnError="True"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td align="right">
<asp:Label ID="lblemail" runat="server" Text="Mobileno"></asp:Label>
</td>
<td>
<asp:TextBox ID="txtmblno" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
        ControlToValidate="txtmblno" ErrorMessage="Mobileno can't be left blank" 
        SetFocusOnError="True"></asp:RequiredFieldValidator>
</td>
</tr>
 <tr>
 <td></td>
 <td align="right">
<asp:Label ID="Label1" runat="server" Text="Gender"></asp:Label>
</td>
<td><asp:RadioButtonList ID="rdoGender" runat="server">

<asp:ListItem>Male</asp:ListItem>

<asp:ListItem>Female</asp:ListItem>

</asp:RadioButtonList>

    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
        ControlToValidate="rdoGender" ErrorMessage="Gender can't be left blank" 
        SetFocusOnError="True"></asp:RequiredFieldValidator>

</td>


</tr>

<tr>
<td>&nbsp;</td>
<td></td>

<td align="left" >
<asp:Button ID="btnsubmit" runat="server" Text="Save"
onclick="btnsubmit_Click" />
<asp:Button ID="btnReset" runat="server" Text="Reset" onclick="btnReset_Click" />
</td>
</tr>
<tr>
<td></td>
<td></td>
<td>
<span style= "color:Red; font-weight :bold"> <asp:Label ID="lblErrorMsg" runat="server"></asp:Label></span>
</td>
</tr>
</table>
    </div>
    </form>
</body>
</html>
