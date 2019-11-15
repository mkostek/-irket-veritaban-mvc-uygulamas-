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
    public class gorevController : Controller
    {
        private sirketEntities3 db = new sirketEntities3();

        //
        // GET: /gorev/

        public ActionResult Index()
        {
            var gorevlendirme = db.gorevlendirme.Include(g => g.personel).Include(g => g.proje);
            return View(gorevlendirme.ToList());
        }

        //
        // GET: /gorev/Details/5

        public ActionResult Details(int id = 0)
        {
            gorevlendirme gorevlendirme = db.gorevlendirme.Find(id);
            if (gorevlendirme == null)
            {
                return HttpNotFound();
            }
            return View(gorevlendirme);
        }

        //
        // GET: /gorev/Create

        public ActionResult Create()
        {
            ViewBag.personel_no = new SelectList(db.personel, "personel_no", "ad");
            ViewBag.proje_no = new SelectList(db.proje, "proje_no", "proje_ad");
            return View();
        }

        //
        // POST: /gorev/Create

        [HttpPost]
        public ActionResult Create(gorevlendirme gorevlendirme)
        {
            if (ModelState.IsValid)
            {
                db.gorevlendirme.Add(gorevlendirme);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.personel_no = new SelectList(db.personel, "personel_no", "ad", gorevlendirme.personel_no);
            ViewBag.proje_no = new SelectList(db.proje, "proje_no", "proje_ad", gorevlendirme.proje_no);
            return View(gorevlendirme);
        }

        //
        // GET: /gorev/Edit/5

        public ActionResult Edit(int id = 0)
        {
            gorevlendirme gorevlendirme = db.gorevlendirme.Find(id);
            if (gorevlendirme == null)
            {
                return HttpNotFound();
            }
            ViewBag.personel_no = new SelectList(db.personel, "personel_no", "ad", gorevlendirme.personel_no);
            ViewBag.proje_no = new SelectList(db.proje, "proje_no", "proje_ad", gorevlendirme.proje_no);
            return View(gorevlendirme);
        }

        //
        // POST: /gorev/Edit/5

        [HttpPost]
        public ActionResult Edit(gorevlendirme gorevlendirme)
        {
            if (ModelState.IsValid)
            {
                db.Entry(gorevlendirme).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.personel_no = new SelectList(db.personel, "personel_no", "ad", gorevlendirme.personel_no);
            ViewBag.proje_no = new SelectList(db.proje, "proje_no", "proje_ad", gorevlendirme.proje_no);
            return View(gorevlendirme);
        }

        //
        // GET: /gorev/Delete/5

        public ActionResult Delete(int id = 0)
        {
            gorevlendirme gorevlendirme = db.gorevlendirme.Find(id);
            if (gorevlendirme == null)
            {
                return HttpNotFound();
            }
            return View(gorevlendirme);
        }

        //
        // POST: /gorev/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            gorevlendirme gorevlendirme = db.gorevlendirme.Find(id);
            db.gorevlendirme.Remove(gorevlendirme);
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