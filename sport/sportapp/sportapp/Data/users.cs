//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace sportapp.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class users
    {
        public int ID { get; set; }
        public int RoleID { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string Login { get; set; }
        public string Password { get; set; }
        public string Phone { get; set; }
        public string Passport { get; set; }
        public System.DateTime BirthDate { get; set; }
        public Nullable<System.DateTime> LastEntry { get; set; }
        public Nullable<int> TypeID { get; set; }
        public int SexID { get; set; }
    
        public virtual roles roles { get; set; }
        public virtual sex sex { get; set; }
        public virtual type type { get; set; }
    }
}
