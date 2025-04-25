using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Diagnostics.Eventing.Reader;
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
            if (Session["user"] != null)
            {
                string userEmail = Session["email"].ToString();
                SqlConnection connection = new
                   SqlConnection(SqlDataSource1.ConnectionString);
                SqlCommand command = new SqlCommand("SELECT Email, Password, FName, LName, Address, SubType, CardNumber FROM Users WHERE Email = @Email", connection);
                command.Parameters.AddWithValue("@Email", userEmail);
                connection.Open();

                SqlDataReader myReader = command.ExecuteReader();

                if (myReader.Read())
                {
                    lblSubtype.Text = myReader["SubType"].ToString();
                }
            }
            else
            {
                Response.Redirect("login.aspx");
            }
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