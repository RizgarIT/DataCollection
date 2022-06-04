using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DataCollection.HomePage.html
{
    public partial class Chart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      

     

        protected void SignIn_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/LoginForm/LoginForm.aspx");
        }
    }
}