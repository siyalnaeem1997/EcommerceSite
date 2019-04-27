using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EcommerceSite
{
    public partial class signUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        public string encryptpass(string password)
        {
            string encryptedPass = "";
            byte[] encode = new byte[password.Length];
            encode = Encoding.UTF8.GetBytes(password);
            encryptedPass = Convert.ToBase64String(encode);
            return encryptedPass;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = username.Text;
            string email = userEmail.Text;
            string pass = encryptpass(password.Text);

            string connectionString = WebConfigurationManager.ConnectionStrings["DefaultConnectionString"].ConnectionString;

            SqlConnection con = new SqlConnection(connectionString);
            string query = "Insert into userAccount values ('" + name + "','" + email + "','" + pass + "')";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            
            if (i != 0)
            {
                Label1.Text = "Registration Complete. Please Login to continue";
                Label1.ForeColor = System.Drawing.Color.ForestGreen;
            }
            else
            {
                Label1.Text = "Error while Registring. Please try again";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            con.Close();
        }
    }
}