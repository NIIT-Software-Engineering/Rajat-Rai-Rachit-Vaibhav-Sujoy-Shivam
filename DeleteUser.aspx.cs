using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class DeleteUser : System.Web.UI.Page
{
   // SqlConnection SqlCon = null;
   // SqlCommand cmd = null;

   // string con = "Data Source=.;Initial Catalog=CrimeInvestigationDatabase1;Integrated Security=true";
    protected void Page_Load(object sender, EventArgs e)
    {
       // SqlCon = new SqlConnection(con);
    }
    protected void btndelete_Click(object sender, EventArgs e)
    {


        int n = Convert.ToInt32(RadioButtonList1.SelectedValue);

        switch (n)
        {
            case 1:
                deleteCitizen();
                break;
            case 2:
                deleteStaff();
                break;
            case 3:
                deleteCriminal();
                break;
            case 4:
                deleteVictim();
                break;
            case 5:
                deleteWitness();
                break;
            default:
                break;
        }
    }
    public void deleteCitizen()
    {
        SqlConnection SqlCon = new SqlConnection("Data source = ANDROID-3YFCDS5\\SQLEXPRESS; initial catalog = CrimeInvestigationDatabase1; integrated security = SSPI; persist security info =False; Trusted_Connection=Yes; Connection Timeout =1000");

        // SqlCon = new SqlConnection(con);
        SqlCon.Open();
        SqlCommand cmd = new SqlCommand("delete from Citizen2 where name ='" + txtUserName.Text + "'", SqlCon);
        cmd.ExecuteNonQuery();
        SqlCon.Close();
        txtUserName.Text = "";
        lbl.Text = "Deletion Successfull";
    }
    public void deleteStaff()
    {
        SqlConnection SqlCon = new SqlConnection("Data source = ANDROID-3YFCDS5\\SQLEXPRESS; initial catalog = CrimeInvestigationDatabase1; integrated security = SSPI; persist security info =False; Trusted_Connection=Yes; Connection Timeout =1000");

        // SqlCon = new SqlConnection(con);
        SqlCon.Open();
        SqlCommand cmd = new SqlCommand("delete from Staff2 where name ='" + txtUserName.Text + "'", SqlCon);
        cmd.ExecuteNonQuery();
        SqlCon.Close();
        txtUserName.Text = "";
        lbl.Text = "Deletion Successfull";
    }
    public void deleteCriminal()
    {
        SqlConnection SqlCon = new SqlConnection("Data source = ANDROID-3YFCDS5\\SQLEXPRESS; initial catalog = CrimeInvestigationDatabase1; integrated security = SSPI; persist security info =False; Trusted_Connection=Yes; Connection Timeout =1000");


        // SqlCon = new SqlConnection(con);
        SqlCon.Open();
       SqlCommand cmd = new SqlCommand("delete from Criminal1 where name ='" + txtUserName.Text + "'", SqlCon);
        cmd.ExecuteNonQuery();
        SqlCon.Close();
        txtUserName.Text = "";
        lbl.Text = "Deletion Successfull";
    }
    public void deleteVictim()
    {
        SqlConnection SqlCon = new SqlConnection("Data source = ANDROID-3YFCDS5\\SQLEXPRESS; initial catalog = CrimeInvestigationDatabase1; integrated security = SSPI; persist security info =False; Trusted_Connection=Yes; Connection Timeout =1000");

        // SqlCon = new SqlConnection(con);
        SqlCon.Open();
        SqlCommand cmd = new SqlCommand("delete from Victim1 where name ='" + txtUserName.Text + "'", SqlCon);
        cmd.ExecuteNonQuery();
        SqlCon.Close();
        txtUserName.Text = "";
        lbl.Text = "Deletion Successfull";
    }
    public void deleteWitness()
    {
        SqlConnection SqlCon = new SqlConnection("Data source = ANDROID-3YFCDS5\\SQLEXPRESS; initial catalog = CrimeInvestigationDatabase1; integrated security = SSPI; persist security info =False; Trusted_Connection=Yes; Connection Timeout =1000");

//        SqlCon = new SqlConnection(con);
        SqlCon.Open();
       SqlCommand  cmd = new SqlCommand("delete from Witnes where name ='" + txtUserName.Text + "'", SqlCon);
        cmd.ExecuteNonQuery();
        SqlCon.Close();
        txtUserName.Text = "";
        lbl.Text = "Deletion Successfull";
    }
}