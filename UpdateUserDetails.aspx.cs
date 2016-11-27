using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class UpdateUserDetails : System.Web.UI.Page
{
   // SqlConnection SqlCon = null;
   // SqlCommand cmd = null;

   // string con = "Data Source=.;Initial Catalog=CrimeInvestigationDatabase1;Integrated Security=true";
    protected void Page_Load(object sender, EventArgs e)
    {
       // SqlCon = new SqlConnection(con);
    }


    protected void Button1_Click1(object sender, EventArgs e)
    {
        int n = Convert.ToInt32(RadioButtonList1.SelectedValue);

        switch (n)
        {
            case 1:
                updateCitizen();
                break;
            case 2:
                updateStaff();
                break;

        }
    }
    public void updateCitizen()
    {

        SqlConnection SqlCon = new SqlConnection("Data source = ANDROID-3YFCDS5\\SQLEXPRESS; initial catalog = CrimeInvestigationDatabase1; integrated security = SSPI; persist security info =False; Trusted_Connection=Yes");

        SqlCon.Open();

        SqlCommand cmd = new SqlCommand("Update Citizen2 set age = '" + txtAge.Text + "' , addres = '" + txtAddress.Text + "', phone = '" + txtPhone.Text + "' where name ='" + txtUserName.Text + "'", SqlCon);
        cmd.ExecuteNonQuery();
        SqlCon.Close();

    }
    public void updateStaff()
    {
        SqlConnection SqlCon = new SqlConnection("Data source = ANDROID-3YFCDS5\\SQLEXPRESS; initial catalog = CrimeInvestigationDatabase1; integrated security = SSPI; persist security info =False; Trusted_Connection=Yes");

        SqlCon.Open();
        SqlCommand cmd = new SqlCommand("Update Staff2 set age = '" + txtAge.Text + "' , address = '" + txtAddress.Text + "', phone = '" + txtPhone.Text + "' where name ='" + txtUserName.Text + "'", SqlCon);
        cmd.ExecuteNonQuery();
        SqlCon.Close();
    }
}