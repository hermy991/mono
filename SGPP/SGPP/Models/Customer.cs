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
    
    public partial class Customer
    {
        public int Costumer_ID { get; set; }
        public int Type_ID { get; set; }
        public int CustumerStatus_ID { get; set; }
        public System.DateTime StartDate { get; set; }
        public int CreatedBy_ID { get; set; }
        public System.DateTime CreatedDate { get; set; }
        public Nullable<int> ModifiedBy_ID { get; set; }
        public Nullable<System.DateTime> ModifiedDate { get; set; }
    
        public virtual Person Person { get; set; }
    }
}
