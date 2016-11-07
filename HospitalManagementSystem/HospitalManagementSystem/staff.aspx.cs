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
    public partial class staff : System.Web.UI.Page
    {
        DBConnection objdb;
        DataTable dt;
        eStaff objeStff;
        DataSet ds;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                objdb = new DBConnection();
                objeStff = new eStaff();
                dt = new DataTable();
                ds = new DataSet();
                objeStff.AFlag = 2;
                ds = objdb.executeDataset(objeStff, "usp_Staff");

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
            objdb = new DBConnection();
            dt = new DataTable();
            objeStff = new eStaff();

            objeStff.Name = txtStaffName.Text;
            objeStff.Address = txtAddress.Text;
            objeStff.DateOfBirth = txtDateOfBirth.Text;
            objeStff.State = ddlState.SelectedValue;
            objeStff.City = ddlCity.SelectedValue;
            objeStff.MobileNo = txtMobileNo.Text;
            objeStff.Gender = ddlGender.SelectedValue;
            objeStff.Specialisation = txtSpecialisation.Text;
            objeStff.Email = txtEmail.Text;
            objeStff.Status = txtStatus.Text;
            objeStff.DateJoinHospital = txtDateOfJoin.Text;
            objeStff.AFlag = 1;

            dt = objdb.executeDataTable(objeStff, "usp_Staff");

        }

           }
    }
