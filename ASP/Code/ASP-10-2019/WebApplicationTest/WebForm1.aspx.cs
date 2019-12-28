using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationTest
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        
         void Application_Start(object sender, EventArgs e)
        {
            Application["holderApp"] = 0;
            Application["holderSessien"] = 0;

            Application["holderApp"] = (int)Application["holderApp"] + 1;
        }

         void Session_Start(object sender, EventArgs e)
        {
            Application["holderSessien"] = (int)Application["holderSessien"] + 1;

        }

         void Session_End(object sender, EventArgs e)
        {
            Application["holderSessien"] = (int)Application["holderSessien"] - 1;

        }

         void Application_End(object sender, EventArgs e)
        {
            Response.Write("Applacation_End Event");

        }

         void Application_Error(object sender, EventArgs e)
        {
            Response.Write("Applacation_Error Event");

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("Holder App. = " + Application["holderApp"]);
            Response.Write("<br/>");
            Response.Write("Holder Session = " + Application["holderSessien"]);
        }
    }
}