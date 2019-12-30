using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication_SDK_10_2019.Work
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string conf = ConfigurationManager.ConnectionStrings["LocationConnectionString2"].ConnectionString;
            string cmd = "  select country_id , name From Countries";
            using (SqlConnection con = new SqlConnection(conf))
            using (SqlCommand cmd1 = new SqlCommand(cmd,con))
            {

                con.Open();
                DropDownList1.DataSource = cmd1.ExecuteReader();
                DropDownList1.DataBind();
            }


        }
    }
}