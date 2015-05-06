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
    
    public partial class Permission
    {
        public int Permission_ID { get; set; }
        public int Company_ID { get; set; }
        public int User_ID { get; set; }
        public int Interface_ID { get; set; }
        public string RefInformation { get; set; }
        public bool Active { get; set; }
        public int CreatedBy_ID { get; set; }
        public System.DateTime CreatedDate { get; set; }
        public Nullable<int> ModifiedBy_ID { get; set; }
        public Nullable<System.DateTime> ModifiedDate { get; set; }
    
        public virtual Company Company { get; set; }
        public virtual Interface Interface { get; set; }
        public virtual User User { get; set; }
    }
}