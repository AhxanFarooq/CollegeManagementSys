//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CollegeSystem
{
    using System;
    using System.Collections.Generic;
    
    public partial class SUBJECT
    {
        public int sub_id { get; set; }
        public string sub_name { get; set; }
        public string total_mark { get; set; }
        public int class_id { get; set; }
        public int teacher_id { get; set; }
    
        public virtual CLASS CLASS { get; set; }
        public virtual TEACHER TEACHER { get; set; }
    }
}
