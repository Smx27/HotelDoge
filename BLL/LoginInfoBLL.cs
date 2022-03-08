using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAl;
namespace BLL
{
    public class LoginInfoBLL
    {
        string _emailBll;
        string _nameBll;
        string _passwordBll;
        string _userTypeBll;

        public string PasswordBll { get => _passwordBll; set => _passwordBll = value; }
        public string NameBll { get => _nameBll; set => _nameBll = value; }
        public string EmailBll { get => _emailBll; set => _emailBll = value; }
        public string UserTypeBll { get => _userTypeBll; set => _userTypeBll = value; }

        /// <summary>
        /// It cheks Ddb to find the user valid or not as per user name and password
        /// </summary>
        /// <returns>User Type String</returns>
        public void GetLoginCheckBll()
        {
            LoginInfoDal login = new LoginInfoDal();
            login.Email = _emailBll;
            login.Password = _passwordBll;
            _userTypeBll=login.GetLoginCheck();

        }
    }
    public class SignupBll
    {
        string _nameBll;
        string _emailBll;
        string _passwordBll;
        string _userTypeBll;

        public string NameBll1 { get => _nameBll; set => _nameBll = value; }
        public string EmailBll { get => _emailBll; set => _emailBll = value; }
        public string PasswordBll { get => _passwordBll; set => _passwordBll = value; }
        public string UserTypeBll { get => _userTypeBll; set => _userTypeBll = value; }

        /// <summary>
        /// Insert User Data into DB
        /// </summary>
        /// <returns>Return Int</returns>
        /// 
        public int GetSignupBll()
        {
            SignupDal Signup = new SignupDal();
            Signup.Email = _emailBll;
            Signup.Password = _passwordBll;
            Signup.Name = _nameBll;
            Signup.UserType = "User";
            try
            {
                int res = Signup.GetSignup();
                return res;
            }
            catch (Exception)
            {

                throw;
            }
        }
    }

}
