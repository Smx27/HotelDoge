using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Threading.Tasks;

namespace DAl
{
    public class LoginInfoDal
    {
        string _name;
        string _email;
        string _password;
        string _userType;

        public string Password { get => _password; set => _password = value; }
        public string Email { get => _email; set => _email = value; }
        public string Name { get => _name; set => _name = value; }
        public string UserType { get => _userType; set => _userType = value; }




        /// <summary>
        /// Check Login Credential and Return User Type if Creadential Is correct 
        /// </summary>
        /// <returns>Return UserType</returns>
        public string GetLoginCheck()
        {
            SqlConnection con = null;
            string UserType = null; 
            try
            {
                string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                using (con = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand("SpLoginCheck", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Username", _email);
                    cmd.Parameters.AddWithValue("@Password", _password);
                    con.Open();
                    UserType=cmd.ExecuteScalar().ToString();
                }
                return UserType;
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
    public class SignupDal
    {
        string _name;
        string _email;
        string _password;
        string _UserType;

        public string Name { get => _name; set => _name = value; }
        public string Email { get => _email; set => _email = value; }
        public string Password { get => _password; set => _password = value; }
        public string UserType { get => _UserType; set => _UserType = value; }

        /// <summary>
        /// Insert SignupData in Db
        /// </summary>
        /// <returns>Return Int effected Row Value</returns>
        public int GetSignup()
        {
            SqlConnection con = null;
            string UserType = _UserType;
            try
            {
                string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                using(con=new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand("SpSignup",con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Name", _name);
                    cmd.Parameters.AddWithValue("@Username", _email);
                    cmd.Parameters.AddWithValue("@Password", _password);
                    cmd.Parameters.AddWithValue("User",_UserType);
                    con.Open();
                    int res=cmd.ExecuteNonQuery();
                    return res;
                }
               
            }
            catch(Exception ex)
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
