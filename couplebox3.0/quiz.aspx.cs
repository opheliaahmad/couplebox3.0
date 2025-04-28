using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace couplebox3._0
{
    public partial class quiz : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            if (cbboardgames.Checked == true)
            {
                Session["suggest"] = "High Class Romance";
            }
            if (cbcooking.Checked == true)
            {
                Session["suggest"] = "King and Queen";
            }
            if (cboutdoors.Checked == true)
            {
                Session["suggest"] = "Love Birds";
            }
            else
            {
                Session["suggest"] = "King and Queen";
            }
            Response.Redirect("subscription.aspx");
        }

        protected void cbboardgames_CheckedChanged(object sender, EventArgs e)
        {
            if (cbboardgames.Checked)
            {
                cbcooking.Checked = false;
                cboutdoors.Checked = false;
                cbmovies.Checked = false;
            }
        }

        protected void cbcooking_CheckedChanged(object sender, EventArgs e)
        {
            if (cbcooking.Checked)
            {
                cbboardgames.Checked = false;
                cboutdoors.Checked = false;
                cbmovies.Checked = false;
            }
        }

        protected void cboutdoors_CheckedChanged(object sender, EventArgs e)
        {
            if (cboutdoors.Checked)
            {
                cbboardgames.Checked = false;
                cbcooking.Checked = false;
                cbmovies.Checked = false;
            }

        }

        protected void cbmovies_CheckedChanged(object sender, EventArgs e)
        {
            if (cbmovies.Checked)
            {
                cbboardgames.Checked = false;
                cbcooking.Checked = false;
                cboutdoors.Checked = false;
            }
        }

        protected void cbnightin_CheckedChanged(object sender, EventArgs e)
        {
            if (cbnightin.Checked)
            {
                cbsurpriseme.Checked = false;
                cbnightout.Checked = false;
                cbrestraunt.Checked = false;
            }
        }

        protected void cbnightout_CheckedChanged(object sender, EventArgs e)
        {
            if (cbnightout.Checked)
            {
                cbsurpriseme.Checked = false;
                cbnightin.Checked = false;
                cbrestraunt.Checked = false;
            }
        }

        protected void cbsurpriseme_CheckedChanged(object sender, EventArgs e)
        {
            if (cbsurpriseme.Checked)
            {
                cbrestraunt.Checked = false;
                cbnightin.Checked = false;
                cbnightout.Checked = false;
            }
        }

        protected void cbgiftgiving_CheckedChanged(object sender, EventArgs e)
        {
            if (cbgiftgiving.Checked)
            {
                cbqualitytime.Checked = false;
                cbwords.Checked = false;
                cbphysicaltouch.Checked = false;
            }
        }

        protected void cbqualitytime_CheckedChanged(object sender, EventArgs e)
        {
            if (cbqualitytime.Checked)
            {
                cbgiftgiving.Checked = false;
                cbwords.Checked = false;
                cbphysicaltouch.Checked = false;
            }
        }

        protected void cbwords_CheckedChanged(object sender, EventArgs e)
        {
            if (cbwords.Checked)
            {
                cbgiftgiving.Checked = false;
                cbqualitytime.Checked = false;
                cbphysicaltouch.Checked = false;
            }
        }

        protected void cbphysicaltouch_CheckedChanged(object sender, EventArgs e)
        {
            if (cbphysicaltouch.Checked)
            {
                cbgiftgiving.Checked = false;
                cbqualitytime.Checked = false;
                cbwords.Checked = false;
            }
        }

        protected void cbrestraunt_CheckedChanged(object sender, EventArgs e)
        {
            if (cbrestraunt.Checked)
            {
                cbsurpriseme.Checked = false;
                cbnightin.Checked = false;
                cbnightout.Checked = false;
            }
        }
        
    }
}