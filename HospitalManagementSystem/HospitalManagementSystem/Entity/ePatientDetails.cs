using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HospitalManagementSystem.Entity
{
    public class ePatientDetails
    {
       public string Name{get; set;}
        public decimal Age{get; set;}
        public string  Address{get; set;}
        public string  Gender{get; set;}
        public int State { get; set; }		
        public int      City	{get; set;}	
        public string     Referral{get; set;}
         public string   DateOfAdmission{get ; set;}
        public string DateOfBirth {get; set;}
        public int Aflag { get; set; }
                       
    }
}