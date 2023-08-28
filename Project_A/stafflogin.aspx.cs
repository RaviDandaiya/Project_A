using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Project_A
{
    public partial class stafflogin : System.Web.UI.Page
    {
        String str = ConfigurationManager.ConnectionStrings["rv1"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtUsername.Text != "" && txtPassword.Text != "")
            {
               

                string sql1 = "select * from Teacher where TUserID='" + txtUsername.Text + "' and Tpassword='" + txtPassword.Text + "'";
                SqlDataAdapter da1 = new SqlDataAdapter(sql1, str);
                DataTable dt1 = new DataTable();
                da1.Fill(dt1);
                if (dt1.Rows.Count != 0)
                {
                    Response.Redirect("~/Teacher_Home.aspx");

                }
                else
                {
                    Response.Write(" <script>    alert('*email or password is incorrect');  </script>");
                }
            }
        }
    }
}