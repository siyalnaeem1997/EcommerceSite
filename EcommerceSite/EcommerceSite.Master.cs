using EcommerceSite.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EcommerceSite
{
    public partial class EcommerceSite : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cart"] != null)
            {
                List<Products> cart_list = Session["cart"] as List<Products>;
                cart_label.Text = cart_list.Count.ToString();
            }
            
            if(Session["loggedIn"] == null)
            {
                Panel1.Visible = true;
                Panel2.Visible = false;
            }
            else
            {
                Panel1.Visible = false;
                Panel2.Visible = true;
            }

        }
    }
}