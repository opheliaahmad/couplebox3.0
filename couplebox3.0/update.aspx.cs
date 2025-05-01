using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.EnterpriseServices;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;

namespace couplebox3._0
{
    public partial class update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("login.aspx");
            }

            if (!IsPostBack)
            {


                if (Session["user"] != null && Session["email"] != null)
                {
                    //display the current users information from the database. 
                    //this is the same code as the red and login pages.


                    //Declare a sqldatareader to store query results
                    SqlDataReader myReader;

                    //Declare an sqlconnection to connect to database
                    SqlConnection myConnection = new SqlConnection(SqlDataSource1.ConnectionString);

                    //Declare a sqlconnection and set the new select statement

                    SqlCommand myCommand = new SqlCommand(SqlDataSource1.SelectCommand);

                    //Set the connection for our command to use

                    myCommand.Connection = myConnection;

                    //Set the parameters
                    //Parameters from email form the textbox
                    myCommand.Parameters.AddWithValue("@Email", Session["email"].ToString());

                    //Parameter for password from the textbox

                    //Open the connection
                    myConnection.Open();

                    //Execute the selectcommand and assign them to myReader
                    myReader = myCommand.ExecuteReader(CommandBehavior.CloseConnection);

                    //While the reader is being populated, assign the values from the query to the variables

                    while (myReader.Read())
                    {
                        lblEmail.Text = myReader.GetString(1);
                        lblPassword.Text = myReader.GetString(2);
                        lblFName.Text = myReader.GetString(3);
                        lblLName.Text = myReader.GetString(4);
                        lblAddress.Text = myReader.GetString(5);
                        lblCardNumber.Text = myReader.GetString(6);
                        lblSubType.Text = myReader.GetString(7);

                    }

                    //close the connection
                    myConnection.Close();

                    //turn off textbox controls
                    //only show when checkbox is clicked

                    txtPassword.Visible = false;
                    txtPassC.Visible = false;
                    txtFName.Visible = false;
                    txtLName.Visible = false;
                    txtAddress.Visible = false;
                    txtCardNumber.Visible = false;

                    //turn off validation controls
                  /*  rfvPassword.Visible = false;
                    cvPassword.Visible = false;
                    rfvFName.Visible = false;
                    rfvLName.Visible = false;
                    rfvAddress.Visible = false;
                    rfvCardNumber.Visible = false; */


                    //hide the update labels
                    lblPassC.Visible = false;
                    lblPassword.Visible = false;
                    lblFName.Visible = false;
                    lblLName.Visible = false;
                    lblAddress.Visible = false;
                    lblCardNumber.Visible = false;

                    //make sure all of the checkboxes aee unchecked
                    cbFName.Checked = false;
                    cbLName.Checked = false;
                    cbAddress.Checked = false;
                    cbPassword.Checked = false;
                    cbCardNumber.Checked = false;

                }

                else
                {
                    Response.Redirect("default.aspx");

                }

            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            //This is the code to move values from the textbox to the insert statement
            //Either the new value or the old value is moved based on the checkboxes
            if (Page.IsValid)
            {

                //declare a connection
                SqlConnection uconnection = new SqlConnection(SqlDataSource1.ConnectionString);
                //declare a command
                SqlCommand ucommand = new SqlCommand(SqlDataSource1.UpdateCommand);
                ucommand.Connection = uconnection;
                //set parameter for email
                ucommand.Parameters.AddWithValue("@Email", Session["email"].ToString());
                if (cbPassword.Checked == true)
                {
                    ucommand.Parameters.AddWithValue("@Password", txtPassword.Text);
                }
                else
                {
                    ucommand.Parameters.AddWithValue("@Password", lblPassword.Text);
                }

                if (cbFName.Checked == true)
                {
                    ucommand.Parameters.AddWithValue("@FName", txtFName.Text);
                }
                else
                {
                    ucommand.Parameters.AddWithValue("@FName", lblFName.Text);
                }

                if (cbLName.Checked == true)
                {
                    ucommand.Parameters.AddWithValue("@LName", txtLName.Text);
                }
                else
                {
                    ucommand.Parameters.AddWithValue("@LName", lblLName.Text);
                }

                if (cbAddress.Checked == true)
                {
                    ucommand.Parameters.AddWithValue("@Address", txtAddress.Text);
                }
                else
                {
                    ucommand.Parameters.AddWithValue("@Address", lblAddress.Text);
                }

                if (cbCardNumber.Checked == true)
                {
                    ucommand.Parameters.AddWithValue("@CardNumber", txtCardNumber.Text);
                }
                else
                {
                    ucommand.Parameters.AddWithValue("@CardNumber", lblCardNumber.Text);
                }

                //open the connection
                uconnection.Open();
                //execute command
                ucommand.ExecuteNonQuery();
                //close the connection
                uconnection.Close();

                //show user
                Response.Redirect("success.aspx");

            }
        }

        protected void cbPassword_CheckedChanged(object sender, EventArgs e)
        {
            if (cbPassword.Checked == true)
            {
                txtPassword.Visible = true;
                txtPassC.Visible = true;
                rfvPassword.Enabled = true;
                cvPassword.Enabled = true;
                lblPassword.Visible = true;
                lblPassC.Visible = true;
                rfvPassC.Enabled = true;


            }
            else
            {
                txtPassword.Visible = false;
                txtPassC.Visible = false;
                rfvPassword.Enabled = false;
                cvPassword.Enabled = false;
                lblPassword.Visible = false;
                lblPassC.Visible = false;
            }
        }

        protected void cbFName_CheckedChanged(object sender, EventArgs e)
        {
            if (cbFName.Checked == true)
            {
                txtFName.Visible = true;
                rfvFName.Enabled = true;
                lblFName.Visible = true;

                //MAKE SURE TO INCLUDE THE REST

            }
            else
            {
                txtFName.Visible = false;
                rfvFName.Enabled = false;
                lblFName.Visible = false;
            }
        }
        protected void cbLName_CheckedChanged(object sender, EventArgs e)
        {
            if (cbLName.Checked == true)
            {
                txtLName.Visible = true;
                rfvLName.Enabled = true;
                lblLName.Visible = true;
            }
            else
            {
                txtLName.Visible = false;
                rfvLName.Enabled = false;
                lblLName.Visible = false;
            }
        }

        protected void cbAddress_CheckedChanged(object sender, EventArgs e)
        {
            if (cbAddress.Checked == true)
            {
                txtAddress.Visible = true;
                rfvAddress.Enabled = true;
                lblAddress.Visible = true;
            }
            else
            {
                txtAddress.Visible = false;
                rfvAddress.Enabled = false;
                lblAddress.Visible = false;
            }
        }

        protected void cbCardNumber_CheckedChanged(object sender, EventArgs e)
        {
            if (cbCardNumber.Checked == true)
            {
                txtCardNumber.Visible = true;
                rfvCardNumber.Enabled = true;
                lblCardNumber.Visible = true;
            }
            else
            {
                txtCardNumber.Visible = false;
                rfvCardNumber.Enabled = false;
                lblCardNumber.Visible = false;
            }
        }

    }
}
   
