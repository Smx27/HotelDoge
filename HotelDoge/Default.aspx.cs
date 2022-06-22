using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelDoge
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Request.Browser.Cookies)
            //{
            //    HttpCookie hc = new HttpCookie("userId", "1234567890");
            //}
            string today = DateTime.Now.ToString("yyyy-MM-dd");
            txtCheckin.Attributes["min"] = today;
            txtCheckout.Attributes["min"] = today;
        }
        protected void BtnSearchClick(object sender, EventArgs e)
        {
            if(txtCheckin.Value!=null && txtCheckout.Value!=null)
            {
                Session["CheckinDate"] = txtCheckin.Value;
                Session["CheckOutDate"] = txtCheckout.Value;
            }
            Response.Redirect("~/Pages/User/Categorie.aspx");
        }
        protected void BookNow_Click(object sender, EventArgs e)
        {
            if (txtCheckin.Value != null && txtCheckout.Value != null)
            {
                Session["CheckinDate"] = txtCheckin.Value;
                Session["CheckOutDate"] = txtCheckout.Value;
            }
            Response.Redirect("~/Pages/User/Categorie.aspx");
        }
    }
}