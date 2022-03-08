using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace HotelDoge
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        string _email;
        string _password;
        string _name;
        string _userType;

        public string Email { get => _email; set => _email = value; }
        public string Password { get => _password; set => _password = value; }
        public string Name { get => _name; set => _name = value; }
        public string UserType { get => _userType; set => _userType = value; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_ServerClick(object sender, EventArgs e)
        {
            _email = txtLoginEmail.Value;
            _password = txtLoginPassword.Value;
            LoginInfoBLL login = new LoginInfoBLL();
            login.EmailBll = _email;
            login.PasswordBll = _password;
            try
            {
                login.GetLoginCheckBll();
                _userType = login.UserTypeBll;

                if (_userType == "Admin")
                {
                    Response.Redirect("~/Pages/User/Admin Ui.aspx");
                    Session["UserType"] = "Admin";
                }
                else
                {
                    Response.Redirect("~/Pages/User/Categorie.aspx");
                    
                    Session["UserType"] = "User";
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('"+ex+"');</script>");
            }
        }

        protected void btnSignup_ServerClick(object sender, EventArgs e)
        {
            _email = txtSignupEmail.Value;
            _password = txtSignupPassword.Value;
            SignupBll signup = new SignupBll();
            signup.EmailBll = _email;
            signup.PasswordBll = _password;
            signup.NameBll1 = _name;
            signup.UserTypeBll = "User";
            try
            {
                int res= signup.GetSignupBll();
                if(res>0)
                {
                    Response.Write("<script>alert('Signup Successfully.');</script>");
                    Response.Redirect("Categorie.aspx");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex + "');</script>");
            }
        }
    }
}   