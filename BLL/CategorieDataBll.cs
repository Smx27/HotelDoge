using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAl;

namespace BLL
{
    class CategorieDataBll
    {
        string _roomNO;
        string _roomType;

        public string RoomNO { get => _roomNO; set => _roomNO = value; }
        public string RoomType { get => _roomType; set => _roomType = value; }

        /// <summary>
        /// This will Return Room Number As Per Room Type
        /// </summary>
        public void GetRoomType()
        {
            //List<CategorieDataDal> categories = new List<CategorieDataDal>
            //{
            //    new CategorieDataDal
            //    {
            //        RoomType=_roomType
            //    }
            //};
            CategorieDataDal cate = new CategorieDataDal();
            cate.RoomType = _roomType;
            _roomNO = cate.RoomNo;
        }
    }
}
