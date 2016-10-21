using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HospitalManagementSystem.Entity
{
    public class eWard
    {
        public int WardId { set; get; }
        public string WardNo { set; get; }
        public string WardName { set; get; }
        public string WardType { set; get; }
        public int NoOfBed { set; get; }
        public int BedCharges { set; get; }

    }
}