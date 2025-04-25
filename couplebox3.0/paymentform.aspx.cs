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
            {
                Response.Redirect("login.aspx");
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            string subType = "";
            string subPrice = "";

            string connectionString = SqlDataSource1.ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // 1. First, get the SubType from Users
                SqlCommand getSubTypeCommand = new SqlCommand("SELECT SubType FROM Users WHERE Email = @Email", connection);
                getSubTypeCommand.Parameters.AddWithValue("@Email", Session["email"].ToString());

                connection.Open();
                object result = getSubTypeCommand.ExecuteScalar();
                connection.Close();

                if (result != null)
                {
                    subType = result.ToString();

                    // 2. Determine price based on SubType
                    if (subType == "Love Birds")
                    {
                        subPrice = "$31.99/mo";
                    }
                    else if (subType == "High Class Romance")
                    {
                        subPrice = "$44.99/mo";
                    }
                    else if (subType == "King and Queen")
                    {
                        subPrice = "$69.99/mo";
                    }


                    // 3. Update SubPrice in Subscriptions table
                    SqlCommand updateCommand = new SqlCommand(
                        "UPDATE Subscriptions SET SubPrice = @SubPrice WHERE Email = @Email", connection);
                    updateCommand.Parameters.AddWithValue("@SubPrice", subPrice);
                    updateCommand.Parameters.AddWithValue("@Email", Session["email"].ToString());

                    connection.Open();
                    updateCommand.ExecuteNonQuery();
                    connection.Close();

                    Response.Redirect("success.aspx");
                }
            }
        }
    }
}