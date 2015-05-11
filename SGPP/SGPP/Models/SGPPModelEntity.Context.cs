﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class SGPPEntities : DbContext
    {
        public SGPPEntities()
            : base("name=SGPPEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Archive> Archives { get; set; }
        public virtual DbSet<Contract> Contracts { get; set; }
        public virtual DbSet<Customer> Customers { get; set; }
        public virtual DbSet<DocumentDetail> DocumentDetails { get; set; }
        public virtual DbSet<DocumentHeader> DocumentHeaders { get; set; }
        public virtual DbSet<Payment> Payments { get; set; }
        public virtual DbSet<ProvisionHeader> ProvisionHeaders { get; set; }
        public virtual DbSet<Warranty> Warranties { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<Address> Addresses { get; set; }
        public virtual DbSet<City> Cities { get; set; }
        public virtual DbSet<ContactInfo> ContactInfoes { get; set; }
        public virtual DbSet<Detail> Details { get; set; }
        public virtual DbSet<Employee> Employees { get; set; }
        public virtual DbSet<Header> Headers { get; set; }
        public virtual DbSet<Notification> Notifications { get; set; }
        public virtual DbSet<Object> Objects { get; set; }
        public virtual DbSet<Person> People { get; set; }
        public virtual DbSet<Region> Regions { get; set; }
        public virtual DbSet<Sector> Sectors { get; set; }
        public virtual DbSet<Branch> Branches { get; set; }
        public virtual DbSet<Company> Companies { get; set; }
        public virtual DbSet<Interface> Interfaces { get; set; }
        public virtual DbSet<Message> Messages { get; set; }
        public virtual DbSet<Password> Passwords { get; set; }
        public virtual DbSet<Permission> Permissions { get; set; }
        public virtual DbSet<Profile> Profiles { get; set; }
        public virtual DbSet<User> Users { get; set; }
        public virtual DbSet<Contact> Contacts { get; set; }
        public virtual DbSet<V_DocumentType> V_DocumentType { get; set; }
        public virtual DbSet<V_Person> V_Person { get; set; }
        public virtual DbSet<V_Sex> V_Sex { get; set; }
        public virtual DbSet<V_Access> V_Access { get; set; }
        public virtual DbSet<V_Tab> V_Tab { get; set; }
        public virtual DbSet<V_Module> V_Module { get; set; }
    
        [DbFunction("SGPPEntities", "GetDetails")]
        public virtual IQueryable<GetDetails_Result> GetDetails(string prmHeader)
        {
            var prmHeaderParameter = prmHeader != null ?
                new ObjectParameter("PrmHeader", prmHeader) :
                new ObjectParameter("PrmHeader", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.CreateQuery<GetDetails_Result>("[SGPPEntities].[GetDetails](@PrmHeader)", prmHeaderParameter);
        }
    
        [DbFunction("SGPPEntities", "GetRowMessage")]
        public virtual IQueryable<GetRowMessage_Result> GetRowMessage(Nullable<int> prmCode, string prmSubstitutions)
        {
            var prmCodeParameter = prmCode.HasValue ?
                new ObjectParameter("PrmCode", prmCode) :
                new ObjectParameter("PrmCode", typeof(int));
    
            var prmSubstitutionsParameter = prmSubstitutions != null ?
                new ObjectParameter("PrmSubstitutions", prmSubstitutions) :
                new ObjectParameter("PrmSubstitutions", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.CreateQuery<GetRowMessage_Result>("[SGPPEntities].[GetRowMessage](@PrmCode, @PrmSubstitutions)", prmCodeParameter, prmSubstitutionsParameter);
        }
    
        [DbFunction("SGPPEntities", "Split")]
        public virtual IQueryable<Split_Result> Split(string prm_str, string prm_criterion)
        {
            var prm_strParameter = prm_str != null ?
                new ObjectParameter("prm_str", prm_str) :
                new ObjectParameter("prm_str", typeof(string));
    
            var prm_criterionParameter = prm_criterion != null ?
                new ObjectParameter("prm_criterion", prm_criterion) :
                new ObjectParameter("prm_criterion", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.CreateQuery<Split_Result>("[SGPPEntities].[Split](@prm_str, @prm_criterion)", prm_strParameter, prm_criterionParameter);
        }
    
        public virtual int add_permision_program(Nullable<int> prm_user_id_pk, string prm_program_name, Nullable<int> prm_creater_id_pk, Nullable<int> prm_company_id_pk)
        {
            var prm_user_id_pkParameter = prm_user_id_pk.HasValue ?
                new ObjectParameter("prm_user_id_pk", prm_user_id_pk) :
                new ObjectParameter("prm_user_id_pk", typeof(int));
    
            var prm_program_nameParameter = prm_program_name != null ?
                new ObjectParameter("prm_program_name", prm_program_name) :
                new ObjectParameter("prm_program_name", typeof(string));
    
            var prm_creater_id_pkParameter = prm_creater_id_pk.HasValue ?
                new ObjectParameter("prm_creater_id_pk", prm_creater_id_pk) :
                new ObjectParameter("prm_creater_id_pk", typeof(int));
    
            var prm_company_id_pkParameter = prm_company_id_pk.HasValue ?
                new ObjectParameter("prm_company_id_pk", prm_company_id_pk) :
                new ObjectParameter("prm_company_id_pk", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("add_permision_program", prm_user_id_pkParameter, prm_program_nameParameter, prm_creater_id_pkParameter, prm_company_id_pkParameter);
        }
    
        public virtual int add_user(Nullable<int> prm_company_id_fk, string prm_user_name, string prm_pass, string prm_access_name, string prm_creaded_by)
        {
            var prm_company_id_fkParameter = prm_company_id_fk.HasValue ?
                new ObjectParameter("prm_company_id_fk", prm_company_id_fk) :
                new ObjectParameter("prm_company_id_fk", typeof(int));
    
            var prm_user_nameParameter = prm_user_name != null ?
                new ObjectParameter("prm_user_name", prm_user_name) :
                new ObjectParameter("prm_user_name", typeof(string));
    
            var prm_passParameter = prm_pass != null ?
                new ObjectParameter("prm_pass", prm_pass) :
                new ObjectParameter("prm_pass", typeof(string));
    
            var prm_access_nameParameter = prm_access_name != null ?
                new ObjectParameter("prm_access_name", prm_access_name) :
                new ObjectParameter("prm_access_name", typeof(string));
    
            var prm_creaded_byParameter = prm_creaded_by != null ?
                new ObjectParameter("prm_creaded_by", prm_creaded_by) :
                new ObjectParameter("prm_creaded_by", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("add_user", prm_company_id_fkParameter, prm_user_nameParameter, prm_passParameter, prm_access_nameParameter, prm_creaded_byParameter);
        }
    
        public virtual int change_pass(Nullable<int> prm_user_modified_id, string prm_pass, Nullable<int> prm_user_modifier_id)
        {
            var prm_user_modified_idParameter = prm_user_modified_id.HasValue ?
                new ObjectParameter("prm_user_modified_id", prm_user_modified_id) :
                new ObjectParameter("prm_user_modified_id", typeof(int));
    
            var prm_passParameter = prm_pass != null ?
                new ObjectParameter("prm_pass", prm_pass) :
                new ObjectParameter("prm_pass", typeof(string));
    
            var prm_user_modifier_idParameter = prm_user_modifier_id.HasValue ?
                new ObjectParameter("prm_user_modifier_id", prm_user_modifier_id) :
                new ObjectParameter("prm_user_modifier_id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("change_pass", prm_user_modified_idParameter, prm_passParameter, prm_user_modifier_idParameter);
        }
    
        public virtual int get_programs(string prm_user_id_pk, string prm_program_name, string prm_module_name, string prm_tab_name, string prm_languaje_name, string prm_user_status)
        {
            var prm_user_id_pkParameter = prm_user_id_pk != null ?
                new ObjectParameter("prm_user_id_pk", prm_user_id_pk) :
                new ObjectParameter("prm_user_id_pk", typeof(string));
    
            var prm_program_nameParameter = prm_program_name != null ?
                new ObjectParameter("prm_program_name", prm_program_name) :
                new ObjectParameter("prm_program_name", typeof(string));
    
            var prm_module_nameParameter = prm_module_name != null ?
                new ObjectParameter("prm_module_name", prm_module_name) :
                new ObjectParameter("prm_module_name", typeof(string));
    
            var prm_tab_nameParameter = prm_tab_name != null ?
                new ObjectParameter("prm_tab_name", prm_tab_name) :
                new ObjectParameter("prm_tab_name", typeof(string));
    
            var prm_languaje_nameParameter = prm_languaje_name != null ?
                new ObjectParameter("prm_languaje_name", prm_languaje_name) :
                new ObjectParameter("prm_languaje_name", typeof(string));
    
            var prm_user_statusParameter = prm_user_status != null ?
                new ObjectParameter("prm_user_status", prm_user_status) :
                new ObjectParameter("prm_user_status", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("get_programs", prm_user_id_pkParameter, prm_program_nameParameter, prm_module_nameParameter, prm_tab_nameParameter, prm_languaje_nameParameter, prm_user_statusParameter);
        }
    
        public virtual int is_access(string prm_type_object, Nullable<int> prm_object_id_pk, string prm_pass)
        {
            var prm_type_objectParameter = prm_type_object != null ?
                new ObjectParameter("prm_type_object", prm_type_object) :
                new ObjectParameter("prm_type_object", typeof(string));
    
            var prm_object_id_pkParameter = prm_object_id_pk.HasValue ?
                new ObjectParameter("prm_object_id_pk", prm_object_id_pk) :
                new ObjectParameter("prm_object_id_pk", typeof(int));
    
            var prm_passParameter = prm_pass != null ?
                new ObjectParameter("prm_pass", prm_pass) :
                new ObjectParameter("prm_pass", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("is_access", prm_type_objectParameter, prm_object_id_pkParameter, prm_passParameter);
        }
    
        public virtual int revoke_permision_program(Nullable<int> prm_user_id_pk, string prm_program_name, Nullable<int> prm_creater_id_pk, Nullable<int> prm_company_id_pk)
        {
            var prm_user_id_pkParameter = prm_user_id_pk.HasValue ?
                new ObjectParameter("prm_user_id_pk", prm_user_id_pk) :
                new ObjectParameter("prm_user_id_pk", typeof(int));
    
            var prm_program_nameParameter = prm_program_name != null ?
                new ObjectParameter("prm_program_name", prm_program_name) :
                new ObjectParameter("prm_program_name", typeof(string));
    
            var prm_creater_id_pkParameter = prm_creater_id_pk.HasValue ?
                new ObjectParameter("prm_creater_id_pk", prm_creater_id_pk) :
                new ObjectParameter("prm_creater_id_pk", typeof(int));
    
            var prm_company_id_pkParameter = prm_company_id_pk.HasValue ?
                new ObjectParameter("prm_company_id_pk", prm_company_id_pk) :
                new ObjectParameter("prm_company_id_pk", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("revoke_permision_program", prm_user_id_pkParameter, prm_program_nameParameter, prm_creater_id_pkParameter, prm_company_id_pkParameter);
        }
    
        public virtual int sp_alterdiagram(string diagramname, Nullable<int> owner_id, Nullable<int> version, byte[] definition)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            var versionParameter = version.HasValue ?
                new ObjectParameter("version", version) :
                new ObjectParameter("version", typeof(int));
    
            var definitionParameter = definition != null ?
                new ObjectParameter("definition", definition) :
                new ObjectParameter("definition", typeof(byte[]));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_alterdiagram", diagramnameParameter, owner_idParameter, versionParameter, definitionParameter);
        }
    
        public virtual int sp_creatediagram(string diagramname, Nullable<int> owner_id, Nullable<int> version, byte[] definition)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            var versionParameter = version.HasValue ?
                new ObjectParameter("version", version) :
                new ObjectParameter("version", typeof(int));
    
            var definitionParameter = definition != null ?
                new ObjectParameter("definition", definition) :
                new ObjectParameter("definition", typeof(byte[]));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_creatediagram", diagramnameParameter, owner_idParameter, versionParameter, definitionParameter);
        }
    
        public virtual int sp_dropdiagram(string diagramname, Nullable<int> owner_id)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_dropdiagram", diagramnameParameter, owner_idParameter);
        }
    
        public virtual ObjectResult<sp_helpdiagramdefinition_Result> sp_helpdiagramdefinition(string diagramname, Nullable<int> owner_id)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_helpdiagramdefinition_Result>("sp_helpdiagramdefinition", diagramnameParameter, owner_idParameter);
        }
    
        public virtual ObjectResult<sp_helpdiagrams_Result> sp_helpdiagrams(string diagramname, Nullable<int> owner_id)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_helpdiagrams_Result>("sp_helpdiagrams", diagramnameParameter, owner_idParameter);
        }
    
        public virtual int sp_renamediagram(string diagramname, Nullable<int> owner_id, string new_diagramname)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            var new_diagramnameParameter = new_diagramname != null ?
                new ObjectParameter("new_diagramname", new_diagramname) :
                new ObjectParameter("new_diagramname", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_renamediagram", diagramnameParameter, owner_idParameter, new_diagramnameParameter);
        }
    
        public virtual int sp_upgraddiagrams()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_upgraddiagrams");
        }
    
        public virtual ObjectResult<string> ChangeUserPassword(Nullable<int> prmUserId, string prmPass, Nullable<int> prmModifierUserId)
        {
            var prmUserIdParameter = prmUserId.HasValue ?
                new ObjectParameter("PrmUserId", prmUserId) :
                new ObjectParameter("PrmUserId", typeof(int));
    
            var prmPassParameter = prmPass != null ?
                new ObjectParameter("PrmPass", prmPass) :
                new ObjectParameter("PrmPass", typeof(string));
    
            var prmModifierUserIdParameter = prmModifierUserId.HasValue ?
                new ObjectParameter("PrmModifierUserId", prmModifierUserId) :
                new ObjectParameter("PrmModifierUserId", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<string>("ChangeUserPassword", prmUserIdParameter, prmPassParameter, prmModifierUserIdParameter);
        }
    
        public virtual ObjectResult<string> IsUserAccess(Nullable<int> prmUserID, string prmPass)
        {
            var prmUserIDParameter = prmUserID.HasValue ?
                new ObjectParameter("PrmUserID", prmUserID) :
                new ObjectParameter("PrmUserID", typeof(int));
    
            var prmPassParameter = prmPass != null ?
                new ObjectParameter("PrmPass", prmPass) :
                new ObjectParameter("PrmPass", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<string>("IsUserAccess", prmUserIDParameter, prmPassParameter);
        }
    }
}
