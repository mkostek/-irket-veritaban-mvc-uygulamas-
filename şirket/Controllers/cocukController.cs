using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using şirket.Models;

namespace şirket.Controllers
{
    public class cocukController : Controller
    {
        private sirketEntities3 db = new sirketEntities3();

        //
        // GET: /cocuk/

        public ActionResult Index()
        {
            var cocuk = db.cocuk.Include(c => c.ilce).Include(c => c.personel);
            return View(cocuk.ToList());
        }

        //
        // GET: /cocuk/Details/5

        public ActionResult Details(int id = 0)
        {
            cocuk cocuk = db.cocuk.Find(id);
            if (cocuk == null)
            {
                return HttpNotFound();
            }
            return View(cocuk);
        }

        //
        // GET: /cocuk/Create

        public ActionResult Create()
        {
            ViewBag.dogu_yeri = new SelectList(db.ilce, "ilce_no", "ilce_ad");
            ViewBag.personel_no = new SelectList(db.personel, "personel_no", "ad");
            return View();
        }

        //
        // POST: /cocuk/Create

        [HttpPost]
        public ActionResult Create(cocuk cocuk)
        {
            if (ModelState.IsValid)
            {
                db.cocuk.Add(cocuk);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.dogu_yeri = new SelectList(db.ilce, "ilce_no", "ilce_ad", cocuk.dogu_yeri);
            ViewBag.personel_no = new SelectList(db.personel, "personel_no", "ad", cocuk.personel_no);
            return View(cocuk);
        }

        //
        // GET: /cocuk/Edit/5

        public ActionResult Edit(int id = 0)
        {
            cocuk cocuk = db.cocuk.Find(id);
            if (cocuk == null)
            {
                return HttpNotFound();
            }
            ViewBag.dogu_yeri = new SelectList(db.ilce, "ilce_no", "ilce_ad", cocuk.dogu_yeri);
            ViewBag.personel_no = new SelectList(db.personel, "personel_no", "ad", cocuk.personel_no);
            return View(cocuk);
        }

        //
        // POST: /cocuk/Edit/5

        [HttpPost]
        public ActionResult Edit(cocuk cocuk)
        {
            if (ModelState.IsValid)
            {
                db.Entry(cocuk).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.dogu_yeri = new SelectList(db.ilce, "ilce_no", "ilce_ad", cocuk.dogu_yeri);
            ViewBag.personel_no = new SelectList(db.personel, "personel_no", "ad", cocuk.personel_no);
            return View(cocuk);
        }

        //
        // GET: /cocuk/Delete/5

        public ActionResult Delete(int id = 0)
        {
            cocuk cocuk = db.cocuk.Find(id);
            if (cocuk == null)
            {
                return HttpNotFound();
            }
            return View(cocuk);
        }

        //
        // POST: /cocuk/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            cocuk cocuk = db.cocuk.Find(id);
            db.cocuk.Remove(cocuk);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}