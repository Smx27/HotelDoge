using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace HotelDoge
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["UserType"]!=null)
            {
               HtmlButton signup= (HtmlButton)Page.Master.FindControl("btnSignup");
                signup.Style.Add("display", "none");
                HtmlButton login =(HtmlButton)Page.Master.FindControl("btnLogin");
                login.InnerText = "Logout";
            }
        }
        protected void GenerelBtnBookNow_Click(object sender,EventArgs e)
        {
            if(Session["UserType"]!=null)
            {
                string roomtype = "General";
                Response.Redirect("Payment.aspx?RoomType="+roomtype);
            }
            else
            {
                Response.Write("<script>alert('"+"Login First!"+"');</script>");
                Response.Redirect("~/Pages/DogeLogin.aspx");
            }
        }
        protected void btnLuxuryBookNow_Click(object sender,EventArgs e)
        {
            if (Session["UserType"] != null)
            {
                string roomtype = "Luxury";
                Response.Redirect("Payment.aspx?RoomType=" + roomtype);
            }
            else
            {
                Response.Write("<script>alert('" + "Login First!" + "');</script>");
                Response.Redirect("~/Pages/DogeLogin.aspx");
                //Response.Redirect("DogeLogin.aspx");
                //Error Log Table Have To Create 
            }
        }
        protected void btnDeluxBookNow_Click(object sender,EventArgs e)
        {
            if (Session["UserType"] != null)
            {
                string roomtype = "Delux";
                Response.Redirect("Payment.aspx?RoomType=" + roomtype);
            }
            else
            {
                Response.Redirect("~/Pages/DogeLogin.aspx");
                Response.Write("<script>alert('" + "Login First!" + "');</script>");
            }
        }
        protected void btnSuperdeluxBookNow_Click(object sender,EventArgs e)
        {
            if (Session["UserType"] != null)
            {
                string roomtype = "Super Delux";
                Response.Redirect("Payment.aspx?RoomType=" + roomtype);
            }
            else
            {
                Response.Write("<script>alert('" + "Login First!" + "');</script>");
                Response.Redirect("~/Pages/DogeLogin.aspx");
            }
        }
        protected void btnHoneymoonBookNow_Click(object sender,EventArgs e)
        {
            if (Session["UserType"] != null)
            {
                string roomtype = "Honeymoon Suite";
                Response.Redirect("Payment.aspx?RoomType=" + roomtype);
            }
            else
            {
                Response.Write("<script>alert('" + "Login First!" + "');</script>");
                Response.Redirect("~/Pages/DogeLogin.aspx");
            }
        }

    }
}