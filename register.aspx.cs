using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Server=ADMIN-PC;Database=myproject;Integrated Security=True;");
        con.Open();
        SqlCommand cmd = new SqlCommand("select*from registration_tbl where Username='" + txtusername.Text + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            lblmsg.Text = "User Name is Already Exist";
            this.lblmsg.ForeColor = Color.Red;
        }
        else
        {

            SqlConnection conn = new SqlConnection(@"Server=ADMIN-PC;Database=myproject;Integrated Security=True;");
            conn.Open();
            lblmsg.Text = "UserName is Available";
            this.lblmsg.ForeColor = Color.Red;
            string str = "insert into registration_tbl values('" + txtusername.Text + "','" + txtpassword.Text + "','" + txtmblno.Text + "','" + txtemail.Text + "')";
            string str1 = "insert into login_tbl values('" + txtusername.Text + "','" + txtpassword.Text + "','U')";

            SqlCommand cmd1 = new SqlCommand(str, conn);
            SqlCommand cmd2 = new SqlCommand(str1, conn);
            cmd1.ExecuteNonQuery();
            cmd2.ExecuteNonQuery();


            Session["name"] = txtusername.Text;

            Response.Redirect("login.aspx");
            conn.Close();

        }


    }
}