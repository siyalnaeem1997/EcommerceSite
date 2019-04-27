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
        static List<Products> cart_list = new List<Products>();

        protected void Page_Load(object sender, EventArgs e)
        {
            load_Products();
            if (Request.QueryString.AllKeys.Contains("pro_id") && Request.QueryString.AllKeys.Contains("action"))
            {
                string pro_id = Request.QueryString["pro_id"];
                string action = Request.QueryString["action"];

                if (action.Equals("add"))
                {
                    add_to_cart(pro_id);
                }

            }

        }

        void add_to_cart(string product_id)
        {

            var product = products_list.Where(x => x.id == product_id);

            foreach (var data in product) {
                cart_list.Add(data);
            }

            Session["cart"] = cart_list;
            

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
                    products_list.Add(new Products(reader["product_id"].ToString(),reader["product_name"].ToString(), reader["product_price"].ToString(), reader["product_img"].ToString(), reader["product_desc"].ToString()));
                }
            }


        }

    }
}