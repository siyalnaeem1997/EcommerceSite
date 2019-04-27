using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EcommerceSite.Models
{
    public class Products
    {

        public string id { get; set; }
        public string name { get; set; }
        public string price { get; set; }
        public string img { get; set; }
        public string desc { get; set; }
        public Products(string id,string name,string price,string img,string desc)
        {
            this.id = id;
            this.name = name;
            this.price = price;
            this.img = img;
            this.desc = desc;
        }

    }
}