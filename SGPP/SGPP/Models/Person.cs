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
    
    public partial class Person
    {
        public Person()
        {
            this.Passwords = new HashSet<Password>();
            this.Users = new HashSet<User>();
        }
    
        public int Person_ID { get; set; }
        public int Company_ID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public int IDType_ID { get; set; }
        public string ID { get; set; }
        public int Sex_ID { get; set; }
        public int CreatedBy_ID { get; set; }
        public System.DateTime CreatedDate { get; set; }
        public Nullable<int> ModifiedBy_ID { get; set; }
        public Nullable<System.DateTime> ModifiedDate { get; set; }
    
        public virtual Customer Customer { get; set; }
        public virtual Detail Detail { get; set; }
        public virtual Detail Detail1 { get; set; }
        public virtual ICollection<Password> Passwords { get; set; }
        public virtual Company Company { get; set; }
        public virtual ICollection<User> Users { get; set; }
    }
}
