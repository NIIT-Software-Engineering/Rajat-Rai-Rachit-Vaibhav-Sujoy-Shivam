using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ViewDetails : System.Web.UI.Page
{
    
   // SqlCommand cmd = null;

    
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection SqlCon = new SqlConnection("Data source = ANDROID-3YFCDS5\\SQLEXPRESS; initial catalog = CrimeInvestigationDatabase1; integrated security = SSPI; persist security info =False; Trusted_Connection=Yes");

        int n = Convert.ToInt32(RadioButtonList1.SelectedValue);

        switch (n)
        {
            case 1:
                viewCitizen();
                break;
            case 2:
                viewStaff();
                break;
            case 3:
                viewCriminal();
                break;
            case 4:
                viewVictim();
                break;
            case 5:
                viewWitness();
                break;
            default:
                break;
        }
    }
    public void viewCitizen()
    {
        SqlConnection SqlCon = new SqlConnection("Data source = ANDROID-3YFCDS5\\SQLEXPRESS; initial catalog = CrimeInvestigationDatabase1; integrated security = SSPI; persist security info =False; Trusted_Connection=Yes");

        SqlCommand cmd = new SqlCommand("select * from Citizen2", SqlCon);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adp.Fill(ds, "Citizen2");

        GridView1.DataSource = ds.Tables["Citizen2"];
        GridView1.DataBind();
        Panel1.Controls.Add(GridView1);
    }
    public void viewStaff()
    {
        SqlConnection SqlCon = new SqlConnection("Data source = ANDROID-3YFCDS5\\SQLEXPRESS; initial catalog = CrimeInvestigationDatabase1; integrated security = SSPI; persist security info =False; Trusted_Connection=Yes");

        SqlCommand cmd = new SqlCommand("select * from Staff2", SqlCon);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adp.Fill(ds, "Staff2");

        GridView1.DataSource = ds.Tables["Staff2"];
        GridView1.DataBind();
        Panel1.Controls.Add(GridView1);
    }
    public void viewCriminal()
    {
        SqlConnection SqlCon = new SqlConnection("Data source = ANDROID-3YFCDS5\\SQLEXPRESS; initial catalog = CrimeInvestigationDatabase1; integrated security = SSPI; persist security info =False; Trusted_Connection=Yes");

        SqlCommand cmd = new SqlCommand("select * from Criminal1", SqlCon);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adp.Fill(ds, "Criminal1");

        GridView1.DataSource = ds.Tables["Criminal1"];
        GridView1.DataBind();
        Panel1.Controls.Add(GridView1);
    }
    public void viewVictim()
    {
        SqlConnection SqlCon = new SqlConnection("Data source = ANDROID-3YFCDS5\\SQLEXPRESS; initial catalog = CrimeInvestigationDatabase1; integrated security = SSPI; persist security info =False; Trusted_Connection=Yes");

        SqlCommand cmd = new SqlCommand("select * from Victim1", SqlCon);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adp.Fill(ds, "Victim1");

        GridView1.DataSource = ds.Tables["Victim1"];
        GridView1.DataBind();
        Panel1.Controls.Add(GridView1);
    }
    public void viewWitness()
    {
        SqlConnection SqlCon = new SqlConnection("Data source = ANDROID-3YFCDS5\\SQLEXPRESS; initial catalog = CrimeInvestigationDatabase1; integrated security = SSPI; persist security info =False; Trusted_Connection=Yes");

        SqlCommand cmd = new SqlCommand("select * from Witness1", SqlCon);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adp.Fill(ds, "Witness1");

        GridView1.DataSource = ds.Tables["Witness1"];
        GridView1.DataBind();
        Panel1.Controls.Add(GridView1);
    }
}