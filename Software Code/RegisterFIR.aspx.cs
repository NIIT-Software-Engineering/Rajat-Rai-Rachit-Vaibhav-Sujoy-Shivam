using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class RegisterFIR : System.Web.UI.Page
{

  //  SqlConnection SqlCon = null;
    //SqlCommand cmd = null;
    //string con = "Data Source=.;Initial Catalog=CrimeInvestigationDatabase1;Integrated Security=true";
    protected void Page_Load(object sender, EventArgs e)
    {

        //SqlCon = new SqlConnection(con);
    }

    protected void btnregister_Click(object sender, EventArgs e)
    {
        SqlConnection SqlCon = new SqlConnection("Data Source = ANDROID-3YFCDS5\\SQLEXPRESS; Initial Catalog = CrimeInvestigationDatabase1; Integrated Security = SSPI");

        SqlCommand cmd = new SqlCommand("insert into FIR1 values('" + dlist_cid.SelectedItem.Value + "','" + dlist_loc.SelectedItem.Value + "','" + dlist_type.SelectedItem.Value + "','" + dlist_status.SelectedItem.Value + "','" + txtdesp.Text + "')", SqlCon);
        SqlCon.Open();

        cmd.ExecuteNonQuery();

        lbl.Text = "FIR registered successfully";


        SqlCon.Close();


        reset();
    }
    public void reset()
    {

        txtdesp.Text = "";



    }
}