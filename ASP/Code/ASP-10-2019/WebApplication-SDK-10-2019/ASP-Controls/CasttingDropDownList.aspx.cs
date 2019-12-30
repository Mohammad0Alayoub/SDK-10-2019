using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication_SDK_10_2019.ASP_Controls
{
    public partial class CasttingDropDownList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                DropDownListContiant.Items.Insert(0, new ListItem("Select Continent", "-1"));
                DropDownListCountry.Items.Insert(0, new ListItem("Select Country", "-1"));
                DropDownListCity.Items.Insert(0, new ListItem("Select City", "-1"));
                DropDownListCountry.Enabled = false;
                DropDownListCity.Enabled = false;
            }

        }

        protected void DropDownListContiant_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownListCountry.Enabled = true;
        }

        protected void DropDownListCountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownListCity.Enabled = true;
        }
    }
}