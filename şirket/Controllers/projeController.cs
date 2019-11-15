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
    public class projeController : Controller
    {
        private sirketEntities3 db = new sirketEntities3();

        //
        // GET: /proje/

        public ActionResult Index()
        {
            return View(db.proje.ToList());
        }

        //
        // GET: /proje/Details/5

        public ActionResult Details(int id = 0)
        {
            proje proje = db.proje.Find(id);
            if (proje == null)
            {
                return HttpNotFound();
            }
            return View(proje);
        }

        //
        // GET: /proje/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /proje/Create

        [HttpPost]
        public ActionResult Create(proje proje)
        {
            if (ModelState.IsValid)
            {
                db.proje.Add(proje);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(proje);
        }

        //
        // GET: /proje/Edit/5

        public ActionResult Edit(int id = 0)
        {
            proje proje = db.proje.Find(id);
            if (proje == null)
            {
                return HttpNotFound();
            }
            return View(proje);
        }

        //
        // POST: /proje/Edit/5

        [HttpPost]
        public ActionResult Edit(proje proje)
        {
            if (ModelState.IsValid)
            {
                db.Entry(proje).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(proje);
        }

        //
        // GET: /proje/Delete/5

        public ActionResult Delete(int id = 0)
        {
            proje proje = db.proje.Find(id);
            if (proje == null)
            {
                return HttpNotFound();
            }
            return View(proje);
        }

        //
        // POST: /proje/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            proje proje = db.proje.Find(id);
            db.proje.Remove(proje);
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