using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace couplebox3._0
{
    public partial class subscription : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("login.aspx");
            }

            lblQuiz.Text = Session["suggest"].ToString();
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox1.Checked)
            {
                cb2.Checked = false;
                cb3.Checked = false;
            }
        }

        protected void cb2_CheckedChanged(object sender, EventArgs e)
        {
            if (cb2.Checked)
            {
                CheckBox1.Checked = false;
                cb3.Checked = false;
            }
        }

        protected void cb3_CheckedChanged(object sender, EventArgs e)
        {
            if (cb3.Checked)
            {
                CheckBox1.Checked = false;
                cb2.Checked = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string updateQuery = @"UPDATE Users SET SubType = @SubType WHERE Email = @Email";
            string updateQuery1 = @"UPDATE Subscriptions SET Suggest = @Suggest WHERE Email = @Email";

            // First update Users table
            using (SqlConnection RegCon = new SqlConnection(SqlDataSource1.ConnectionString))
            {
                SqlCommand RegCommand = new SqlCommand(updateQuery, RegCon);
                RegCommand.Parameters.AddWithValue("@Email", Session["email"].ToString());

                if (CheckBox1.Checked)
                {
                    RegCommand.Parameters.AddWithValue("@SubType", "Love Birds");
                }
                else if (cb2.Checked)
                {
                    RegCommand.Parameters.AddWithValue("@SubType", "High Class Romance");
                }
                else if (cb3.Checked)
                {
                    RegCommand.Parameters.AddWithValue("@SubType", "King and Queen");
                }
                else
                {
                    lblMsg.Text = "Please select a subscription type.";
                    return;
                }

                RegCon.Open();
                RegCommand.ExecuteNonQuery();
                RegCon.Close();
            }

            // Now update Subscriptions table
            using (SqlConnection RegCon1 = new SqlConnection(SqlDataSource1.ConnectionString))
            {
                SqlCommand RegCommand1 = new SqlCommand(updateQuery1, RegCon1);
                RegCommand1.Parameters.AddWithValue("@Email", Session["email"].ToString());
                RegCommand1.Parameters.AddWithValue("@Suggest", Session["suggest"].ToString()); // ✅ assign Suggest value

                RegCon1.Open();
                RegCommand1.ExecuteNonQuery();
                RegCon1.Close();
            }

            Response.Redirect("paymentform.aspx");
        }
    }
}
