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
    
    public partial class Region
    {
        public Region()
        {
            this.Cities = new HashSet<City>();
        }
    
        public int Region_ID { get; set; }
        public string RegionName { get; set; }
        public int CreatedBy_ID { get; set; }
        public System.DateTime CreatedDate { get; set; }
    
        public virtual ICollection<City> Cities { get; set; }
    }
}