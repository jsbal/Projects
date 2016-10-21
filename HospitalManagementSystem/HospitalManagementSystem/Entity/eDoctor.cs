using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HospitalManagementSystem.Entity
{
    public class eDoctor
    {
        public int DoctorId { set; get; }
        public string Name { set; get; }
        public string Country { set; get; }
        public string State { set; get; }
        public string City { set; get; }
        public string Address { set; get; }
        public string Photo { set; get; }
        public string EmailAddress { set; get; }
        public string MobileNo { set; get; }
        public string Specialisation { set; get; }
        public string DateOfBirth { set; get; }
        public string DateJoinHospital { set; get; }
        public string Status { set; get; }

    }
}