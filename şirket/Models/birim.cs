//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class birim
    {
        public birim()
        {
            this.personel = new HashSet<personel>();
        }
    
        public int birim_no { get; set; }
        public string birim_ad { get; set; }
    
        public virtual ICollection<personel> personel { get; set; }
    }
}
