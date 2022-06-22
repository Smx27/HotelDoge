using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using DAl;

namespace BLL.Admin
    //shyamali khanki shymali r gude swarup r bara
{
    public class AddroomBll
    {
        string _roomNumberBll;
        int _roomPriceBll;
        int _bookingStatusBll;
        string _roomTypeBll;
        int _roomCapacityBll;
        string _roomDescriptionBll;
        DateTime _todayBll;

        public string RoomNumberBll { get => _roomNumberBll; set => _roomNumberBll = value; }
        public int RoomPriceBll { get => _roomPriceBll; set => _roomPriceBll = value; }
        public int BookingStatusBll { get => _bookingStatusBll; set => _bookingStatusBll = value; }
        public string RoomTypeBll { get => _roomTypeBll; set => _roomTypeBll = value; }
        public int RoomCapacityBll { get => _roomCapacityBll; set => _roomCapacityBll = value; }
        public string RoomDescriptionBll { get => _roomDescriptionBll; set => _roomDescriptionBll = value; }
        public DateTime TodayBll { get => _todayBll; set => _todayBll = value; }


        public int InsertRoomBll()
        {
            DAl.Admin.AddroomDll addroom = new DAl.Admin.AddroomDll();
            addroom.RoomNumberDll = _roomNumberBll;
            addroom.TodayDll = _todayBll;
            addroom.RoomTypeDll = _roomTypeBll;
            addroom.RoomPriceDll = _roomPriceBll;
            addroom.RoomDescriptionDll = _roomDescriptionBll;
            addroom.RoomCapacityDll = _roomCapacityBll;
            addroom.BookingStatusDll = _bookingStatusBll;
            int roweffected=addroom.InsertRoomDll();
            return roweffected;
        }

        
        public DataSet GetBookedRoomBll()
        {
            DAl.Admin.AddroomDll addroom = new DAl.Admin.AddroomDll();
            addroom.TodayDll = _todayBll;

            DataSet roweffected = addroom.GetBookedRoomDll();
            return roweffected;
        }

       
        public int ResetAvibilityBLL()
        {
            DAl.Admin.AddroomDll addroom = new DAl.Admin.AddroomDll();
            addroom.TodayDll = _todayBll;

            int roweffected = addroom.ResetAvibilityDLL();
            return roweffected;
        }
    }
}
