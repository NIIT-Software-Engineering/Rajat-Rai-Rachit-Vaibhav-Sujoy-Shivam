using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ChangeStaffPassword : System.Web.UI.Page
{
    //SqlConnection SqlCon = null;
    //SqlCommand cmd = null;

    //string con = "Data Source=.;Initial Catalog=CrimeInvestigationDatabase1;Integrated Security=true";
    protected void Page_Load(object sender, EventArgs e)
    {
       // SqlCon = new SqlConnection(con);
    }
    protected void changePassword_Click(object sender, EventArgs e)
    {
        SqlConnection SqlCon = new SqlConnection("Data source = ANDROID-3YFCDS5\\SQLEXPRESS; initial catalog = CrimeInvestigationDatabase1; integrated security = SSPI; persist security info =False; Trusted_Connection=Yes; Connection Timeout =1000");

        SqlCon.Open();
        string name = Session["un"].ToString();
        if (txtpass.Text == txtpass1.Text)
        {
           SqlCommand cmd = new SqlCommand("Update Staff2 set pass = '" + txtpass.Text + "' where username ='" + name + "'", SqlCon);

            cmd.ExecuteNonQuery();
            lbl.Text = "Password changed successfully";

            SqlCon.Close();
        }
        else
        {
            lbl.Text = "Passwords does  not match";
        }
        txtpass1.Text = "";
        txtpass.Text = "";
    }
}