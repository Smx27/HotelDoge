using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.IO;
using BLL;
namespace HotelDoge
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        DateTime _checkinui;
        DateTime _checkoutui;
        string _roomnoui;
        string _full_nameui;
        string _emailbui;
        long _aadharnoui;
        string _contactNoui;
        string _addressui;
        int _numberofroomui;
        int _roompriceui;
        string _roomTypeui;
        string _paymentIdui;
        string _transationIdui;
        string _usernameui;
        int _numberOfPeopleui;

        public DateTime Checkinui { get => _checkinui; set => _checkinui = value; }
        public DateTime Checkoutui { get => _checkoutui; set => _checkoutui = value; }
        public string Full_nameui { get => _full_nameui; set => _full_nameui = value; }
        public string Emailbui { get => _emailbui; set => _emailbui = value; }
        public long Aadharnoui { get => _aadharnoui; set => _aadharnoui = value; }
        public string ContactNoui { get => _contactNoui; set => _contactNoui = value; }
        public string Addressui { get => _addressui; set => _addressui = value; }
        public int Numberofroomui { get => _numberofroomui; set => _numberofroomui = value; }
        public int Roompriceui { get => _roompriceui; set => _roompriceui = value; }
        public string RoomTypeui { get => _roomTypeui; set => _roomTypeui = value; }
        public string PaymentIdui { get => _paymentIdui; set => _paymentIdui = value; }
        public string TransationIdui { get => _transationIdui; set => _transationIdui = value; }
        public string Usernameui { get => _usernameui; set => _usernameui = value; }
        public int NumberOfPeopleui { get => _numberOfPeopleui; set => _numberOfPeopleui = value; }
        public string Roomnoui { get => _roomnoui; set => _roomnoui = value; }

        protected void Page_Load(object sender, EventArgs e)
        {
            string today = DateTime.Now.ToString("yyyy-MM-dd");
            txtCheckin.Attributes["min"] = today;
            txtCheckout.Attributes["min"] = today;
            if (Session["UserType"] != null)
            {
                HtmlButton signup = (HtmlButton)Page.Master.FindControl("btnSignup");
                signup.Style.Add("display", "none");
                HtmlButton login = (HtmlButton)Page.Master.FindControl("btnLogin");
                login.InnerText = "Logout";
            }
            if (Session["CheckinDate"] != null && Session["CheckOutDate"] != null)
            {
                _checkinui = (DateTime)Session["CheckinDate"];
                _checkoutui = (DateTime)Session["CheckOutDate"];
            }
            _roomTypeui = Request.QueryString["RoomType"];
            PaymentDataBLL paymentData = new PaymentDataBLL();
            paymentData.RoomTypebll = _roomTypeui;
            paymentData.GetInitialData();
            _roomnoui=paymentData.Roomnobll;
            _roompriceui = paymentData.Roompricebll;
            txtTransactionId.Value = paymentData.TransationIdbll;

            txtRoomType.Value = _roomTypeui;
            txtRoomNo2.Value = _roomnoui;
            txtRoomNumber.Value = _roomnoui;
            lblRoomPrice.InnerText += _roompriceui.ToString();
            //txtRoomPrice.Value = _roompriceui.ToString();
            //txtRoomPrice.Value += _roompriceui.ToString();
            txtTotalPrice.InnerText = TotalAmount(_roompriceui).ToString();
        }

        int TotalAmount(int RoomPrice)
        {
            int TotalAmount = 0;
            TotalAmount += RoomPrice - 199 + 499 + 20;
            return TotalAmount;
        }

        protected void PayNow_Click(object sender, EventArgs e)
        {
            _full_nameui = txtFname.Value;
            _aadharnoui =Convert.ToInt64( txtAadhaarNo.Value);
            _contactNoui = txtPhno.Value;
            _addressui = txtAadhaarNo.Value;
            _roomnoui = txtTotalPrice.InnerText;
            _emailbui = txtmail.Value;
            
            string d1 = txtCheckin.Value;
            DateTime dt=Convert.ToDateTime(d1);
           _checkinui=Convert.ToDateTime( dt.ToString("yyyy-MM-dd"));
            string d2 = txtCheckout.Value;
            DateTime dt2 = Convert.ToDateTime(d1);
            _checkoutui = Convert.ToDateTime(dt.ToString("yyyy-MM-dd"));


            //_checkoutui = txtCheckout.Value.ToString("yyyy-MM-dd");
            //List<PaymentDataBLL> data = new List<PaymentDataBLL>
            //{
            //    new PaymentDataBLL
            //    {
            //        Checkinbll=_checkinui,
            //        Checkoutbll=_checkoutui,
            //        Full_namebll=_full_nameui,
            //        Aadharnobll=_aadharnoui,
            //        ContactNobll=_contactNoui,
            //        Addressbll=_addressui,
            //        NumberOfPeoplebll=_numberOfPeopleui,
            //        Roompricebll=_roompriceui,
            //        RoomTypebll=_roomTypeui,
            //        PaymentIdbll=_paymentIdui,

            //        Usernamebll=_usernameui,
            //        Numberofroombll=_numberofroomui,
            //        Roomnobll=Roomnoui
            //    }
            //}; //output parameter
            PaymentDataBLL PData = new PaymentDataBLL();
            PData.Checkinbll = _checkinui;
            PData.Emailbll = _emailbui;
            PData.Checkoutbll = _checkoutui;
            PData.Full_namebll = _full_nameui;
            PData.Aadharnobll = _aadharnoui;
            PData.ContactNobll = _contactNoui;
            PData.Addressbll = _addressui;
            PData.NumberOfPeoplebll = _numberOfPeopleui;
            PData.Roompricebll = _roompriceui;
            PData.RoomTypebll = _roomTypeui;
            PData.PaymentIdbll = _paymentIdui;
            PData.Usernamebll = _usernameui;
            PData.Numberofroombll = _numberofroomui;
            PData.Roomnobll = Roomnoui;
            try
            {
                
                int Row=(int)PData.InsertDatabll();
                if(Row>0)
                {
                    Response.Write("<script>alert('Payment Successfull 😊\n Enjoy Your Vecation ');</script>");
                }
                else
                {
                    Response.Write("<script>alert('Some Error Occur \n Plaese Submit Again!');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('"+ex+"');</script>");
                File.AppendAllText("../../../Error.txt", ex.ToString());
            }
        }
    }
}