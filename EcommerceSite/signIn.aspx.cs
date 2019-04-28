using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Configuration;


namespace EcommerceSite
{
    public partial class signIn : System.Web.UI.Page
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
            string email = userEmail.Text;
            string pass = encryptpass(password.Text);

            string connectionString = WebConfigurationManager.ConnectionStrings["DefaultConnectionString"].ConnectionString;

            SqlConnection con = new SqlConnection(connectionString);
            string query = "SELECT * FROM userAccount where email = '" + email + "' and password = '" + pass + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    if (reader["email"].ToString() == email && reader["password"].ToString() == pass)
                    {
                        Session["loggedIn"] = email;
                        Response.Redirect("Default.aspx");
                        Session.RemoveAll();
                    }
                }
            }
            else
            {
                Label1.Text = "Invalid email or password";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}