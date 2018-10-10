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
using System.Web.SessionState;


public partial class user_changed_password : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Server=ADMIN-PC;Database=myproject;Integrated Security=True;");
    SqlDataAdapter ad = new SqlDataAdapter();
    SqlCommand cmd = new SqlCommand();
    DataTable dataTable;
    SqlDataReader rd = null;
    string s ="";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null)
        {
            Response.Redirect("../login.aspx");
        }
        s = Session["name"].ToString();
        txtUid.Text = Session["name"].ToString();
        txtoPassword.Focus();
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        try
        {
            string p, p1, p2;
            p = txtoPassword.Text;
            p1 = txtPassword.Text;
            p2 = txtcpassword.Text;

            dataTable = new DataTable();
            cmd.Connection = con;
            con.Open();
            cmd.CommandText = "SELECT password FROM login_tbl where username='" + s + "'and password= '" + p + "'";
            rd = cmd.ExecuteReader();

            while (rd.Read())
            {
                if (p1==p2)
                {
                    cmd.CommandText = "Update login_tbl set password = '" + p1 + "' where username='" + s + "' ";
                    cmd.ExecuteNonQuery();
                    rd.Close();
                     lblmsg.Text = "Password Updated !!";
                    Response.Redirect("../login.aspx");
                }
                else
                {
                    rd.Close();
                    lblmsg.Text = "Password did not match !!";
                }

            } 
            if (!rd.HasRows)
            {
                lblmsg.Text = "Incorrect Password !!";
                txtUid.Focus();
            }
        }

        catch { }
        finally { con.Close(); }

    }

    }
