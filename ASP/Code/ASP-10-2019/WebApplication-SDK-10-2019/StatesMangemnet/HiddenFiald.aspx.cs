using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;

namespace WebApplication_SDK_10_2019.StatesMangemnet
{
    public partial class HiddenFiald : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            LoadEmployee();
        }

        protected void LoadEmployee()
        {
            string con = ConfigurationManager.ConnectionStrings["EmployyeConnectionString"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(con))
            {
                string query = "  select EmpId , Name , Gender , City From EmployeeInfo where EmpId = " + TextBoxID.Text;
                SqlCommand command = new SqlCommand(query, connection);
                connection.Open();
                using (SqlDataReader reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        TextBoxName.Text = reader["Name"].ToString();
                        TextBoxGender.Text = reader["Gender"].ToString();
                        TextBoxCity.Text = reader["City"].ToString();
                        HiddenField1.Value = reader["EmpId"].ToString();
                    }
                }
            }
        }

        protected int InsertEmployee()
        {
            int id , result;
            string name, city, gender;

            id = int.Parse(TextBoxID.Text);
            name = TextBoxName.Text;
            city = TextBoxCity.Text;
            gender = TextBoxGender.Text;
            string con = ConfigurationManager.ConnectionStrings["EmployyeConnectionString"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(con))
            using (SqlCommand command = new SqlCommand("spInsertEmployee", connection))
            {
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@Em_id", id);
                command.Parameters.AddWithValue("@name", name);
                command.Parameters.AddWithValue("@gender", gender);
                command.Parameters.AddWithValue("@city", city);
                connection.Open();
                result = command.ExecuteNonQuery();
                if(result > 0)
                {
                    Labelmsj.ForeColor = System.Drawing.Color.Green;
                    Labelmsj.Text = "insert Done";
                }
                return result;
            }
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            InsertEmployee();
        }
    }
}