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
    public partial class staff : System.Web.UI.Page
    {
        eStaff objeStaff;
        DBConnection objConn;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
            objeStaff = new eStaff();
            objConn = new DBConnection();
            objeStaff.Address=this.txtAddress.Text;
            objeStaff.City=this.txtCity.Text;
            objeStaff.Country="";
            objeStaff.DateJoinHospital=this.txtDateOfJoin.Text;
            objeStaff.DateOfBirth=this.txtDateOfBirth.Text;
            objeStaff.MobileNo=this.txtMobileNo.Text;
                objeStaff.Name=this.txtStaffName.Text;
                objeStaff.Photo="";
                objeStaff.StaffId=0;
                objeStaff.StaffType="";
                objeStaff.State=this.txtState.Text;
                objeStaff.Status="";
            dt = objConn.executeDataTable(objeStaff, "usp_StaffDetails");
            }
            catch (Exception ex)
            {
                this.lblMsg.Text = ex.Message;
            }
        }
        }
    }
