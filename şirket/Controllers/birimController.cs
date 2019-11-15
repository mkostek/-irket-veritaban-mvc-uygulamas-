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
    public class birimController : Controller
    {
        private sirketEntities3 db = new sirketEntities3();

        //
        // GET: /birim/

        public ActionResult Index()
        {
            return View(db.birim.ToList());
        }

        //
        // GET: /birim/Details/5

        public ActionResult Details(int id = 0)
        {
            birim birim = db.birim.Find(id);
            if (birim == null)
            {
                return HttpNotFound();
            }
            return View(birim);
        }

        //
        // GET: /birim/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /birim/Create

        [HttpPost]
        public ActionResult Create(birim birim)
        {
            if (ModelState.IsValid)
            {
                db.birim.Add(birim);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(birim);
        }

        //
        // GET: /birim/Edit/5

        public ActionResult Edit(int id = 0)
        {
            birim birim = db.birim.Find(id);
            if (birim == null)
            {
                return HttpNotFound();
            }
            return View(birim);
        }

        //
        // POST: /birim/Edit/5

        [HttpPost]
        public ActionResult Edit(birim birim)
        {
            if (ModelState.IsValid)
            {
                db.Entry(birim).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(birim);
        }

        //
        // GET: /birim/Delete/5

        public ActionResult Delete(int id = 0)
        {
            birim birim = db.birim.Find(id);
            if (birim == null)
            {
                return HttpNotFound();
            }
            return View(birim);
        }

        //
        // POST: /birim/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            birim birim = db.birim.Find(id);
            db.birim.Remove(birim);
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