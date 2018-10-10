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

public partial class admin_AddEvent : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ToString());
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    DataTable dt = new DataTable();

    string ss = null;


    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        string str;
         str = string.Format("insert into addevent values('{0}','{1}','{2}','{3}')", txtconfname.Text, txttime.Text, txtstartdate.Text, txtenddate.Text);
        cmd.CommandText = str;
        con.Open();
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        con.Close();




    }
}