using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HospitalManagementSystem.Entity
{
    public class eStaff
    {
        public string Address { get; set; }
        public String Name { get; set; }
        public String DateOfBirth { get; set; }
        public String State { get; set; }
        public String City { get; set; }
        public String MobileNo { get; set; }
        public String DateJoinHospital { get; set; }
        public string Gender { get; set; }
        public string Specialisation { get; set; }
        public string Email { get; set; }
        public string Status { get; set; }
        public int AFlag { get; set; }
    }
}