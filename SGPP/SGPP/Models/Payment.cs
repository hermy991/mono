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
    
    public partial class Payment
    {
        public int Payment_ID { get; set; }
        public int ProvisionHeader_ID { get; set; }
        public int PaymentType_ID { get; set; }
        public string PaymentNumber { get; set; }
        public decimal Amount { get; set; }
        public int CreatedBy_ID { get; set; }
        public System.DateTime CreatedDate { get; set; }
    }
}
