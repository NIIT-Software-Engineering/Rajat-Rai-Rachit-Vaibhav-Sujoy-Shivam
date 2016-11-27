using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class UpdateStaffDetailsbyStaff : System.Web.UI.Page
{
    //SqlConnection SqlCon = null;
    //SqlCommand cmd = null;

    //string con = "Data Source=.;Initial Catalog=CrimeInvestigationDatabase1;Integrated Security=true";
    protected void Page_Load(object sender, EventArgs e)
    {
        //SqlCon = new SqlConnection(con);
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        

        SqlConnection SqlCon = new SqlConnection("Data source = ANDROID-3YFCDS5\\SQLEXPRESS; initial catalog = CrimeInvestigationDatabase1; integrated security = SSPI; persist security info =False; Trusted_Connection=Yes");

        string name = Session["un"].ToString();

        SqlCommand cmd = new SqlCommand("Update Staff2 set age = '" + txtAge.Text + "' , Address = '" + txtAddress.Text + "', phone = '" + txtPhone.Text + "' where username ='" + name + "'", SqlCon);

        SqlCon.Open();


        cmd.ExecuteNonQuery();

        SqlCon.Close();

        reset();
        lbl.Text = "Updation Successful";
    }
    public void reset()
    {
        txtAddress.Text = "";
        txtAge.Text = "";
        txtPhone.Text = "";

    }
}