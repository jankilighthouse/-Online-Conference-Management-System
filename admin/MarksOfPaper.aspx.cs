using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

using System.Configuration;
using System.Web.SessionState;

public partial class MarksOfPaper : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["paper_code"] != null & Session["reviewid"] != null)
            {
          lb1p_id.Text = Session["paper_code"].ToString();
          lb1p_id.Focus();

          lb1_rid.Text = Session["reviewid"].ToString();
            lb1_rid.Focus();

            }

         }

    }
    protected void btnsum_Click(object sender, EventArgs e)
    {
        int cblone=0;
        int cbltwo = 0;
        int cblthree = 0;
        int cblfour = 0;
        int cblfive = 0;
        int cblsix = 0;
        int cblzero = 0;
       foreach(ListItem item in CheckBoxList1.Items)
           if (item.Selected)
           {
               cblone += Convert.ToInt16(item.Text);
           }

        foreach(ListItem item in CheckBoxList2.Items)
            if (item.Selected)
            {
                cbltwo += Convert.ToInt16(item.Text);
            }

        foreach (ListItem item in CheckBoxList3.Items)
            if (item.Selected)
            {
                cblthree += Convert.ToInt16(item.Text);
            }

        foreach (ListItem item in CheckBoxList4.Items)
            if (item.Selected)
            {
                cblfour += Convert.ToInt16(item.Text);
            }

        foreach (ListItem item in CheckBoxList5.Items)
            if (item.Selected)
            {
                cblfive += Convert.ToInt16(item.Text);
            }

        foreach (ListItem item in CheckBoxList6.Items)
            if (item.Selected)
            {
                cblsix += Convert.ToInt16(item.Text);
            }


        cblzero = cblone + cbltwo + cblthree + cblfour + cblfive + cblsix;
         int txtbx = cblzero;
         txttotal.Text =txtbx.ToString();
    }

    protected void btncancel_Click(object sender, EventArgs e)
    {

        CheckBoxList1.Text="";
        CheckBoxList2.Text = "";
        CheckBoxList3.Text = "";
        CheckBoxList4.Text = "";
        CheckBoxList5.Text = "";
        CheckBoxList6.Text = "";
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
    SqlConnection con = new SqlConnection(@"Server=ADMIN-PC;Database=myproject;Integrated Security=True;");


            SqlCommand cmd = new SqlCommand();

            cmd.Connection = con;



            cmd.CommandText = "insert into reviewer_result values('" + lb1_rid.Text + "','" + lb1p_id.Text + "','" + txttotal.Text + "')";
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();


        }
    }



