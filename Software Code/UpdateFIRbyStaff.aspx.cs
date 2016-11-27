using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class UpdateFIRbyStaff : System.Web.UI.Page
{
   // SqlConnection SqlCon = null;
   // SqlCommand cmd = null;

   // string con = "Data Source=.;Initial Catalog=CrimeInvestigationDatabase1;Integrated Security=true";
    protected void Page_Load(object sender, EventArgs e)
    {
       // SqlCon = new SqlConnection(con);
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        SqlConnection SqlCon = new SqlConnection("Data source = ANDROID-3YFCDS5\\SQLEXPRESS; initial catalog = CrimeInvestigationDatabase1; integrated security = SSPI; persist security info =False; Trusted_Connection=Yes; Connection Timeout =1000");

        SqlCon.Open();
        SqlCommand cmd = new SqlCommand("Update FIR1 set fir_status = '" + dlist_status.SelectedItem.Value + "' where fir_id ='" + Convert.ToInt32(dlistfid.SelectedItem.Value) + "'", SqlCon);
        cmd.ExecuteNonQuery();
        lbl.Text = "FIR status updated successfully";
        SqlCon.Close();

    }
}