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
    public class ilController : Controller
    {
        private sirketEntities3 db = new sirketEntities3();

        //
        // GET: /il/

        public ActionResult Index()
        {
            return View(db.il.ToList());
        }

        //
        // GET: /il/Details/5

        public ActionResult Details(string id = null)
        {
            il il = db.il.Find(id);
            if (il == null)
            {
                return HttpNotFound();
            }
            return View(il);
        }

        //
        // GET: /il/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /il/Create

        [HttpPost]
        public ActionResult Create(il il)
        {
            if (ModelState.IsValid)
            {
                db.il.Add(il);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(il);
        }

        //
        // GET: /il/Edit/5

        public ActionResult Edit(string id = null)
        {
            il il = db.il.Find(id);
            if (il == null)
            {
                return HttpNotFound();
            }
            return View(il);
        }

        //
        // POST: /il/Edit/5

        [HttpPost]
        public ActionResult Edit(il il)
        {
            if (ModelState.IsValid)
            {
                db.Entry(il).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(il);
        }

        //
        // GET: /il/Delete/5

        public ActionResult Delete(string id = null)
        {
            il il = db.il.Find(id);
            if (il == null)
            {
                return HttpNotFound();
            }
            return View(il);
        }

        //
        // POST: /il/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(string id)
        {
            il il = db.il.Find(id);
            db.il.Remove(il);
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