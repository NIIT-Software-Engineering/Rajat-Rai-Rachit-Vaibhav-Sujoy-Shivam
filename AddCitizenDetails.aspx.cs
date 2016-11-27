using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AddCitizenDetails : System.Web.UI.Page
{
   // SqlConnection SqlCon = null;
    //SqlCommand cmd = null;
   // string con = "Data Source=.;Initial Catalog=CrimeInvestigationDatabase1;Integrated Security=true";
    protected void Page_Load(object sender, EventArgs e)
    {
       // SqlCon = new SqlConnection(con);
    }
    protected void SignUpBtn_Click(object sender, EventArgs e)
    {
        SqlConnection SqlCon = new SqlConnection("Data source = ANDROID-3YFCDS5\\SQLEXPRESS; initial catalog = CrimeInvestigationDatabase1; integrated security = SSPI; persist security info =False; Trusted_Connection=Yes");

        SqlCommand cmd = new SqlCommand("insert into Citizen2 values('" + txtName.Text + "','" + txtAge.Text + "','" + txtGender.Text + "','" + txtAddress.Text + "','" + txtPhone.Text + "','" + txtUserName.Text + "','" + txtPassword.Text + "')", SqlCon);
        SqlCon.Open();
        cmd.ExecuteNonQuery();

    
         s.Text = "Records Saved";
       
        SqlCon.Close();

        reset();
    }
    public void reset()
    {
        txtName.Text = "";
        txtAge.Text = "";
        txtPhone.Text = "";
        txtGender.Text = "";
        txtAddress.Text = "";
        txtPassword.Text = "";
        txtUserName.Text = "";
        txtPassword.Text = "";
    }
}