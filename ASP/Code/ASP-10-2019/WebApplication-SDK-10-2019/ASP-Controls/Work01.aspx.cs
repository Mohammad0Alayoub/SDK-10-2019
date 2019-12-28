using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication_SDK_10_2019.ASP_Controls
{
    public partial class Work01 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            string gender;
            if(RadioButtonMale.Checked)
            {
                gender = RadioButtonMale.Text;
            }
            else
            {
                gender = RadioButtonFemale.Text;
            }
            Labelmsj.Text = "Name is : " + TextBoxName.Text + "<br/>"
                + "Email is : " + TextBoxEmail.Text + "<br/>" 
                + "Age is : " + TextBoxAge.Text + "<br/>"
                + "Gender is : " + gender + ".<br/>";
        }
    }
}