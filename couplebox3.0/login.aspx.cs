using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace couplebox3._0
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //declare variables for credentials
            String sUID = "";
            string sUser = "";
            string sPass = "";




            //declare a sqldatareader to store more query results
            SqlDataReader myReader;

            //declare a sqlconnection to connection to the database
            SqlConnection myConnection = new SqlConnection(SqlDataSource1.ConnectionString);

            //declare a sqlcommand
            SqlCommand myCommand = new SqlCommand(
       "SELECT Email, Password, FName, LName FROM Users WHERE Email = @Email AND Password = @Password",
       myConnection);


            //Set the connection
            myCommand.Connection = myConnection;

            //Set the parameters
            //Populate email
            myCommand.Parameters.AddWithValue("@Email", txtEmail.Text);
            myCommand.Parameters.AddWithValue("@Password", txtPassword.Text);

            //open the database connection
            myConnection.Open();

            //execute the command
            myReader = myCommand.ExecuteReader(CommandBehavior.CloseConnection);

            //Populate the reader, assign the values to the variables, then compare the values pulled from the databse to what's in the textbox
            while (myReader.Read())
            {
                sUID = myReader.GetString(0);
                sPass = myReader.GetString(1);
                sUser = myReader.GetString(2) + " " + myReader.GetString(3);
            }

            if (txtEmail.Text == sUID && txtPassword.Text == sPass)
            {
                //if the credentials match

                Session["user"] = sUser;
                Session["email"] = sUID;
                SqlConnection connection = new SqlConnection(SqlDataSource1.ConnectionString);


                SqlCommand command = new SqlCommand("SELECT Suggest FROM Subscriptions WHERE Email = @Email", connection);
                command.Parameters.AddWithValue("@Email", Session["email"].ToString());

                connection.Open();

                SqlDataReader myReader1 = command.ExecuteReader();


                if (myReader1.Read())
                {
                    if (myReader1["Suggest"] != null)
                    {
                        Session["suggest"] = myReader1["Suggest"].ToString();
                    }
                    else
                    {
                        Session["suggest"] = "King and Queen";
                    }
                }
                else
                {
                    Session["suggest"] = "King and Queen";
                }
                connection.Close();
                Response.Redirect("default.aspx");



            }
            else
            {
                //display an error
                lblMsg.Text = "Invalid username or password";
            }
            myConnection.Close();

           
        }

        protected void txtEmail_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtPassword_TextChanged(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    } 
}