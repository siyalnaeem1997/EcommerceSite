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
    public partial class removeAnItem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            

        }

        protected void productDeleteBtn_Click(object sender, EventArgs e)
        {
            try {
                int productID = int.Parse(this.GridView1.SelectedRow.Cells[1].Text);

                string connectionString = WebConfigurationManager.ConnectionStrings["DefaultConnectionString"].ConnectionString;

                SqlConnection con = new SqlConnection(connectionString);
                con.Open();
                string query = "DELETE FROM Products where product_id = '" + productID + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                this.GridView1.DataBind();                              
                Label1.Text = "Product Deleted Successfully";
                //Response.Redirect("removeAnItem.aspx");
            }
            catch (Exception ex) {
                Label1.Text = ex.Message;
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void a(object sender, GridViewCommandEventArgs e)
        {

            int rowIndex = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = GridView1.Rows[rowIndex];

            deleteItem(row);

        }

        protected void a(object sender, EventArgs e)
        {

        }

        protected void deleteItem(GridViewRow r)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                int productID = int.Parse(this.GridView1.SelectedRow.Cells[1].Text);

                string connectionString = WebConfigurationManager.ConnectionStrings["DefaultConnectionString"].ConnectionString;

                SqlConnection con = new SqlConnection(connectionString);
                con.Open();
                string query = "DELETE FROM Products where product_id = '" + productID + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                this.GridView1.DataBind();
                Label1.Text = "Product Deleted Successfully";
                //Response.Redirect("removeAnItem.aspx");
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }
    }
}