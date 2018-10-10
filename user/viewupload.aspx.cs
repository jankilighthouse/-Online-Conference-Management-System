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


public partial class user_viewupload : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ToString());
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    DataTable dt = new DataTable();
    string ss = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            lblwelcome1.Text = "Welcome, " + Session["name"].ToString();
            ss = Session["name"].ToString();


            BindGrid();
        }
    }
    private void BindGrid()
    {
        ss = Session["name"].ToString();
        cmd.CommandText = "SELECT author_id,username,filepath FROM upload_12 WHERE (username LIKE '" + Session["name"].ToString() + "')";

        cmd.Connection = con;
        con.Open();
        GridView1.DataSource = cmd.ExecuteReader();
        GridView1.DataBind();
        con.Close();

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Del")
        {
            string author_id = e.CommandArgument.ToString();
            cmd.CommandText = "delete from upload_12 where author_id=" + author_id;
            con.Open();
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();
            BindGrid();

        }
    }

}





