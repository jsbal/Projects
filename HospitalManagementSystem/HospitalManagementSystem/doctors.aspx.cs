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
        DataSet ds;
          

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                objdb = new DBConnection();
                objdoc = new eDoctors();
                dt = new DataTable();
                ds = new DataSet();
                objdoc.AFlag = 2;
                ds = objdb.executeDataset(objdoc, "usp_Doctors");

                ddlGender.DataSource = ds.Tables[0];
                ddlGender.DataValueField = "GenderId";
                ddlGender.DataTextField = "GenderName";
                ddlGender.DataBind();

                ddlState.DataSource = ds.Tables[1];
                ddlState.DataValueField = "StateId";
                ddlState.DataTextField = "StateName";
                ddlState.DataBind();

                ddlCity.DataSource = ds.Tables[2];
                ddlCity.DataValueField = "CityId";
                ddlCity.DataTextField = "CityName";
                ddlCity.DataBind();


            }
        
       }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
            objdb = new DBConnection();
            objdoc = new eDoctors();
            dt = new DataTable();

            objdoc.Name = txtDoctorName.Text;
            objdoc.Address = txtAddress.Text;
            objdoc.DateOfBirth = txtDateOfBirth.Text;
            objdoc.Gender =ddlGender.SelectedValue;
            objdoc.State = ddlState.SelectedValue;
            objdoc.City = ddlCity.SelectedValue;
            objdoc.EmailAddress = txtEmail.Text;
            objdoc.MobileNo = txtMobileNo.Text;
            objdoc.Specialisation = txtSpecialisation.Text;
            objdoc.DateJoinHospital =txtDateOfJoin.Text;
            objdoc.Status = txtStatus.Text;
            objdoc.AFlag = 1;

            dt = objdb.executeDataTable(objdoc, "usp_Doctors");

            if (dt.Rows.Count>=1)
            {
                lblMsg.Text = dt.Rows[0]["Msg"].ToString();

            }
                catch(Exception ex)
                {
                errorLog objErr=new errorLog();
                objErr.fn_logErr(ex);
            }
        }

        protected void ddlGender_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}