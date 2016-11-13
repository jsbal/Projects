using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HospitalManagementSystem.Entity
{
    public class ePatientWard
    {
       public int  WardId{get; set;}
       public int PatientId { get; set; }
       public String BedNo { get; set; }
       public int Aflag { get; set; }

    }
}