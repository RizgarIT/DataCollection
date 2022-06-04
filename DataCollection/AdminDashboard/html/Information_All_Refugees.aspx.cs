using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.DataVisualization.Charting;

namespace DataCollection.AdminDashboard.html
{
    public partial class Information_All_Refugees : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/LoginForm/LoginForm.aspx");
        }
        protected void LinkButton2_Click(object sender, EventArgs e)
        {

            GridView1.Visible = false;
            

          
        }
    }
}