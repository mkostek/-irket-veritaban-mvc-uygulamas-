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
    public class personelController : Controller
    {
        private sirketEntities3 db = new sirketEntities3();

        //
        // GET: /personel/

        public ActionResult Index()
        {
            var personel = db.personel.Include(p => p.birim).Include(p => p.ilce).Include(p => p.unvan);
            return View(personel.ToList());
        }

        //
        // GET: /personel/Details/5

        public ActionResult Details(int id = 0)
        {
            personel personel = db.personel.Find(id);
            if (personel == null)
            {
                return HttpNotFound();
            }
            return View(personel);
        }

        //
        // GET: /personel/Create

        public ActionResult Create()
        {
            ViewBag.birim_no = new SelectList(db.birim, "birim_no", "birim_ad");
            ViewBag.dogum_yeri = new SelectList(db.ilce, "ilce_no", "ilce_ad");
            ViewBag.unvan_no = new SelectList(db.unvan, "unvan_no", "unvan_ad");
            return View();
        }

        //
        // POST: /personel/Create

        [HttpPost]
        public ActionResult Create(personel personel)
        {
            if (ModelState.IsValid)
            {
                db.personel.Add(personel);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.birim_no = new SelectList(db.birim, "birim_no", "birim_ad", personel.birim_no);
            ViewBag.dogum_yeri = new SelectList(db.ilce, "ilce_no", "ilce_ad", personel.dogum_yeri);
            ViewBag.unvan_no = new SelectList(db.unvan, "unvan_no", "unvan_ad", personel.unvan_no);
            return View(personel);
        }

        //
        // GET: /personel/Edit/5

        public ActionResult Edit(int id = 0)
        {
            personel personel = db.personel.Find(id);
            if (personel == null)
            {
                return HttpNotFound();
            }
            ViewBag.birim_no = new SelectList(db.birim, "birim_no", "birim_ad", personel.birim_no);
            ViewBag.dogum_yeri = new SelectList(db.ilce, "ilce_no", "ilce_ad", personel.dogum_yeri);
            ViewBag.unvan_no = new SelectList(db.unvan, "unvan_no", "unvan_ad", personel.unvan_no);
            return View(personel);
        }

        //
        // POST: /personel/Edit/5

        [HttpPost]
        public ActionResult Edit(personel personel)
        {
            if (ModelState.IsValid)
            {
                db.Entry(personel).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.birim_no = new SelectList(db.birim, "birim_no", "birim_ad", personel.birim_no);
            ViewBag.dogum_yeri = new SelectList(db.ilce, "ilce_no", "ilce_ad", personel.dogum_yeri);
            ViewBag.unvan_no = new SelectList(db.unvan, "unvan_no", "unvan_ad", personel.unvan_no);
            return View(personel);
        }

        //
        // GET: /personel/Delete/5

        public ActionResult Delete(int id = 0)
        {
            personel personel = db.personel.Find(id);
            if (personel == null)
            {
                return HttpNotFound();
            }
            return View(personel);
        }

        //
        // POST: /personel/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            personel personel = db.personel.Find(id);
            db.personel.Remove(personel);
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