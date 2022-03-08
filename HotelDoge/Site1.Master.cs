using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace HotelDoge
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //RoutePage(RouteTable.Routes);
        }
        protected void Login_click(object sender,EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
       protected void btnSignup_Click(object sender,EventArgs e)
        {
            Response.Redirect("~/Pages/DogeLogin.aspx");
        }
        protected void btnLogin_Click(object sender,EventArgs e)
        {
            Response.Redirect("~/Pages/DogeLogin.aspx");
        }
        //static void RoutePage(RouteCollection route)
        //{
        //    route.MapPageRoute("Login", "LoginPage", "LoginPage.aspx");
        //}
    }
}