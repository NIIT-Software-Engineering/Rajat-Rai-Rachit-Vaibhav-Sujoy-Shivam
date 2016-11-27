using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class DeleteFIRbyStaff : System.Web.UI.Page
{
   // SqlConnection SqlCon = null;
   // SqlCommand cmd = null;

   // string con = "Data Source=.;Initial Catalog=CrimeInvestigationDatabase1;Integrated Security=true";
    protected void Page_Load(object sender, EventArgs e)
    {
        //SqlCon = new SqlConnection(con);
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        SqlConnection SqlCon = new SqlConnection("Data source = ANDROID-3YFCDS5\\SQLEXPRESS; initial catalog = CrimeInvestigationDatabase1; integrated security = SSPI; persist security info =False; Trusted_Connection=Yes; Connection Timeout =1000");

        SqlCon.Open();
        SqlCommand cmd = new SqlCommand("delete from FIR1 where fir_id ='" + dlistfirid.SelectedItem.Value + "'", SqlCon);
        cmd.ExecuteNonQuery();
        SqlCon.Close();

        lbl.Text = "Deletion Successfull";
    }
}