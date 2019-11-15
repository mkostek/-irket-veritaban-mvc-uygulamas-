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
    public class unvanController : Controller
    {
        private sirketEntities3 db = new sirketEntities3();

        //
        // GET: /unvan/

        public ActionResult Index()
        {
            return View(db.unvan.ToList());
        }

        //
        // GET: /unvan/Details/5

        public ActionResult Details(int id = 0)
        {
            unvan unvan = db.unvan.Find(id);
            if (unvan == null)
            {
                return HttpNotFound();
            }
            return View(unvan);
        }

        //
        // GET: /unvan/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /unvan/Create

        [HttpPost]
        public ActionResult Create(unvan unvan)
        {
            if (ModelState.IsValid)
            {
                db.unvan.Add(unvan);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(unvan);
        }

        //
        // GET: /unvan/Edit/5

        public ActionResult Edit(int id = 0)
        {
            unvan unvan = db.unvan.Find(id);
            if (unvan == null)
            {
                return HttpNotFound();
            }
            return View(unvan);
        }

        //
        // POST: /unvan/Edit/5

        [HttpPost]
        public ActionResult Edit(unvan unvan)
        {
            if (ModelState.IsValid)
            {
                db.Entry(unvan).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(unvan);
        }

        //
        // GET: /unvan/Delete/5

        public ActionResult Delete(int id = 0)
        {
            unvan unvan = db.unvan.Find(id);
            if (unvan == null)
            {
                return HttpNotFound();
            }
            return View(unvan);
        }

        //
        // POST: /unvan/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            unvan unvan = db.unvan.Find(id);
            db.unvan.Remove(unvan);
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