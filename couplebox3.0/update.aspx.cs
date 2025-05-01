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
                    SqlDataReader myReader;
                    SqlConnection myConnection = new SqlConnection(SqlDataSource1.ConnectionString);
                    SqlCommand myCommand = new SqlCommand(SqlDataSource1.SelectCommand);
                    myCommand.Connection = myConnection;
                    myCommand.Parameters.AddWithValue("@Email", Session["email"].ToString());
                    myConnection.Open();
                    myReader = myCommand.ExecuteReader(CommandBehavior.CloseConnection);

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

                    myConnection.Close();

                    txtPassword.Visible = false;
                    txtPassC.Visible = false;
                    txtFName.Visible = false;
                    txtLName.Visible = false;
                    txtAddress.Visible = false;
                    txtCardNumber.Visible = false;

                    lblPassC.Visible = false;
                    lblPassword.Visible = false;
                    lblFName.Visible = false;
                    lblLName.Visible = false;
                    lblAddress.Visible = false;
                    lblCardNumber.Visible = false;

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
            // Dynamically enable/disable validation
            rfvPassword.Enabled = cbPassword.Checked;
            cvPassword.Enabled = cbPassword.Checked;
            rfvFName.Enabled = cbFName.Checked;
            rfvLName.Enabled = cbLName.Checked;
            rfvAddress.Enabled = cbAddress.Checked;
            rfvCardNumber.Enabled = cbCardNumber.Checked;

            // Optional: hide or show messages
            rfvPassword.Visible = cbPassword.Checked;
            cvPassword.Visible = cbPassword.Checked;
            rfvFName.Visible = cbFName.Checked;
            rfvLName.Visible = cbLName.Checked;
            rfvAddress.Visible = cbAddress.Checked;
            rfvCardNumber.Visible = cbCardNumber.Checked;

            // Validate only the update group
            Page.Validate("UpdateGroup");

            if (Page.IsValid)
            {
                SqlConnection uconnection = new SqlConnection(SqlDataSource1.ConnectionString);
                SqlCommand ucommand = new SqlCommand(SqlDataSource1.UpdateCommand);
                ucommand.Connection = uconnection;
                ucommand.Parameters.AddWithValue("@Email", Session["email"].ToString());

                ucommand.Parameters.AddWithValue("@Password", cbPassword.Checked ? txtPassword.Text : lblPassword.Text);
                ucommand.Parameters.AddWithValue("@FName", cbFName.Checked ? txtFName.Text : lblFName.Text);
                ucommand.Parameters.AddWithValue("@LName", cbLName.Checked ? txtLName.Text : lblLName.Text);
                ucommand.Parameters.AddWithValue("@Address", cbAddress.Checked ? txtAddress.Text : lblAddress.Text);
                ucommand.Parameters.AddWithValue("@CardNumber", cbCardNumber.Checked ? txtCardNumber.Text : lblCardNumber.Text);

                uconnection.Open();
                ucommand.ExecuteNonQuery();
                uconnection.Close();

                Response.Redirect("paymentform.aspx");
            }
        }

        protected void cbPassword_CheckedChanged(object sender, EventArgs e)
        {
            bool show = cbPassword.Checked;
            txtPassword.Visible = show;
            txtPassC.Visible = show;
            lblPassword.Visible = show;
            lblPassC.Visible = show;
            rfvPassword.Enabled = show;
            rfvPassword.Visible = show;
            cvPassword.Enabled = show;
            cvPassword.Visible = show;
        }

        protected void cbFName_CheckedChanged(object sender, EventArgs e)
        {
            bool show = cbFName.Checked;
            txtFName.Visible = show;
            lblFName.Visible = show;
            rfvFName.Enabled = show;
            rfvFName.Visible = show;
        }

        protected void cbLName_CheckedChanged(object sender, EventArgs e)
        {
            bool show = cbLName.Checked;
            txtLName.Visible = show;
            lblLName.Visible = show;
            rfvLName.Enabled = show;
            rfvLName.Visible = show;
        }

        protected void cbAddress_CheckedChanged(object sender, EventArgs e)
        {
            bool show = cbAddress.Checked;
            txtAddress.Visible = show;
            lblAddress.Visible = show;
            rfvAddress.Enabled = show;
            rfvAddress.Visible = show;
        }

        protected void cbCardNumber_CheckedChanged(object sender, EventArgs e)
        {
            bool show = cbCardNumber.Checked;
            txtCardNumber.Visible = show;
            lblCardNumber.Visible = show;
            rfvCardNumber.Enabled = show;
            rfvCardNumber.Visible = show;
        }
    }
}