using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Configuration;
using System.Text;
using System.IO;
using System.Web.SessionState;
using System.Web.Security;

public partial class user_upload_paper : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ToString());
    SqlCommand cmd = new SqlCommand();
    string ss = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null)
        {
            Response.Redirect("../login.aspx");
        }
        if (!Page.IsPostBack)
        {

            lblwelcome.Text = "Welcome, " + Session["name"].ToString();
            ss = Session["name"].ToString();
        }
        insertData();
      }
    public void insertData()
    {

        ss = Session["name"].ToString();

        cmd.Connection = con;
        string prefix = string.Empty;
        string query = string.Empty;

        //Get prefix text based on selection of department
        prefix = ddtrack.SelectedValue.Trim();


        cmd.CommandText = "insert into upload_12 select ('" + prefix + "' + cast((select isnull(MAX(REPLACE(paper_code,'" + prefix + "','')),0) + 1 from upload_12 where LEFT(paper_code,2)='" + prefix + "') as varchar(5))), '" + txtname.Text + "','" + txtemail.Text + "','" + ddtrack.Text + "','" + txttopic.Text + "','" + txtqualif.Text + "','" + FileUpload1.FileName + "'";


        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("~/Upld_papers/" + FileUpload1.FileName));

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
             txtname.Text = "";
             txtemail.Text = "";
             txtqualif.Text = "";
             txttopic.Text = "";

            Response.Redirect("viewupload.aspx");
            lblmsg.Text = "You can  not Upload sucessfully.";
        }
    }
    protected void btnUpload_Click(object sender, EventArgs e)
    {
        insertData();

    }

    protected void ddtrack_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

}

