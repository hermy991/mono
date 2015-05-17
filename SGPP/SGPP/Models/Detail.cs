//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SGPP.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Detail
    {
        public Detail()
        {
            this.Interfaces = new HashSet<Interface>();
            this.Interfaces1 = new HashSet<Interface>();
            this.Passwords = new HashSet<Password>();
            this.People = new HashSet<Person>();
            this.People1 = new HashSet<Person>();
            this.Users = new HashSet<User>();
            this.Users1 = new HashSet<User>();
        }
    
        public int Detail_ID { get; set; }
        public int Header_ID { get; set; }
        public string Name { get; set; }
        public string Code { get; set; }
        public string DisplayName { get; set; }
        public string Desc { get; set; }
        public int Order { get; set; }
        public bool Active { get; set; }
        public int CreatedBy_ID { get; set; }
        public System.DateTime CreatedDate { get; set; }
        public Nullable<int> ModifiedBy_ID { get; set; }
        public Nullable<System.DateTime> ModifiedDate { get; set; }
    
        public virtual Header Header { get; set; }
        public virtual ICollection<Interface> Interfaces { get; set; }
        public virtual ICollection<Interface> Interfaces1 { get; set; }
        public virtual ICollection<Password> Passwords { get; set; }
        public virtual ICollection<Person> People { get; set; }
        public virtual ICollection<Person> People1 { get; set; }
        public virtual ICollection<User> Users { get; set; }
        public virtual ICollection<User> Users1 { get; set; }
    }
}
