using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace DAl.Admin
{
    public class AddroomDll
    {
        string _roomNumberDll;
        int _roomPriceDll;
        int _bookingStatusDll;
        string _roomTypeDll;
        int _roomCapacityDll;
        string _roomDescriptionDll;
        DateTime _todayDll;

        public string RoomNumberDll { get => _roomNumberDll; set => _roomNumberDll = value; }
        public int RoomPriceDll { get => _roomPriceDll; set => _roomPriceDll = value; }
        public int BookingStatusDll { get => _bookingStatusDll; set => _bookingStatusDll = value; }
        public string RoomTypeDll { get => _roomTypeDll; set => _roomTypeDll = value; }
        public int RoomCapacityDll { get => _roomCapacityDll; set => _roomCapacityDll = value; }
        public string RoomDescriptionDll { get => _roomDescriptionDll; set => _roomDescriptionDll = value; }
        public DateTime TodayDll { get => _todayDll; set => _todayDll = value; }

        /// <summary>
        /// Add Room from admin Panel
        /// </summary>
        /// <returns>If the Data Successfully submitted or not</returns>
        public int InsertRoomDll()
        {
            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con = null;
            SqlCommand cmd = null;
            int effcet;
            try
            {
                using(con=new SqlConnection(cs))
                {
                    cmd = new SqlCommand("SpAdminInsert", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@RoomNumber",_roomNumberDll);
                    cmd.Parameters.AddWithValue("@RoomPrice", _roomPriceDll);
                    cmd.Parameters.AddWithValue("@BookingStatus",_bookingStatusDll); 
                    cmd.Parameters.AddWithValue("@RoomType",_roomTypeDll); 
                    cmd.Parameters.AddWithValue("@RoomCapacity",_roomCapacityDll); 
                    cmd.Parameters.AddWithValue("@RoomDescription",_roomDescriptionDll);
                    con.Open();
                   effcet =cmd.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
                con.Dispose();
            }

            return effcet;
        }

        /// <summary>
        /// this shows all data of booked table
        /// </summary>
        /// <returns>Return a Dataset</returns>
        public DataSet GetBookedRoomDll()
        {
            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con = null;
            SqlCommand cmd = null;
            DataSet ds = new DataSet();
            try
            {
                using (con=new SqlConnection(cs))
                {  
                    SqlDataAdapter dt = new SqlDataAdapter("BookedRoooms", con);
                    dt.SelectCommand.CommandType = CommandType.StoredProcedure;
                    dt.SelectCommand.Parameters.AddWithValue("@Today", _todayDll);
                    dt.Fill(ds);
                    
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                con.Close();
                con.Dispose();
            }
            return ds;
        }

        /// <summary>
        /// This Sest All booked room avilable
        /// </summary>
        /// <returns>if its done or not</returns>
        public int ResetAvibilityDLL()
        {
            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con = null;
            SqlCommand cmd = null;
            int roweffect;
            try
            {
                using(con=new SqlConnection(cs))
                {
                    cmd = new SqlCommand("Updatebookingstatus", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Today", _todayDll);
                    con.Open();
                    roweffect = cmd.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                con.Close();
                con.Dispose();
            }
            return roweffect;
        }
    }
}
