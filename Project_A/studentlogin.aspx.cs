using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_A
{
    public partial class studentlogin : System.Web.UI.Page
    {
        String str = ConfigurationManager.ConnectionStrings["rv1"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Session value is assign on the text box  
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "" && TextBox2.Text != "")
            {


                string sql1 = "select * from Student where Email='" + TextBox1.Text + "' and spassword='" + TextBox2.Text + "'";
                SqlDataAdapter da1 = new SqlDataAdapter(sql1, str);
                DataTable dt1 = new DataTable();
                da1.Fill(dt1);
                if (dt1.Rows.Count != 0)

                {
                 
                    
                        Session["semail"] =TextBox1.Text;
                    
                  
                    
                        Session["sPwd"] =  TextBox2.Text;
                    
                  
                    
                        Session["sid"] = dt1.Rows[0][0].ToString();

                    Response.Redirect("~/studs.aspx");

                }
                else
                {
                    Response.Write(" <script>    alert('* password is incorrect');  </script>");
                }


            }
        }
    }
}