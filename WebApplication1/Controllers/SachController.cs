using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace WebApplication1.Controllers
{
    public class SachController : ApiController
    {
        [HttpGet]
        public List<Sach> GetSachLists()
        {
            DBSachDataContext db = new DBSachDataContext();
            return db.Saches.ToList();
        }
        [HttpGet]
        public Sach Getsach(int id)
        {
            DBSachDataContext db = new DBSachDataContext();
            return db.Saches.FirstOrDefault(x => x.Id == id);
        }
        [HttpPost]
        public bool InsertNewFood(int id, string title, string content, string authorname, int price)
        {
            try
            {
                DBSachDataContext db = new DBSachDataContext();
                Sach sach = new Sach();
                sach.Id = id;
                sach.Title = title;
                sach.Conten = content;
                sach.AuthorName = authorname;
                sach.Price = price;
                db.Saches.InsertOnSubmit(sach);
                db.SubmitChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
        [HttpPut]
        public bool UpdateFood(int id, string title, string content, string authorname, int price)
        {
            try
            {
                DBSachDataContext db = new DBSachDataContext();
                //lấy food tồn tại ra
                Sach sach = db.Saches.FirstOrDefault(x => x.Id == id);
                if (sach == null) return false;//không tồn tại false
                sach.Id = id;
                sach.Title = title;
                sach.Conten = content;
                sach.AuthorName = authorname;
                sach.Price = price;
                db.SubmitChanges();//xác nhận chỉnh sửa
                return true;
            }
            catch
            {
                return false;
            }
        }
        [HttpDelete]
        public bool DeleteFood(int id)
        {
            DBSachDataContext db = new DBSachDataContext();
            //lấy food tồn tại ra
            Sach sach = db.Saches.FirstOrDefault(x => x.Id == id);
            if (sach == null) return false;
            db.Saches.DeleteOnSubmit(sach);
            db.SubmitChanges();
            return true;
        }
    }
}
