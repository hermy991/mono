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
    
    public partial class Contract
    {
        public int Contract_ID { get; set; }
        public int Person_ID { get; set; }
        public decimal Amount { get; set; }
        public decimal Interest { get; set; }
        public decimal PercentInterest { get; set; }
        public int ContractStatus_ID { get; set; }
        public System.DateTime AuthorizationDate { get; set; }
        public int PaymentFrequency_ID { get; set; }
        public string InterestType { get; set; }
        public int CreatedBy_ID { get; set; }
        public System.DateTime CreatedDate { get; set; }
    }
}
