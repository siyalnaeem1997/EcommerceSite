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
    public partial class orderPlacedConfirmation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            confirmOrder();

        }

        void confirmOrder()
        {
            string sessionId = Request.QueryString["orderId"];

            string connectionString = WebConfigurationManager.ConnectionStrings["DefaultConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            string query = "Select Order_id from Orders where session_id = '"+sessionId+"'";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    Label1.Text = reader["Order_id"].ToString();
                }
            }
            else
            {
                Label1.Text = "Error Placing order. Please try again";
            }

        }


    }
}