using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HospitalManagementSystem.Entity
{
    public class ePatientWard
    {
        public int PWardId { set; get; }
        public int WardId { set; get; }
        public int PatientId { set; get; }
        public int BedNo { set; get; }
        public string DateOfAdmit { set; get; }
        public string DateOfDisch { set; get; }
        public string Reason { set; get; }

    }
}