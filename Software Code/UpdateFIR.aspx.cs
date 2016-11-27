using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class UpdateFIR : System.Web.UI.Page
{

  //  SqlConnection SqlCon = null;
  // SqlCommand cmd = null;

   // string con = "Data Source=.;Initial Catalog=CrimeInvestigationDatabase1;Integrated Security=true";
    protected void Page_Load(object sender, EventArgs e)
    {
        //SqlCon = new SqlConnection(SqlCon);
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {

 SqlConnection SqlCon = new SqlConnection("Data source = ANDROID-3YFCDS5\\SQLEXPRESS; initial catalog = CrimeInvestigationDatabase1; integrated security = SSPI; persist security info =False; Trusted_Connection=Yes; Connection Timeout =1000");

        
     SqlCommand  cmd = new SqlCommand("Update FIR1 set fir_status = '" + dlist_status.SelectedItem.Value + "' where fir_id ='" + Convert.ToInt32(dlistfid.SelectedItem.Value) + "'", SqlCon);
        SqlCon.Open();
        cmd.ExecuteNonQuery();
        lbl.Text = "FIR status updated successfully";
        SqlCon.Close();
    }
}