using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_A
{
    public partial class stud : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
       

           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("studs.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("sattendance.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Homepage.aspx");
        }
    }
}