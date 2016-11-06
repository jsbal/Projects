using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using HospitalManagementSystem.Entity;
using System.Data.SqlClient;

namespace HospitalManagementSystem
{
    public partial class patientWard : System.Web.UI.Page
    {
        DBConnection objConn;
        DataTable dt;
        ePatientWard objPD;



        protected void btnSave_Click(object sender, EventArgs e)
        {
            objConn = new DBConnection();
            dt = new DataTable();
            objPD = new ePatientWard();

            objPD.WardId = Convert.ToInt32(ViewState["PatientName"]);
            objPD.WardNo = txtWardNo.Text;
            objPD.WardName = txtWardName.Text;
            objPD.WardType = txtWardType.Text;
            objPD.NoOfBed = Convert.ToInt32(ViewState["NoOfBedsAvailable"]);
            objPD.BedCharges = Convert.ToInt32(ViewState["PerDayCharges"]);

            dt = objConn.executeDataTable(objPD,  "PatientWard");


        }
    }
    }
