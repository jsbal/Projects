using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HospitalManagementSystem.Entity
{
    public class eConsultation
    {
        public int   DrId {get; set;}	
        public int  PatientId{get; set;}
        public String   Diagnosis	{get; set;}
        public String   DateOfConsult{get; set;}
        public String DrComments { get; set; }
        public int Aflag { get; set; }
    }
}