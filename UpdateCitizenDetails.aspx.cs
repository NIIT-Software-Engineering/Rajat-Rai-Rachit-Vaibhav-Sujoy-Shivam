using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class UpdateCitizenDetails : System.Web.UI.Page
{
    //SqlConnection SqlCon = null;
   // SqlCommand cmd = null;

   // string con = "Data Source=.;Initial Catalog=CrimeInvestigationDatabase1;Integrated Security=true";
    protected void Page_Load(object sender, EventArgs e)
    {
        //txtUserName.Text = Session["un"].ToString();
        //SqlCon = new SqlConnection(con);
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlConnection SqlCon = new SqlConnection("Data source = ANDROID-3YFCDS5\\SQLEXPRESS; initial catalog = CrimeInvestigationDatabase1; integrated security = SSPI; persist security info =False; Trusted_Connection=Yes");

        txtUserName.Text = Session["un"].ToString();

        SqlCommand cmd = new SqlCommand("Update Citizen2 set age = '" + txtAge.Text + "' , address = '" + txtAddress.Text + "', phone = '" + txtPhone.Text + "' where name ='" + txtUserName.Text + "'", SqlCon);

        SqlCon.Open();

        cmd.ExecuteNonQuery();

        lbl.Text = "Updation Successful";

        SqlCon.Close();

        reset();
        
    }
    public void reset()
    {
        txtAddress.Text = "";
        txtAge.Text = "";
        txtPhone.Text = "";
        txtUserName.Text = "";
    }
}