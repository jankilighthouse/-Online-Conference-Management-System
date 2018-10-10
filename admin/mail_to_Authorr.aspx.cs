using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Net;
using System.Net.Mail;
public partial class admin_mail_to_reviewer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         if (!IsPostBack)
            {
BindContrydropdown();
}

}
    protected void BindContrydropdown()
    {

        SqlConnection con = new SqlConnection(@"Server=ADMIN-PC;Database=myproject;Integrated Security=True;");
        con.Open();
        SqlCommand cmd = new SqlCommand("select paper_code from reviewer_result where marks>=25", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "reviewer_result");
        ddselectedfile.DataSource = ds;
        //   ddtrack2.DataBind();
        ddselectedfile.DataTextField = "paper_code";
        ddselectedfile.DataValueField = "paper_code";
        ddselectedfile.DataBind();
        ddselectedfile.Items.Insert(0, new ListItem("--Select--", "0"));
        //ddtrack2.Items.Insert(0, new ListItem("--Select--", "0"));
        //ddtrack2.Items.Insert(0, new ListItem("--Select--", "0"));
        con.Close();

        }



protected void ddselectedfile_SelectedIndexChanged(object sender, EventArgs e)
{
    SqlConnection con = new SqlConnection(@"Server=ADMIN-PC;Database=myproject;Integrated Security=True;");
    string codeinfo = ddselectedfile.SelectedValue;
    Response.Write(codeinfo);
    SqlCommand cmd = new SqlCommand("select email from upload_12 where paper_code='" + codeinfo + "'", con);
    SqlDataAdapter da = new SqlDataAdapter(cmd);
    DataSet ds = new DataSet();
    da.Fill(ds);
    con.Close();
    ddlemailaddre.DataSource = ds;
    ddlemailaddre.DataTextField = "email";
    ddlemailaddre.DataTextField = "email";

    ddlemailaddre.DataBind();

}
protected void ddlemailaddre_SelectedIndexChanged(object sender, EventArgs e)
{

}
protected void SendEmail(object sender, EventArgs e)
{
    using (MailMessage mm = new MailMessage(txtEmail.Text, ddlemailaddre.Text))
    {
        mm.Body = txtBody1.Text;
        mm.IsBodyHtml = true;
        mm.IsBodyHtml = false;
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.EnableSsl = true;
        NetworkCredential NetworkCred = new NetworkCredential(txtEmail.Text, txtPassword.Text);
        smtp.UseDefaultCredentials = true;
        smtp.Credentials = NetworkCred;
        smtp.Port = 587;
        smtp.Send(mm);
        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Email sent.');", true);
    }
}
}
