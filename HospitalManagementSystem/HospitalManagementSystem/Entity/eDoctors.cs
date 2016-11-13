using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HospitalManagementSystem.Entity
{
    public class eDoctors
    {
        public string Name { get; set; }
        public string Address { get; set; }
        public string DateOfBirth { get; set; }
        public string Gender { get; set; }
        public string State { get; set; }
        public string City { get; set; }
        public string EmailAddress { get; set; }
        public string MobileNo { get; set; }
        public string Specialisation { get; set; }
        public string DateJoinHospital { get; set; }
        public string Status { get; set; }
        public int AFlag { get; set; }
    }
}