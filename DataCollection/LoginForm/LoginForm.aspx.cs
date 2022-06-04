using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace DataCollection.LoginForm
{
    public partial class LoginForm : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("select *from registration where username='" + username.Text.Trim() + "'and password='" + password.Text.Trim() + "'and IsAdmin=1 and IsActive=1", con);
                SqlCommand cm = new SqlCommand("select *from registration where username='" + username.Text.Trim() + "'and password='" + password.Text.Trim() + "'and IsActive=1", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                SqlDataAdapter dl = new SqlDataAdapter(cm);
                DataTable dt = new DataTable();
                DataTable tt = new DataTable();
                da.Fill(dt);
                dl.Fill(tt);
                if (dt.Rows.Count >= 1)
                {
                    Response.Redirect("~/AdminDashboard/html/Information_All_Refugees.aspx");

                }
                else if (tt.Rows.Count >= 1)
                {
                    Response.Redirect("~/userdash/html/information.aspx");
                }
                else
                {

           
                    Response.Write("<script>alert('please cheack your password and username or please wait for you to be accepted by the administrator')</script");
                }


            }
            catch (Exception ex)
            {

            }



        }

        protected void Register_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/register/register.aspx");
        }
    }
}