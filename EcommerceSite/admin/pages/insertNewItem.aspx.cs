using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EcommerceSite.admin.pages
{
    public partial class insertNewItem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void insertNewItemBtn_Click(object sender, EventArgs e)
        {

            string itemName = itemNameTextbox.Text;
            string itemPrice = itemPriceTextbox.Text;
            string itemImage = "images/"+itemImageTextbox.Text;

            string connectionString = WebConfigurationManager.ConnectionStrings["DefaultConnectionString"].ConnectionString;

            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            string query = "INSERT INTO Products values ('"+itemName+"','"+itemPrice+"','"+itemImage+"')";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Label4.Text = "Item Added Successfully";


        }
    }
}