using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;
using System.Web.WebSockets;
using System.Configuration;
using System.Reflection.Emit;

namespace Project_A
{
    public partial class adminlogin : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            //Session value is assign on the text box  
            if (Session["email"] != null)
            {
                TextBox1.Text = Session["email"].ToString();
            }
            if (Session["Pwd"] != null)
            {
                TextBox2.Text = Session["password"].ToString();
            }
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["email"] = TextBox1.Text;
            Session["password"] = TextBox2.Text;
            if (TextBox1.Text != "" && TextBox2.Text != "")
            {
                SqlConnection con = new SqlConnection("Data Source=DESKTOP-CCNHMQU\\SQLEXPRESS;Initial Catalog=rv1;Integrated Security=True");
                
                string sql1 = "select * from tb1 where email='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
                SqlDataAdapter da1 = new SqlDataAdapter(sql1, con);
                DataTable dt1 = new DataTable();
                da1.Fill(dt1);
                if (dt1.Rows.Count != 0)
                {
                    Response.Redirect("~/admin/Admin_Home.aspx");

                }
                else
                {
                    Response.Write(" <script>    alert('*email or password is incorrect');  </script>");
                }
                
            }
        }

    }
    }
