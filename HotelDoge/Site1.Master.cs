using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;


namespace HotelDoge
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //RoutePage(RouteTable.Routes);
            //try
            //{
            //    if (Request.Browser.Cookies)
            //    {
            //        string cData = Request.Cookies["Cookie"].Value != null ? Request.Cookies["Cookie"].Value : string.Empty ;
            //        if (cData != null)
            //        {
            //            HtmlButton signup = (HtmlButton)Page.Master.FindControl("btnSignup");
            //            signup.Style.Add("display", "none");
            //            HtmlButton login = (HtmlButton)Page.Master.FindControl("btnLogin");
            //            login.InnerText = cData;
            //        }
            //    }
            //}
            //catch
            //{

            //}
        }
        protected void btnMasterHome_Click(object sender,EventArgs e)
        {
            Response.Redirect("~/Default.aspx");
        }
        protected void btnMasterCategorie_Click(object sender,EventArgs e)
        {
            Response.Redirect("~/Pages/User/Categorie.aspx");
        }
        protected void Login_click(object sender,EventArgs e)
        {
            
            Response.Redirect("Default.aspx");
        }
       protected void btnSignup_Click(object sender,EventArgs e)
        {
            if (btnLogin.InnerText != "Logout")
            {
                Response.Redirect("../..Pages/DogeLogin.aspx");
            }
            else
            {
                Session.Clear();
    //            Request.Cookies[0].Expires.AddSeconds(1);
                Response.Redirect("~/Default.aspx");
            }
            //Response.Redirect("~/Pages/DogeLogin.aspx");
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