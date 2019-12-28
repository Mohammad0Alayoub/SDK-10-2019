using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication_SDK_10_2019.ASP_Controls
{
    public partial class ForTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string gender;
            if (CheckBoxfemale.Checked)
            {
                gender = CheckBoxfemale.Text;
            }
            else
            {
                gender = CheckBoxmale.Text;
            }

            Labelms.Text = "name : " + TextBoxname.Text +
              "age : " + TextBoxage.Text + "email : " + TextBoxemail.Text
              + gender;
        }
    }
}