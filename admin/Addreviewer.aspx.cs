using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

using System.Configuration;
public partial class Addreviewer : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {

        }
    }
        protected void  btnAdd_Click(object sender, EventArgs e)
    {
    Add();

    }
        private void Add()
        {
            {
                con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["myconnection"].ToString();
                cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "insert into show_rewer values('" + ddCat.Text + "','" + txtreviewername.Text + "','" + txtqualification.Text + "','" + txtmobileno.Text + "','" + txtemailid.Text + "','" + txtaddress.Text + "')";


                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

            }
        }
            protected void btnCancel_Click(object sender, EventArgs e)
            {
                ddCat.Text = "";
                txtreviewername.Text = "";
                txtqualification.Text ="";
                txtmobileno.Text = " ";
                txtemailid.Text = "";
                txtaddress.Text = "";
            }
}