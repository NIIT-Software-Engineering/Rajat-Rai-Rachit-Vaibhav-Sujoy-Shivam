using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class ViewUserDetailsbyStaff : System.Web.UI.Page
{
    //SqlConnection SqlCon = null;
    //SqlCommand cmd = null;

    //string con = "Data Source=.;Initial Catalog=CrimeInvestigationDatabase1;Integrated Security=true";
    protected void Page_Load(object sender, EventArgs e)
    {
        //SqlCon = new SqlConnection(con);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
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
        SqlConnection SqlCon = new SqlConnection("Data source = ANDROID-3YFCDS5\\SQLEXPRESS; initial catalog = CrimeInvestigationDatabase1; integrated security = SSPI; persist security info =False; Trusted_Connection=Yes; Connection Timeout =1000");

        SqlCommand cmd = new SqlCommand("select name,age,gender,address,phone from Citizen2", SqlCon);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adp.Fill(ds, "Citizen2");

        GridView1.DataSource = ds.Tables["Citizen2"];
        GridView1.DataBind();
        Panel1.Controls.Add(GridView1);
    }
    public void viewStaff()
    {
        SqlConnection SqlCon = new SqlConnection("Data source = ANDROID-3YFCDS5\\SQLEXPRESS; initial catalog = CrimeInvestigationDatabase1; integrated security = SSPI; persist security info =False; Trusted_Connection=Yes; Connection Timeout =1000");

        SqlCommand cmd = new SqlCommand("select name,age,gender,address,phone from Staff2", SqlCon);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adp.Fill(ds, "Staff2");

        GridView1.DataSource = ds.Tables["Staff2"];
        GridView1.DataBind();
        Panel1.Controls.Add(GridView1);
    }
    public void viewCriminal()
    {
        SqlConnection SqlCon = new SqlConnection("Data source = ANDROID-3YFCDS5\\SQLEXPRESS; initial catalog = CrimeInvestigationDatabase1; integrated security = SSPI; persist security info =False; Trusted_Connection=Yes; Connection Timeout =1000");

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
        SqlConnection SqlCon = new SqlConnection("Data source = ANDROID-3YFCDS5\\SQLEXPRESS; initial catalog = CrimeInvestigationDatabase1; integrated security = SSPI; persist security info =False; Trusted_Connection=Yes; Connection Timeout =1000");

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
        SqlConnection SqlCon = new SqlConnection("Data source = ANDROID-3YFCDS5\\SQLEXPRESS; initial catalog = CrimeInvestigationDatabase1; integrated security = SSPI; persist security info =False; Trusted_Connection=Yes; Connection Timeout =1000");

       SqlCommand  cmd = new SqlCommand("select * from Witness1", SqlCon);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adp.Fill(ds, "Witness1");

        GridView1.DataSource = ds.Tables["Witness1"];
        GridView1.DataBind();
        Panel1.Controls.Add(GridView1);
    }
}