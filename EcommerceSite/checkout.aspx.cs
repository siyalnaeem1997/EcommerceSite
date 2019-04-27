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
    public partial class checkout : System.Web.UI.Page
    {
        string connectionString = WebConfigurationManager.ConnectionStrings["DefaultConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void add_cart(string product_id,string session_id)
        {
            SqlConnection con = new SqlConnection(connectionString);
            string query = "INSERT INTO Cart values ('"+product_id+"','"+session_id+"')";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Order Successfully placed";
        }
        

        protected void checkout_btn_Click(object sender, EventArgs e)
        {
            try
            {
                string session_id = Convert.ToBase64String(Guid.NewGuid().ToByteArray());
                Session["orderId"] = session_id;
                if (Session["cart"] != null)
                {
                    List<Products> cart = Session["cart"] as List<Products>;
                    foreach (var item in cart)
                    {
                        add_cart(item.id, session_id);
                    }
                    SqlConnection con = new SqlConnection(connectionString);
                    string query = "INSERT INTO Orders values ('" + session_id + "','" + userNameCheckout.Text + "','" + userContactCheckout.Text + "','" + userAddressCheckout.Text + "')";
                    SqlCommand cmd = new SqlCommand(query, con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    cmd.Dispose();
                    Response.Redirect("orderPlacedConfirmation.aspx?orderId="+session_id);

                }
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }
    }
}