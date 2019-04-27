using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EcommerceSite.admin
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void adminPanelSubmitBtn_Click(object sender, EventArgs e)
        {

            string username = adminUsername.Text;
            string passwd = adminPasswd.Text;

            string connectionString = WebConfigurationManager.ConnectionStrings["DefaultConnectionString"].ConnectionString;

            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            string query = "SELECT Count(*) FROM admins where username = @username and password = @passwd";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("username", @username);
            cmd.Parameters.AddWithValue("passwd", @passwd);
            

            int count = Convert.ToInt32(cmd.ExecuteScalar());

            if (count == 1)
            {
                con.Close();
                Response.Redirect("/admin/pages/insertNewItem.aspx");
            }
            else
            {
                Label3.Text = "Invalid Username or Password";
            }

        }
    }
}