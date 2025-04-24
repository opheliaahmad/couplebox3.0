using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace couplebox3._0
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Login_Click(object sender, EventArgs e)
        {
            //declare variables for credentials

            string sUser = "";
            string sPass = "";


            //declare a sqldatareader to store more query results
            SqlDataReader myReader;

            //declare a sqlconnection to connection to the database
            SqlConnection myConnection = new SqlConnection(SqlDataSource1.ConnectionString);

            //declare a sqlcommand
            SqlCommand myCommand = new SqlCommand(SqlDataSource1.SelectCommand);

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

                sPass = myReader.GetString(1);
                sUser = myReader.GetString(2) + " " + myReader.GetString(3);
            }
            if (txtEmail.Text == sUID && txtPassword.Text == sPass)
            {
                //if the credentials match
                Session["user"] = sUser;
                Response.Redirect("subscription.aspx");
            }
            else
            {
                //display an error
                lblMessage.Text = "Invalid username or password";
            }
        }
    }