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
    public partial class doctors : System.Web.UI.Page
    {
        eDoctor objeDoctor;
        DBConnection objConn;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                objeDoctor = new eDoctor();
                objConn = new DBConnection();
                objeDoctor.Address = this.txtAddress.Text;
                objeDoctor.City = this.txtCity.Text;
                objeDoctor.Country = "";
                objeDoctor.DateJoinHospital = this.txtDateOfJoin.Text;
                objeDoctor.DateOfBirth = this.txtDateOfBirth.Text;
                objeDoctor.DoctorId = 0;
                objeDoctor.EmailAddress = this.txtEmail.Text;
                objeDoctor.MobileNo = this.txtMobileNo.Text;
                objeDoctor.Name = this.txtDoctorName.Text;
                objeDoctor.Photo = "";
                objeDoctor.Specialisation = this.txtSpecialisation.Text;
                objeDoctor.State = this.txtState.Text;
                objeDoctor.Status = this.txtStatus.Text;
                dt = objConn.executeDataTable(objeDoctor, "usp_DoctorDetails");
            }
            catch (Exception ex)
            {
                this.lblMsg.Text = ex.Message;
            }
        }
    }
}