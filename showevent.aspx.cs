using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class showevent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindDetailtView();
        }

    }
    private void bindDetailtView()
    {
        try
        {
            DataSet Ds = GetDataSet("Select * from addevent");
            DetailsViewExample.DataSource = Ds;
            DetailsViewExample.DataBind();
        }
        catch (Exception ex) { throw ex; }
    }
    private DataSet GetDataSet(string Query)
    {
        DataSet Ds = new DataSet();
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ToString());
              SqlDataAdapter Da = new SqlDataAdapter(Query, con);
            Da.Fill(Ds);

        }
        catch (Exception) { }
        return Ds;
    }
    private void ExecuteQuery(string Query)
    {
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myconnection"].ToString());


            con.Open();
            SqlCommand cmd = new SqlCommand(Query, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        catch (Exception) { }
    }
  protected void DetailsViewExample_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {
        DetailsViewExample.PageIndex = e.NewPageIndex;
        bindDetailtView();


    }
}
