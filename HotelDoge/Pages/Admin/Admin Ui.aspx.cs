using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.Script.Serialization;
using System.Web.UI.WebControls;

namespace HotelDoge
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public int[] GetChartData()
        {
            int[] arr = new int[] { 1, 2, 3, 4, 5 };
            return arr;
        }
        
    }
}