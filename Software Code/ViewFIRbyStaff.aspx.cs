using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class ViewFIRbyStaff : System.Web.UI.Page
{
   // SqlConnection SqlCon = null;
    //SqlCommand cmd = null;

   // string con = "Data Source=.;Initial Catalog=CrimeInvestigationDatabase1;Integrated Security=true";

    protected void Page_Load(object sender, EventArgs e)
    {
        //SqlCon = new SqlConnection(con);
    }
    protected void btnViewSelected_Click(object sender, EventArgs e)
    {

        SqlConnection SqlCon = new SqlConnection("Data source = ANDROID-3YFCDS5\\SQLEXPRESS; initial catalog = CrimeInvestigationDatabase1; integrated security = SSPI; persist security info =False; Trusted_Connection=Yes");


        SqlCommand cmd = new SqlCommand("select * from FIR1 where fir_id ='" + Convert.ToInt32(DropDownList1.SelectedItem.Value) + "'", SqlCon);

        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adp.Fill(ds, "FIR1");

        GridView1.DataSource = ds.Tables["FIR1"];
        GridView1.DataBind();
        Panel1.Controls.Add(GridView1);

    }
    protected void btnViewAll_Click(object sender, EventArgs e)
    {

        SqlConnection SqlCon = new SqlConnection("Data source = ANDROID-3YFCDS5\\SQLEXPRESS; initial catalog = CrimeInvestigationDatabase1; integrated security = SSPI; persist security info =False; Trusted_Connection=Yes");

        SqlCommand cmd = new SqlCommand("select * from FIR1", SqlCon);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adp.Fill(ds, "FIR1");

        GridView1.DataSource = ds.Tables["FIR1"];
        GridView1.DataBind();
        Panel1.Controls.Add(GridView1);
    }
}