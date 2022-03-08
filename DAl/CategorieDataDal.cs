using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Threading.Tasks;

namespace DAl
{
    public class CategorieDataDal
    {
        string _roomNo;
        string _roomType;
        public string RoomNo { get => _roomNo; set => _roomNo = value; }
        public string RoomType { get => _roomType; set => _roomType = value; }

        public void getRoomNo()
        {
                string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                SqlConnection con = null;
            try
            {
                using (con = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand("spGetRoomNo", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@roomtype", _roomType);
                    con.Open();
                    string _roomNo = (string)cmd.ExecuteScalar();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }
        }
    }
}
