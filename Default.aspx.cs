using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string connectionString = ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString;
        string insertSql = "INSERT INTO userregistrationtbl (Username,Password,Address,Email,Qualification,MobileNo,Gender)" + " values (@Username,@Password,@Address,@Email,@Qualification,@MobileNo,@Gender)";
         SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = insertSql;

        SqlParameter Username = new SqlParameter("@Username", SqlDbType.VarChar, 50);
        Username.Value = txtuser.Text.ToString();
        cmd.Parameters.Add(Username);

        SqlParameter Password = new SqlParameter("@Password", SqlDbType.VarChar, 50);
        Password.Value = txtpwd.Text.ToString();
        cmd.Parameters.Add(Password);

         SqlParameter Address = new SqlParameter("@Address", SqlDbType.VarChar, 150);
        Address.Value =txtaddress.Text.ToString();
        cmd.Parameters.Add(Address);

        SqlParameter Email = new SqlParameter("@Email", SqlDbType.VarChar,100);
        Email.Value =txtemail.Text.ToString();
        cmd.Parameters.Add(Email);

         SqlParameter Qualification = new SqlParameter("@Qualification", SqlDbType.VarChar, 100);
        Qualification.Value =txtlqualif.Text.ToString();
        cmd.Parameters.Add(Qualification);

        SqlParameter MobileNo = new SqlParameter("@MobileNo", SqlDbType.Int,10);
        MobileNo.Value =txtmblno.Text.ToString();
        cmd.Parameters.Add(MobileNo);

        SqlParameter Gender = new SqlParameter("@Gender", SqlDbType.VarChar, 10);
        Gender.Value =rdoGender.Text.ToString();
        cmd.Parameters.Add(Gender);
     try
        {
            con.Open();
            cmd.ExecuteNonQuery();
           lblErrorMsg.Text = "User Registration successful";
        }
        catch (SqlException ex)
        {
            string errorMessage = "Error in registering user";
            errorMessage += ex.Message;
            throw new Exception(errorMessage);

        }
        finally
        {
            con.Close();
        }

    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
    }
}