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
public partial class testemail : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("select track from upload_12 group by track", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "upload_12");
             ddtrack2.DataSource = ds;
            //   ddtrack2.DataBind();
            ddtrack2.DataTextField = "track";
            ddtrack2.DataValueField = "track";
            ddtrack2.DataBind();
             ddtrack2.Items.Insert(0, new ListItem("--Select--", "0"));
             //ddtrack2.Items.Insert(0, new ListItem("--Select--", "0"));
             //ddtrack2.Items.Insert(0, new ListItem("--Select--", "0"));
            con.Close();
        }

    protected void SendEmail(object sender, EventArgs e)
    {

        using (MailMessage mm = new MailMessage(txtEmail.Text,ddlreviewer_email.Text))
        {
               mm.Body = txtBody1.Text;

            Attachment attach = new Attachment(Server.MapPath("~/Upld_papers/" + ddlfilepath.Text));
            mm.Attachments.Add(attach);


            mm.Body = "http://localhost:49669/8th_sem_project1/admin/MarksOfPaper.aspx?paper_code=" + lblpapercode.Text + "&reviewid="+lblreid.Text;

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
    protected void ddtrack2_SelectedIndexChanged(object sender, EventArgs e)
    {

          SqlConnection con = new SqlConnection(@"Server=ADMIN-PC;Database=myproject;Integrated Security=True;");
          string trackinfo = ddtrack2.SelectedValue;
          Response.Write(trackinfo);
          SqlCommand cmd = new SqlCommand("select filepath from upload_12 where track='" + trackinfo + "'", con);
          SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        con.Close();
        ddlfilepath.DataSource = ds;
        ddlfilepath.DataTextField = "filepath";
        ddlfilepath.DataTextField = "filepath";

        ddlfilepath.DataBind();
       /* ddlfilepath.Items.Insert(0, new ListItem("--Select--", "0"));
        if (ddlreviewer_email.SelectedValue == "0")
        {
            ddlreviewer_email.Items.Clear();
            ddlreviewer_email.Items.Insert(0, new ListItem("--Select--", "0"));
        }
        * */



        SqlCommand cmd1 = new SqlCommand("select email from show_rewer where track='" + trackinfo + "'", con);
        SqlDataAdapter daa = new SqlDataAdapter(cmd1);

        daa.Fill(ds);

        ddlreviewer_email.DataSource = ds;
        ddlreviewer_email.DataTextField = "email";
        ddlreviewer_email.DataTextField = "email";

        ddlreviewer_email.DataBind();
        con.Close();

    }


    protected void ddlfilepath_SelectedIndexChanged(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(@"Server=ADMIN-PC;Database=myproject;Integrated Security=True;");

        String strQuery = "select paper_code from upload_12 where" +
                          " filepath = @filepath";
        SqlCommand cmd = new SqlCommand();
        cmd.Parameters.AddWithValue("@filepath", ddlfilepath.SelectedItem.Value);
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = strQuery;
        cmd.Connection = con;
        try
        {
            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();
            while (sdr.Read())
            {
                lblpapercode.Text = sdr[0].ToString();
                Session["paper_code"] = lblpapercode.Text;
                lblpapercode.Focus();

            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            con.Close();
            con.Dispose();
        }
    }

    protected void ddlreviewer_email_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Server=ADMIN-PC;Database=myproject;Integrated Security=True;");

        String strQuery = "select Reviewer_id from show_rewer where" +
                          " email = @email";
        SqlCommand cmd = new SqlCommand();
        cmd.Parameters.AddWithValue("@email", ddlreviewer_email.SelectedItem.Value);
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = strQuery;
        cmd.Connection = con;
        try
        {
            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();
            while (sdr.Read())
            {
                lblreid.Text = sdr[0].ToString();
                Session["reviewid"] = lblreid.Text;
                lblreid.Focus();
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            con.Close();
            con.Dispose();
        }
    }
}

