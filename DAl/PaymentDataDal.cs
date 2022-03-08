using System;
using System.Collections.Generic;
using System.Linq;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Threading.Tasks;

namespace DAl
{
    public class PaymentDataDal
    {
        DateTime _checkin;
        DateTime _checkout;
        int _roomno;
        string _full_name;
        string _email;
        long _aadharno;
        string _contactNo;
        string _address;
        int _numberofroom;
        int _roomprice;
        string _roomType;
        string _paymentId;
        string _transationId;
        string _username;
        int _numberOfpeople;

        public int Roomno { get => _roomno; set => _roomno = value; }
        public DateTime Checkin { get => _checkin; set => _checkin = value; }
        public DateTime Checkout { get => _checkout; set => _checkout = value; }
        public string Full_name { get => _full_name; set => _full_name = value; }
        public string Email { get => _email; set => _email = value; }
        public string ContactNo { get => _contactNo; set => _contactNo = value; }
        public long Aadharno { get => _aadharno; set => _aadharno = value; }
        public string Address { get => _address; set => _address = value; }
        public int Numberofroom { get => _numberofroom; set => _numberofroom = value; }
        public int Roomprice { get => _roomprice; set => _roomprice = value; }
        public string RoomType { get => _roomType; set => _roomType = value; }
        public string PaymentId { get => _paymentId; set => _paymentId = value; }
        public string TransationId { get => _transationId; set => _transationId = value; }
        public string Username { get => _username; set => _username = value; }
        public int NumberOfpeople { get => _numberOfpeople; set => _numberOfpeople = value; }



        //Grolbal Connection Veriables
        string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        SqlConnection con = null;
        SqlCommand cmd = null;


        /// <summary>
        /// This method inserts user data and return int of row inserted
        /// </summary>
        /// <returns>int</returns>
        public int InsertUrData()
        {
            using (con = new SqlConnection(cs))
            {
                try
                {
                    cmd = new SqlCommand("UserData", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Name", _full_name);
                    cmd.Parameters.AddWithValue("@mail", _email);
                    cmd.Parameters.AddWithValue("@PhNo", _contactNo);
                    cmd.Parameters.AddWithValue("@AadharCard", _aadharno);
                    cmd.Parameters.AddWithValue("@Address", _address);
                    cmd.Parameters.AddWithValue("@UserName", Username);
                    con.Open();
                    int Number = cmd.ExecuteNonQuery();
                    return Number;
                }
                catch (Exception)
                {
                    throw;
                }
                finally
                {
                    con.Close();
                }

            }
        }
        /// <summary>
        /// It Returns Room Number
        /// </summary>
        public void GetDataDal()
        {
            try
            {
                using(con=new SqlConnection(cs))
                {
                    cmd = new SqlCommand("spGetRoomNo", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@@roomtype", _roomType);
                    SqlDataReader rdr = cmd.ExecuteReader();
                    con.Open();
                    _roomno = (int)rdr.GetValue(rdr.GetOrdinal("RoomNumber"));
                    _roomprice = (int)rdr.GetValue(rdr.GetOrdinal("RoomPrice"));
                }
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                con.Close();
            }
           
        }
    }
}