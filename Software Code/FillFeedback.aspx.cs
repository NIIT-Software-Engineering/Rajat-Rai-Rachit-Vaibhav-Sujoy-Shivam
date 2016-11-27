using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class FillFeedback : System.Web.UI.Page
{
   // SqlConnection SqlCon = null;
    //SqlCommand cmd = null;
   // string con = "Data Source=.;Initial Catalog=CrimeInvestigationDatabase1;Integrated Security=true";
    protected void Page_Load(object sender, EventArgs e)
    {
      //  SqlCon = new SqlConnection(con);
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlConnection SqlCon = new SqlConnection("Data source = ANDROID-3YFCDS5\\SQLEXPRESS; initial catalog = CrimeInvestigationDatabase1; integrated security = SSPI; persist security info =False; Trusted_Connection=Yes; Connection Timeout =1000");

        SqlCommand cmd = new SqlCommand("insert into Feedback1 values('" + txtFeed.Text + "')", SqlCon);
        SqlCon.Open();
        int i = cmd.ExecuteNonQuery();

        if (i > 0)
        {
            s.Text = "Thanks for your feedback";
        }
        SqlCon.Close();
        txtFeed.Text = "";

    }
}