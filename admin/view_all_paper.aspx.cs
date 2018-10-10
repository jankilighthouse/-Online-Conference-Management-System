using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

using System.Data.SqlClient;
using System.Configuration;

public partial class admin_view_paper : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            Binddata();
        }
    }
    private void Binddata()
    {
        try
        {
            string sql = "select * from upload_12";
            DataTable dt = Gettable(sql);
            if (dt != null && dt.Rows.Count > 0)
                GridView1.DataSource = dt;
            GridView1.DataBind();

        }
        catch { }
    }
    private DataTable Gettable(string sql)
    {
        DataTable dt = new DataTable();
        SqlConnection con = new SqlConnection();

        try
        {
            con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["myconnection"].ToString();
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sql;
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            SqlDataAdapter dba = new SqlDataAdapter(cmd);
            dba.Fill(dt);

        }
        catch { }
        finally { con.Close(); }
        return dt;
    }
    private bool ExcuteIt(string sql)
    {
        bool retvalue = false;
        SqlConnection con = new SqlConnection();

        try
        {
            con.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["myconnection"].ToString();
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sql;
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            int r = cmd.ExecuteNonQuery();
            if (r > 0)
                retvalue = true;
            else
                retvalue = false;
        }
        catch { }
        finally { con.Close(); }
        return retvalue;
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Del")
        {

            string author_id = e.CommandArgument.ToString();


            string sql = "delete from upload_12 where author_id=" + author_id;
            if (ExcuteIt(sql))
                Binddata();
            else
                lblmsg.Text = "Some Error";

        }

        }
    }



