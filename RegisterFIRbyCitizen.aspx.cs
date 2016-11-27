using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class RegisterFIRbyCitizen : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
    //    SqlCon = new SqlConnection(con);
    }
    protected void btnregister_Click(object sender, EventArgs e)
    {
        // SqlConnection SqlCon = null;
        // SqlCommand cmd = null;
        string s3 = "Registered";
        SqlConnection SqlCon = new SqlConnection("Data source = ANDROID-3YFCDS5\\SQLEXPRESS; initial catalog = CrimeInvestigationDatabase1; integrated security = SSPI; persist security info =False; Trusted_Connection=Yes");
        //SqlCommand cmd = new SqlCommand("insert into Citizen2(name,age,gender,address,phone,username,pass) values('" + txtName.Text + "','" + txtAge.Text + "','" + txtGender.Text + "','" + txtAddress.Text + "','" + txtPhone.Text + "','" + txtUserName.Text + "','" + txtPassword.Text + "')", SqlCon);

        //SqlCommand cmd = new SqlCommand(" insert into FIR1 values('" + Convert.ToInt32(txtid.Text) + "','" + dlist_loc.SelectedItem.Value + "','" + dlist_type.SelectedItem.Value + "','" +status+ "','" + txtdesp.Text + "')", SqlCon);
        SqlCommand cmd = new SqlCommand("insert into FIR1 values('" + Convert.ToInt32(txtid.Text) + "','" + dlist_loc.SelectedItem.Value + "','" + dlist_type.SelectedItem.Value + "','" + s3 + "','" + txtdesp.Text + "')", SqlCon);
         SqlCon.Open();
        

        cmd.ExecuteNonQuery();

        lbl.Text = "FIR registered successfully";


        SqlCon.Close();


        reset();

    }
    public void reset()
    {

        txtid.Text = "";
        txtdesp.Text = "";
        dlist_type.SelectedItem.Value = "";
        dlist_loc.SelectedItem.Value = "";

    }
}