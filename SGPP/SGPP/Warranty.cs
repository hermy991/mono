//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SGPP
{
    using System;
    using System.Collections.Generic;
    
    public partial class Warranty
    {
        public int Warranty_ID { get; set; }
        public int Contract_ID { get; set; }
        public int WarrantyCondition_ID { get; set; }
        public string Description { get; set; }
        public decimal Amount { get; set; }
        public string Serie { get; set; }
        public string Brand { get; set; }
        public string Model { get; set; }
        public int CreatedBy_ID { get; set; }
        public System.DateTime CreatedDate { get; set; }
    }
}
