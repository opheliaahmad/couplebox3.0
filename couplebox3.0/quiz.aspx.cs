using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//TO TEAM MEMBERS: this page will likely change bc if i dont have these values
//stored in a database they will get lost if the user closes the browser or goes
//to a different page this would affect subscription page and account manager
//this unfortnately means we need a table in sql for these lol

namespace couplebox3._0
{
    public partial class quiz : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            List<string> interests = new List<string>();
            if (cbboardgames.Checked) interests.Add("Board Games");
            if (cboutdoors.Checked) interests.Add("Outdoor Adventures");
            if (cbcooking.Checked) interests.Add("Cooking");
            if (cbmovies.Checked) interests.Add("Movie Nights");

            // Date Style
            string dateStyle = cbnightin.Checked ? "Cozy Night In" :
                               cbrestaurant.Checked ? "Restaurant Experience" :
                               cbnightout.Checked ? "Fun Outing" :
                               cbsurpriseme.Checked ? "Surprise Me" : "None";

            // Love Languages
            List<string> loveLanguages = new List<string>();
            if (cbwords.Checked) loveLanguages.Add("Words of Affirmation");
            if (cbqualitytime.Checked) loveLanguages.Add("Quality Time");
            if (cbgiftgiving.Checked) loveLanguages.Add("Receiving Gifts");
            if (cbphysicaltouch.Checked) loveLanguages.Add("Physical Touch");

            // Store in Session
            Session["Interests"] = interests;
            Session["DateStyle"] = dateStyle;
            Session["LoveLanguages"] = loveLanguages;

            Response.Redirect("subscription.aspx");
        }

        protected void cbboardgames_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void cbcooking_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void cboutdoors_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void cbmovies_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void cbnightin_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void cbnightout_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void cbrestraunt_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void cbsurpriseme_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void cbgiftgiving_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void cbqualitytime_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void cbwords_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void cbphysicaltouch_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}