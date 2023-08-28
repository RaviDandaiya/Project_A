using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_A
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Course_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/admin/Course.aspx");
        }

        protected void Subject_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/admin/Subject.aspx");
        }

        protected void Teacher_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/admin/Teacher.aspx");
        }

        protected void TeacherSubject_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/admin/TeacherSubject.aspx");
        }

        protected void Student_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/admin/Student.aspx");
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
           // Session.Abandon();
            Response.Redirect("../HomePage.aspx");
        }
    }
}