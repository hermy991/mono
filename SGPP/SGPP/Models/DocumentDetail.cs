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
    
    public partial class DocumentDetail
    {
        public int DocumentDetail_ID { get; set; }
        public int DocumentHeader_ID { get; set; }
        public System.DateTime Date { get; set; }
        public string DetailType { get; set; }
        public int Secuence { get; set; }
        public int Origin { get; set; }
        public decimal Amount { get; set; }
        public Nullable<int> PayMethod { get; set; }
        public string Concept { get; set; }
        public int Reference_ID { get; set; }
        public int CreatedBy_ID { get; set; }
        public System.DateTime CreatedDate { get; set; }
    }
}
