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
    
    public partial class Address
    {
        public int Address_ID { get; set; }
        public int Person_ID { get; set; }
        public System.TimeSpan AvailabilityFrom { get; set; }
        public System.TimeSpan AvailabilityTo { get; set; }
        public int AddressType_ID { get; set; }
        public int AddressCategory_ID { get; set; }
        public int Priority { get; set; }
        public string ZipCode { get; set; }
        public Nullable<int> City_ID { get; set; }
        public string CityName { get; set; }
        public Nullable<int> Sector_ID { get; set; }
        public string SectorName { get; set; }
        public string StreetName { get; set; }
        public string BuildingCode { get; set; }
        public int HomeNumber { get; set; }
        public System.Data.Spatial.DbGeography GeoPoint { get; set; }
        public string References { get; set; }
        public string Comentary { get; set; }
        public int CreatedBy_ID { get; set; }
        public System.DateTime CreatedDate { get; set; }
        public Nullable<int> ModifiedBy_ID { get; set; }
        public Nullable<System.DateTime> ModifiedDate { get; set; }
    }
}
