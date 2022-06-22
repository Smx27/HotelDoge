using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelDoge.Pages.Admin
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public int[] GetChartData()
        {
            int[] arr = new int[] { 1, 2, 3, 4, 5 };
            return arr;
        }
        protected void AddRoomClick(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/Admin/AddRoom.aspx");
        }
    }
}