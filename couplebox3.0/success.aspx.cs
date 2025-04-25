using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace couplebox3._0
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnQuiz_Click(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                Response.Redirect("quiz.aspx");
            }

        }
    }
}