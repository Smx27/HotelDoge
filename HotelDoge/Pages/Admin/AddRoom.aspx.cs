using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Data;

namespace HotelDoge.Pages.Admin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string _roomNumber;
        int _roomPrice;
        int _bookingStatus;
        string _roomType;
        int _roomCapacity;
        string _roomDescription;
        DateTime _today;
        

        protected void Page_Load(object sender, EventArgs e)
        {
            string date = DateTime.Now.ToString("yyyy-MM-dd");
            _today = Convert.ToDateTime(date);
            getBookedRoom();
            txtRoomtype.Attributes["Autocomplete"] = "on";
           

        }
        protected void BtnSubmitClick(object sender, EventArgs e)
        {
            _roomNumber = txtRoomNo.Value;
            _roomPrice = Convert.ToInt32(txtRoomPrice.Value);
            _roomType = txtRoomtype.Value;
            _roomDescription = txtDescription.Value;
            _roomCapacity =Convert.ToInt32(txtRoomCapacity.Value);
            _bookingStatus = Convert.ToInt32(txtAvibility.Value);
            BLL.Admin.AddroomBll addroom = new BLL.Admin.AddroomBll();
            addroom.RoomNumberBll = _roomNumber;
            addroom.RoomTypeBll = _roomType;
            addroom.RoomCapacityBll = _roomCapacity;
            addroom.RoomDescriptionBll = _roomDescription;
            addroom.BookingStatusBll = _bookingStatus;
            addroom.RoomPriceBll = _roomPrice;
            addroom.TodayBll = _today;

            int insertroom = addroom.InsertRoomBll();
           if(insertroom>0)
            {
                Response.Write("<script>alert('Room Successfully Inserted');</script>");
            }
           else
                Response.Write("<script>alert('Some Error Occur');</script>");
        }
        protected void BtnClearRoom_Click(object sender,EventArgs e)
        {
            BLL.Admin.AddroomBll add = new BLL.Admin.AddroomBll();
            add.TodayBll = _today;
            int row = add.ResetAvibilityBLL();
            if (row > 0)
            {
                Response.Write("<script>alert('Successfully Cleared');</script>");
            }
            else
                Response.Write("<script>alert('Some Error Occur');</script>");
        }
        void getBookedRoom()
        {
            BLL.Admin.AddroomBll addroom = new BLL.Admin.AddroomBll();
            addroom.TodayBll = _today;

            DataSet ds = addroom.GetBookedRoomBll();
            GridRoomView.DataSource = ds;
            GridRoomView.DataBind();
        }
    }
}