using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAl;

namespace BLL
{
    public class PaymentDataBLL
    {
        DateTime _checkinbll;
        DateTime _checkoutbll;
        int _roomnobll;
        string _full_namebll;
        string _emailbll;
        long _aadharnobll;
        string _contactNobll;
        string _addressbll;
        int _numberofroombll;
        int _roompricebll;
        string _roomTypebll;
        string _paymentIdbll;
        string _transationIdbll;
        string _usernamebll;
        int _numberOfPeoplebll;
        Guid guid = Guid.NewGuid();

        public string TransationIdbll { get => _transationIdbll; set => _transationIdbll = value; }
        public string Usernamebll { get => _usernamebll; set => _usernamebll = value; }
        public string PaymentIdbll { get => _paymentIdbll; set => _paymentIdbll = value; }
        public string RoomTypebll { get => _roomTypebll; set => _roomTypebll = value; }
        public int Roompricebll { get => _roompricebll; set => _roompricebll = value; }
        public int Numberofroombll { get => _numberofroombll; set => _numberofroombll = value; }
        public string Addressbll { get => _addressbll; set => _addressbll = value; }
        public string ContactNobll { get => _contactNobll; set => _contactNobll = value; }
        public long Aadharnobll { get => _aadharnobll; set => _aadharnobll = value; }
        public string Emailbll { get => _emailbll; set => _emailbll = value; }
        public string Full_namebll { get => _full_namebll; set => _full_namebll = value; }
        public int Roomnobll { get => _roomnobll; set => _roomnobll = value; }
        public DateTime Checkoutbll { get => _checkoutbll; set => _checkoutbll = value; }
        public DateTime Checkinbll { get => _checkinbll; set => _checkinbll = value; }
        public int NumberOfPeoplebll { get => _numberOfPeoplebll; set => _numberOfPeoplebll = value; }

        public int InsertDatabll()
        {
            List<PaymentDataDal> paymentData = new List<PaymentDataDal>
            {
                new PaymentDataDal
                {
                    Full_name=_full_namebll,
                    Email=_emailbll,
                    ContactNo=_contactNobll,
                    Aadharno=_aadharnobll,
                    Address=_addressbll,
                    Username=_usernamebll,
                    TransationId=guid.ToString(),
                    PaymentId=_paymentIdbll,
                    Roomno=_roomnobll,
                    Roomprice=_roompricebll,
                    RoomType=_roomTypebll,
                    Checkin=_checkinbll,
                    Checkout=_checkoutbll,
                    Numberofroom=_numberofroombll,
                    NumberOfpeople=_numberOfPeoplebll
                }
            };
            PaymentDataDal dataDal = new PaymentDataDal();
            int roweffected=(int)dataDal.InsertUrData();
            return roweffected;
        }

        public void GetInitialData()
        {
            PaymentDataDal payment = new PaymentDataDal();
            payment.RoomType = _roomTypebll;
            payment.GetDataDal();
            _transationIdbll = guid.ToString();
        }
    }
}
