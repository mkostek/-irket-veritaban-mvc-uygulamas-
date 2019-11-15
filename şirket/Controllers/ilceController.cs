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
    public class ilceController : Controller
    {
        private sirketEntities3 db = new sirketEntities3();

        //
        // GET: /ilce/

        public ActionResult Index()
        {
            var ilce = db.ilce.Include(i => i.il);
            return View(ilce.ToList());
        }

        //
        // GET: /ilce/Details/5

        public ActionResult Details(int id = 0)
        {
            ilce ilce = db.ilce.Find(id);
            if (ilce == null)
            {
                return HttpNotFound();
            }
            return View(ilce);
        }

        //
        // GET: /ilce/Create

        public ActionResult Create()
        {
            ViewBag.il_no = new SelectList(db.il, "il_no", "il_ad");
            return View();
        }

        //
        // POST: /ilce/Create

        [HttpPost]
        public ActionResult Create(ilce ilce)
        {
            if (ModelState.IsValid)
            {
                db.ilce.Add(ilce);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.il_no = new SelectList(db.il, "il_no", "il_ad", ilce.il_no);
            return View(ilce);
        }

        //
        // GET: /ilce/Edit/5

        public ActionResult Edit(int id = 0)
        {
            ilce ilce = db.ilce.Find(id);
            if (ilce == null)
            {
                return HttpNotFound();
            }
            ViewBag.il_no = new SelectList(db.il, "il_no", "il_ad", ilce.il_no);
            return View(ilce);
        }

        //
        // POST: /ilce/Edit/5

        [HttpPost]
        public ActionResult Edit(ilce ilce)
        {
            if (ModelState.IsValid)
            {
                db.Entry(ilce).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.il_no = new SelectList(db.il, "il_no", "il_ad", ilce.il_no);
            return View(ilce);
        }

        //
        // GET: /ilce/Delete/5

        public ActionResult Delete(int id = 0)
        {
            ilce ilce = db.ilce.Find(id);
            if (ilce == null)
            {
                return HttpNotFound();
            }
            return View(ilce);
        }

        //
        // POST: /ilce/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            ilce ilce = db.ilce.Find(id);
            db.ilce.Remove(ilce);
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