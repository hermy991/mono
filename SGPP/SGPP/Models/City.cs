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
    
    public partial class City
    {
        public City()
        {
            this.Sectors = new HashSet<Sector>();
        }
    
        public int City_ID { get; set; }
        public int Region_ID { get; set; }
        public string CityName { get; set; }
        public int CreatedBy_ID { get; set; }
        public System.DateTime CreatedDate { get; set; }
    
        public virtual Region Region { get; set; }
        public virtual ICollection<Sector> Sectors { get; set; }
    }
}
