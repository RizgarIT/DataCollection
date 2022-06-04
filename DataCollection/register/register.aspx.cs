using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace DataCollection.register
{
    public partial class register : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Submit_Click(object sender, EventArgs e)
        {
            int i = 0;

            SqlConnection con = new SqlConnection(strcon);
            {
                con.Open();

                if (password.Text == confirmpassword.Text)
                {


                    SqlCommand cmd = new SqlCommand("insert into registration (username,email,password,telephone,IsActive,IsAdmin) values(@username,@email,@password,@telephone,@IsActive,@IsAdmin)", con);




                    cmd.Parameters.AddWithValue("username", username.Text);

                    cmd.Parameters.AddWithValue("email", email.Text);
                    cmd.Parameters.AddWithValue("password", password.Text);
                    cmd.Parameters.AddWithValue("telephone", telephone.Text);
                    cmd.Parameters.AddWithValue("IsActive", 0);
                    cmd.Parameters.AddWithValue("IsAdmin", 0);
                   

                    i = cmd.ExecuteNonQuery();
                    con.Close();
                    if (i > 0)
                    {

                        Response.Redirect("~/LoginForm/LoginForm.aspx");

                    }

                }
                else
                {
                    Response.Write("<script> alert('please check your password'); </script>");
                    confirmpassword.Focus();
                }
            }
        }
    }
}