using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Windows.Forms;
using System.Data.Odbc;
using ExcelDataReader;
using System.Data.OleDb;
using System.Data.Common;
using System.Drawing;

namespace DataCollection.AdminDashboard
{
    public partial class UploadFile : System.Web.UI.Page
    {





        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Response.Redirect("~/LoginForm/LoginForm.aspx");
        }





        protected void upload_Click1(object sender, EventArgs e)
        {
            if (IsPostBack && FileUpload1.PostedFile != null && FileUpload1.PostedFile.FileName.Length > 0)
            {
                string a;
                string b;
                string c;
                string d;
                string ee;
                string f;
                string g;
                string h;
                string i;
                string j;
                string path = Path.GetFileName(FileUpload1.FileName);
                path = path.Replace(" ", "");
                FileUpload1.SaveAs(Server.MapPath("~/ExcelFile/") + path);
                String ExcelPath = Server.MapPath("~/ExcelFile/") + path;
                OleDbConnection mycon = new OleDbConnection("Provider = Microsoft.ACE.OLEDB.12.0; Data Source = " + ExcelPath + "; Extended Properties=Excel 8.0; Persist Security Info = False");
                mycon.Open();
                OleDbCommand cmd = new OleDbCommand("select * from [Data Collection$]", mycon);
                OleDbDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    // Response.Write("<br/>"+dr[0].ToString());
                    a = dr[0].ToString();
                    b = dr[1].ToString();
                    c = dr[2].ToString();
                    d = dr[3].ToString();
                    ee = dr[4].ToString();
                    f = dr[5].ToString();
                    g = dr[6].ToString();
                    h = dr[7].ToString();
                    i = dr[8].ToString();
                    j = dr[9].ToString();
                    savedata(a, b, c, d, ee, f, g, h, i, j);


                }
                Label1.ForeColor = Color.Green;
                Label1.Text = "Data Has Been Saved Successfully";

                if (File.Exists(path))
                {
                    File.Delete(path);

                }





                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cm = new SqlCommand("UPDATE Family SET DateOfBirth = SUBSTRING(DateOfBirth, 0, 10)", con);

                    SqlDataAdapter dl = new SqlDataAdapter(cm);

                    DataTable tt = new DataTable();

                    dl.Fill(tt);

                    con.Close();

                }
                catch (Exception ex)
                {

                }
            }
            else
            {
                Label1.ForeColor = Color.Red;

                Label1.Text = "Please Choose Your File Upload";
            }
    

        }

        private void savedata(string a, string b, string c, string d, string ee, string f, string g, string h, string i, string j)
        {
            SqlConnection ccc = new SqlConnection(strcon);
            if (ccc.State == ConnectionState.Closed)
            {
                ccc.Open();
            }
            SqlCommand cm = new SqlCommand("select *from Family where (FirstName='" + b + "' and LastName='" + c + "') and (CountryName='" + g + "' and CampName='" + i + "' )", ccc);

            SqlDataAdapter da = new SqlDataAdapter(cm);
           
            DataTable dt = new DataTable();
           
            da.Fill(dt);
          
            if (dt.Rows.Count ==0)
            {

                SqlConnection con = new SqlConnection(strcon);
                {
                    con.Open();


                    SqlCommand cmd = new SqlCommand("insert into Family(FamilyMembers, FirstName, LastName, DateOfBirth,Gender,Service,CityOFName,CountryName,CampName,EducationName) values(@FamilyMembers, @FirstName, @LastName, @DateOfBirth, @Gender, @Service, @CityOFName, @CountryName, @CampName, @EducationName)", con);

                    cmd.Parameters.AddWithValue("FamilyMembers", a);
                    cmd.Parameters.AddWithValue("FirstName", b);
                    cmd.Parameters.AddWithValue("LastName", c);
                    cmd.Parameters.AddWithValue("DateOfBirth", d);
                    cmd.Parameters.AddWithValue("Gender", ee);
                    cmd.Parameters.AddWithValue("Service", j);
                    cmd.Parameters.AddWithValue("CityOFName", h);
                    cmd.Parameters.AddWithValue("CountryName", g);
                    cmd.Parameters.AddWithValue("CampName", i);
                    cmd.Parameters.AddWithValue("EducationName", f);

                    cmd.ExecuteNonQuery();
                    con.Close();

                }
            }

        }

        

    }


}


    
