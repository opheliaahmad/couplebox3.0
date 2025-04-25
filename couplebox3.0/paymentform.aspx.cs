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
            if (Session["user"] == null)
            { Response.Redirect("login.aspx");
            }
            string userEmail = Session["email"].ToString();

            SqlConnection connection = new
                SqlConnection(SqlDataSource1.ConnectionString);
            SqlCommand command = new SqlCommand("SELECT Email, Password, FName, LName, Address, SubType, CardNumber FROM Users WHERE Email = @Email", connection);
            command.Parameters.AddWithValue("@Email", userEmail);
            connection.Open();

            SqlDataReader myReader = command.ExecuteReader();

            if (myReader.Read())
            {
                lblFName.Text = myReader["FName"].ToString();
                lblLName.Text = myReader["LName"].ToString();
                lblCardNumber.Text = myReader["CardNumber"].ToString();
                lblAddress.Text = myReader["Address"].ToString();
                lblSubType.Text = myReader["SubType"].ToString();

                if (myReader["SubType"].ToString() == "Love Birds")
                {
                    lblPrice.Text = "$31.99/mo";
                }
                if (myReader["SubType"].ToString() == "High Class Romance")
                {
                    lblPrice.Text = "$44.99/mo";
                }
                if (myReader["SubType"].ToString() == "King and Queen")
                {
                    lblPrice.Text = "$69.99/mo";
                }

            }
            

            //close the connection
            connection.Close();

        }
    }
}