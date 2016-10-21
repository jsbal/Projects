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
    public partial class PatientDetails : System.Web.UI.Page
    {
        ePatientDetails objePatientDetails;
        DBConnection objConn;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
            objePatientDetails = new ePatientDetails();
            objConn = new DBConnection();
            objePatientDetails.Address = txtAddress.Text;
            objePatientDetails.Age = this.txtAge.Text;
            objePatientDetails.City = this.txtCity.Text;
            objePatientDetails.Concession = 0;
            objePatientDetails.DateOfAdmission = txtDateOfAdmission.Text;
            objePatientDetails.DateOfBirth = this.txtDateOfBirth.Text;
            objePatientDetails.DateOfDischarge = this.txtDateOfAdmission.Text;
            objePatientDetails.Gender = txtGender.Text;
            objePatientDetails.Name = txtPatientName.Text;
            objePatientDetails.PatientId = 0;
            objePatientDetails.Referral = txtReferral.Text;
            objePatientDetails.State = txtState.Text;

            dt = objConn.executeDataTable(objePatientDetails, "usp_PatientDetails");
            }
            catch (Exception ex)
            {
                this.lblMsg.Text = ex.Message;
            }
        }
    }
}