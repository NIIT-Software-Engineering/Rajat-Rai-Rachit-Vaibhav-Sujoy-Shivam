using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Citizen_Login : System.Web.UI.Page
{
   // SqlConnection SqlCon = null;
    //SqlCommand cmd = null;

     protected void Page_Load(object sender, EventArgs e)
    {

       // SqlCon = new SqlConnection(con);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txtName.Text == "" || txtPassword.Text == "")
        {
            Response.Write("<script>alert('Please Fill Form Correctly')</script>");
        }
        else
        {

            try
            {

                String s1, s2;
                s1 = txtName.Text;
                s2 = txtPassword.Text;


                SqlConnection SqlCon = new SqlConnection("Data source = ANDROID-3YFCDS5\\SQLEXPRESS; initial catalog = CrimeInvestigationDatabase1; integrated security = SSPI; persist security info =False; Trusted_Connection=Yes");

                SqlCommand cmd = new SqlCommand("select * from Citizen2 where username='" + s1 + "' and pass='" + s2 + "'", SqlCon); 
                SqlCon.Open();
         
      // SqlCommand cmd = new SqlCommand(ss, SqlCon);
                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.Read())
                {
                    Session["un"] = s1;

                    Response.Redirect("CitizenProfile.aspx");
                }
                else
                { Response.Write("<script>alert('Sorry!You Entered Invalid UserName/Password')</script>");
                }

                SqlCon.Close();
            }

            catch (Exception fg)
            {
                Response.Write(fg.ToString());
            }
           /* finally
            {
                //SqlCon.Close();
            }
            */
            
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Server.Transfer("Signup.aspx");
    }
}