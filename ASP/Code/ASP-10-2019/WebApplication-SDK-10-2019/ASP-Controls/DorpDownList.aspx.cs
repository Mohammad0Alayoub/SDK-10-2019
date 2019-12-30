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
    public partial class DorpDownList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string con = ConfigurationManager.ConnectionStrings["LocationConnectionString"].ConnectionString;
            string query = "select country_id , name From Countries";
            using (SqlConnection connection = new SqlConnection(con))
            using (SqlCommand command = new SqlCommand(query, connection))
            {
                DropDownList1.DataTextField = "name";
                DropDownList1.DataValueField = "country_id";
                connection.Open();
                DropDownList1.DataSource = command.ExecuteReader();
                DropDownList1.Items.Insert(0, new ListItem("Select Country", "-1"));
                DropDownList1.DataBind();
            }
        }
    }
}