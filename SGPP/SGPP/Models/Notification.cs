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
    
    public partial class Notification
    {
        public int Notification_ID { get; set; }
        public int NotificationType_ID { get; set; }
        public System.DateTime ExecutionDate { get; set; }
        public string Description { get; set; }
        public string Receiver { get; set; }
        public byte[] Attach { get; set; }
        public int NotificationStatus_ID { get; set; }
        public int CreatedBy_ID { get; set; }
        public System.DateTime CreatedDate { get; set; }
    }
}