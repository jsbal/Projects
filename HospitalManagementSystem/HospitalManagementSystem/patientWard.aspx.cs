using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HospitalManagementSystem.Entity;
using System.Data;

namespace HospitalManagementSystem
{
    public partial class patientWard : System.Web.UI.Page
    {
        ePatientWard objePatientWard;
        DBConnection objConn;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
            objePatientWard = new ePatientWard();
            objConn = new DBConnection();

                objePatientWard.BedNo=0;
                objePatientWard.DateOfAdmit="";
                objePatientWard.DateOfDisch="";
                objePatientWard.PatientId=0;
                objePatientWard.PWardId=0;
                objePatientWard.Reason=txtWardName.Text;
                objePatientWard.WardId=0;

            dt = objConn.executeDataTable(objePatientWard, "usp_WardPatientDetails");
            }
            catch (Exception ex)
            {
                this.lblMsg.Text = ex.Message;
            }
        }
        }
    }
