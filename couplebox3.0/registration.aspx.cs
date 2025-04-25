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
    public partial class registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            //declare a sqlconnection

            SqlConnection RegCon = new SqlConnection(SqlDataSource1.ConnectionString);

            //declare a command
            SqlCommand RegCommand = new SqlCommand("INSERT INTO Users (Email, Password, FName, LName, Address, CardNumber) VALUES (@Email, @Password, @FName, @LName, @Address, @CardNumber)", RegCon);
            RegCommand.Connection = RegCon;


            RegCommand.Parameters.AddWithValue("@Email", txtEmail.Text);
            RegCommand.Parameters.AddWithValue("@Password", txtPassword.Text);

            //code the rest of the columns in the database
            RegCommand.Parameters.AddWithValue("@FName", txtFName.Text);
            RegCommand.Parameters.AddWithValue("@LName", txtLName.Text);
            RegCommand.Parameters.AddWithValue("@CardNumber", txtCardNumber.Text);
            RegCommand.Parameters.AddWithValue("@Address", txtAddress.Text);


            //open the connection
            RegCon.Open();

            //execute the Insert command
            RegCommand.ExecuteNonQuery();

            //close the connection
            RegCon.Close();

            //send to a page
            Response.Redirect("login.aspx");

        }

        protected void txtPasswordC0_TextChanged(object sender, EventArgs e)
        {

        }
    }
}