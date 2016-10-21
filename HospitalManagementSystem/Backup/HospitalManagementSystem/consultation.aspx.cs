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
    public partial class consultation : System.Web.UI.Page
    {
        eConsultation objeConsultation;
        DBConnection objConn;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            
            try
            {
            objeConsultation = new eConsultation();
            objConn = new DBConnection();
            objeConsultation.BillId = 0;
            objeConsultation.ConsId = 0;
            objeConsultation.DateOfConsult = txtDateOfConsultation.Text;
            objeConsultation.Diagnosis = txtDiagnosis.Text;
            objeConsultation.DrComments = txtDoctorComments.Text;
            objeConsultation.DrId = 0;
            dt = objConn.executeDataTable(objeConsultation, "usp_ConsultationDetails");
            }
            catch (Exception ex)
            {
                this.lblMsg.Text = ex.Message;
            }
        }
    }
}