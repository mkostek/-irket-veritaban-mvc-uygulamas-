﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace şirket.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class sirketEntities3 : DbContext
    {
        public sirketEntities3()
            : base("name=sirketEntities3")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<birim> birim { get; set; }
        public DbSet<cocuk> cocuk { get; set; }
        public DbSet<gorevlendirme> gorevlendirme { get; set; }
        public DbSet<il> il { get; set; }
        public DbSet<ilce> ilce { get; set; }
        public DbSet<personel> personel { get; set; }
        public DbSet<proje> proje { get; set; }
        public DbSet<unvan> unvan { get; set; }
    }
}
