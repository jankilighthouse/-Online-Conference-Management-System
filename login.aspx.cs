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

public partial class login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Server=ADMIN-PC;Database=myproject;Integrated Security=True;");
    SqlDataAdapter ad = new SqlDataAdapter();
    SqlCommand cmd = new SqlCommand();
    DataTable dataTable;
    SqlDataReader rd = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["name"] = null;

        txtusername1.Focus();
    }
    private void authMe()
    {
        try
        {
            string u, p;
            u = txtusername1.Text;
            p = txtPassword.Text;
            dataTable = new DataTable();
            cmd.Connection = con;
            con.Open();
            if (ddCat.SelectedItem.Value == "A")
            {
                cmd.CommandText = "SELECT  username, password FROM login_tbl where logintype='" + ddCat.SelectedItem.Value + "' and username='" + u + "'and password= '" + p + "'";
            }
            else
            {
                cmd.CommandText = "SELECT username, password FROM login_tbl where username='" + u + "' and password= '" + p + "'";
            }

            rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                if (ddCat.SelectedItem.Value == "A")
                {
                    Session["name"] =txtusername1.Text;

                    Response.Redirect("admin/view_all_paper.aspx");
                }
                else
                {
                    Session["name"] = txtusername1.Text;
                    Response.Redirect("user/upload_paper.aspx");
                }
            }
            if (!rd.HasRows)
            {
                txtusername1.Focus();
                lblmsg.Text = "Invalid User,try Again..!!";
            }
        }
        catch { }
        finally { con.Close(); }
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        authMe();

    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        ddCat.Text = "";
        txtusername1.Text = "";
        txtPassword.Text = "";

    }
}