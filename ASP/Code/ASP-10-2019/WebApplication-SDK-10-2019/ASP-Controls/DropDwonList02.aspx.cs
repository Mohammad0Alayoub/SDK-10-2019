using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication_SDK_10_2019.ASP_Controls
{
    public partial class DropDwonList02 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                if (DropDownList1.SelectedValue == "-1")
                {
                    Response.Write("Select Choice .");
                }
                else
                {
                    Response.Write(DropDownList1.SelectedItem.Text + "<br />");
                    Response.Write(DropDownList1.SelectedValue + "<br />");
                    Response.Write(DropDownList1.SelectedIndex + "<br />");
                }
            }
        }

        protected void btnChoice_Click(object sender, EventArgs e)
        {
            if(DropDownList1.SelectedValue == "-1")
            {
                Response.Write("Select Choice .");
            }
            else
            {
                Response.Write(DropDownList1.SelectedItem.Text + "<br />");
                Response.Write(DropDownList1.SelectedValue + "<br />");
                Response.Write(DropDownList1.SelectedIndex + "<br />");
            }
        }
    }
}