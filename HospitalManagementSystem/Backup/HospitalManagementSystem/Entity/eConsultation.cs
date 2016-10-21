using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HospitalManagementSystem.Entity
{
    public class eConsultation
    {
        public int ConsId { set; get; }
        public int DrId { set; get; }
        public int PatientId { set; get; }
        public int BillId { set; get; }
        public string Diagnosis { set; get; }
        public string DateOfConsult { set; get; }
        public string DrComments { set; get; }
	
    }
}