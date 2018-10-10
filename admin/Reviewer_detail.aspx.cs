using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Reviewer_detail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string sqlconnection = "";
        sqlconnection = System.Configuration.ConfigurationManager.ConnectionStrings["myconnection"].ToString();
        SqlConnection con = new SqlConnection(sqlconnection);
        con.Open();

        SqlCommand cmd = new SqlCommand("Select * from show_rewer", con);
        SqlDataReader rdr = cmd.ExecuteReader();
        GridView1.DataSource = rdr;


        GridView1.DataBind();
        rdr.Close();


        cmd.ExecuteNonQuery();
        con.Close();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}