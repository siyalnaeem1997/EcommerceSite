using EcommerceSite.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EcommerceSite
{
    public partial class cartPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            load_data();

        }

        void load_data()
        {
            if(Session["cart"] != null)
            {
                List<Products> prods = Session["cart"] as List<Products>;
                products_gv.DataSource = prods;
                products_gv.DataBind();
                
            }

            Int64 grandTotal = 0;
            foreach(GridViewRow row in products_gv.Rows)
            {
                grandTotal = grandTotal + Convert.ToInt64(row.Cells[2].Text);
            }
            Label2.Text = grandTotal.ToString() ;

        }
    }
}