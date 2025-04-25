using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace couplebox3._0
{
    public partial class paymentform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string userEmail = Session["email"].ToString();

            SqlConnection connection = new
                SqlConnection(SqlDataSource1.ConnectionString);
            SqlCommand command = new SqlCommand("SELECT Email, Password, FName, LName, Address, SubType FROM Users WHERE Email = @Email", connection);
            command.Parameters.AddWithValue("@Email", userEmail);
            connection.Open();

            SqlDataReader myReader = command.ExecuteReader();

            if (myReader.Read())
            {

                lblSubType.Text = myReader["SubType"].ToString();
               

            }

            //close the connection
            connection.Close();

        }
    }
}