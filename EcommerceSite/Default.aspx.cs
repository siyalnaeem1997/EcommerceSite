using EcommerceSite.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EcommerceSite
{
    public partial class Default : System.Web.UI.Page
    {
        public List<Products> products_list = new List<Products>();
        protected void Page_Load(object sender, EventArgs e)
        {
            load_Products();
        }

        void load_Products()
        {
            string connectionString = WebConfigurationManager.ConnectionStrings["DefaultConnectionString"].ConnectionString;

            SqlConnection con = new SqlConnection(connectionString);
            string query = "SELECT * FROM Products";
            SqlCommand cmd = new SqlCommand(query,con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    products_list.Add(new Products(reader["product_id"].ToString(),reader["product_name"].ToString(), reader["product_price"].ToString(), reader["product_img"].ToString()));
                }
            }


        }

    }
}