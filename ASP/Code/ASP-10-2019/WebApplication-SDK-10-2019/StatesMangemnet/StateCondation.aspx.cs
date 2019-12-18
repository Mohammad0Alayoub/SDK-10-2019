using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication_SDK_10_2019.StatesMangemnet
{
    public partial class StateCondation : System.Web.UI.Page
    {
        int counter = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                TextBox1.Text = "0";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(ViewState["holder"] != null)
            {
                counter = (int)ViewState["holder"] + 1;
                TextBox1.Text = counter.ToString();
            }
            ViewState["holder"] = counter;
        }
    }
}