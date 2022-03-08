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
            Response.Write(Session["UserType"]);
        }
        protected void BtnSearchClick(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/User/Categorie.aspx");
            Session["CheckinDate"] = txtCheckin.Value;
            Session["CheckOutDate"] = txtCheckout.Value;
        }
        protected void BookNow_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/User/Categorie.aspx");
            Session["CheckinDate"] = txtCheckin.Value;
            Session["CheckOutDate"] = txtCheckout.Value;
        }
    }
}