using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace WebApplication_SDK_10_2019.ASP_Controls
{
    public partial class CasttingDropDownList02 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropDownListContinents.DataSource = GetData("spGetContinents", null);
                DropDownListContinents.DataBind();
                DropDownListContinents.Items.Insert(0, new ListItem("Select Continent", "-1"));
                DropDownListCountries.Items.Insert(0, new ListItem("Select Country", "-1"));
                DropDownListCities.Items.Insert(0, new ListItem("Select City", "-1"));
                DropDownListCountries.Enabled = false;
                DropDownListCities.Enabled = false;
            }
        }

        private DataSet GetData(string spName, SqlParameter spParameter)
        {
            string con = ConfigurationManager.ConnectionStrings["LocationConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(con);
            SqlDataAdapter dataAdapter = new SqlDataAdapter(spName, con);
            dataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;
            if (spParameter != null)
            {
                dataAdapter.SelectCommand.Parameters.Add(spParameter);
            }

            DataSet dataSet = new DataSet();
            dataAdapter.Fill(dataSet);
            return dataSet;
        }

        protected void DropDownListContinents_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(DropDownListContinents.SelectedIndex == 0)
            {

            }
            else
            {
                DropDownListCountries.Enabled = true;
                SqlParameter parameter = new SqlParameter("@ContinentsId", DropDownListContinents.SelectedValue);
                DataSet dataSet = GetData("spGetCountriesByContinentsId", parameter);

                DropDownListCountries.DataSource = dataSet;
                DropDownListCountries.DataBind();

                DropDownListCountries.Items.Insert(0, new ListItem("Select Country", "-1"));

                DropDownListCities.SelectedIndex = 0;
                DropDownListCities.Enabled = false;
            }
        }

        protected void DropDownListCountries_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownListCountries.SelectedIndex == 0)
            {

            }
            else
            {
                DropDownListCities.Enabled = true;
                SqlParameter parameter = new SqlParameter("@CountriesId", DropDownListCountries.SelectedValue);
                DataSet dataSet = GetData("spGetCitiesByCountriesId", parameter);

                DropDownListCities.DataSource = dataSet;
                DropDownListCities.DataBind();

                DropDownListCities.Items.Insert(0, new ListItem("Select City", "-1"));


            }
        }
    }
}