//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SGPP.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Header
    {
        public Header()
        {
            this.Details = new HashSet<Detail>();
        }
    
        public int Header_ID { get; set; }
        public string Name { get; set; }
        public int Area { get; set; }
        public Nullable<int> CreatedBy_ID { get; set; }
        public System.DateTime CreatedDate { get; set; }
    
        public virtual ICollection<Detail> Details { get; set; }
    }
}
