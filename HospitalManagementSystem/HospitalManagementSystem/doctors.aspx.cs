using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using HospitalManagementSystem.Entity;
using HospitalManagementSystem.BAL;
using System.Data.SqlClient;

namespace HospitalManagementSystem
{
    public partial class doctors : System.Web.UI.Page
    {
        DBConnection objdb;
        eDoctors objdoc;
        DataTable dt;

        protected void btnSave_Click(object sender, EventArgs e)
        {
            objdb = new DBConnection();
            objdoc = new eDoctors();
            dt = new DataTable();

            objdoc.Name = txtDoctorName.Text;
            objdoc.Address = txtAddress.Text;
            objdoc.DateOfBirth = txtDateOfBirth.Text;
            objdoc.Gender = txtGender.Text;
            objdoc.State = txtState.Text;
            objdoc.City = txtCity.Text;
            objdoc.EmailAddress = txtEmail.Text;
            objdoc.MobileNo = txtMobileNo.Text;
            objdoc.Specialisation = txtSpecialisation.Text;
            objdoc.DateJoinHospital = txtDateOfJoin.Text;
            objdoc.Status = txtStatus.Text;

            dt = objdb.executeDataTable(objdoc, "usp_Doctors");

            if (dt.Rows.Count>=1)
            {
                lblMsg.Text = dt.Rows[0]["Msg"].ToString();

            }
        }
    }
}