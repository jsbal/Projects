using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HospitalManagementSystem.Entity
{
    public class ePatientDetails
    {
        public int PatientId { set; get; }
        public string Name { set; get; }
        public string Age { set; get; }
        public string Address { set; get; }
        public string DateOfBirth { set; get; }
        public string Gender { set; get; }
        public string State { set; get; }
        public string City { set; get; }
        public decimal Concession { set; get; }
        public string Referral { set; get; }
        public string DateOfAdmission { set; get; }
        public string DateOfDischarge { set; get; }

    }
}