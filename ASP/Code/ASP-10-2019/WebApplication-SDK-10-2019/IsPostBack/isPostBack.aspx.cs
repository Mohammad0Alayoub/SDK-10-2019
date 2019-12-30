using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication_SDK_10_2019.IsPostBack
{
    public partial class isPostBack : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LoadCityDropDownList();

            }
        }

        public void LoadCityDropDownList()
        {
            ListItem list01 = new ListItem("Irbid");
            DropDownListCity.Items.Add(list01);
            list01 = new ListItem("Amman");
            DropDownListCity.Items.Add(list01);
        }
    }
}