using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class _Default : System.Web.UI.Page
{
    SqlConnection SqlCon = null;
    SqlCommand cmd = null;

    string con = "Data Source=.;Initial Catalog=CrimeInvestigationDatabase1;Integrated Security=true";

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCon = new SqlConnection(con);
    }
    protected void btnViewSelected_Click(object sender, EventArgs e)
    {
        cmd = new SqlCommand("select * from FIR1 where fir_id ='" + Convert.ToInt32(DropDownList1.SelectedItem.Value) + "'", SqlCon);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adp.Fill(ds, "FIR1");

        GridView1.DataSource = ds.Tables["FIR1"];
        GridView1.DataBind();
        Panel1.Controls.Add(GridView1);
    }
    protected void btnViewAll_Click(object sender, EventArgs e)
    {
        SqlConnection SqlCon = new SqlConnection("Data Source = ANDROID-3YFCDS5\\SQLEXPRESS; Initial Catalog = CrimeInvestigationDatabase1; Integrated Security = SSPI");

        SqlCommand  cmd = new SqlCommand("select * from FIR1", SqlCon);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adp.Fill(ds, "FIR1");

        GridView1.DataSource = ds.Tables["FIR1"];
        GridView1.DataBind();
        Panel1.Controls.Add(GridView1);
    }
}