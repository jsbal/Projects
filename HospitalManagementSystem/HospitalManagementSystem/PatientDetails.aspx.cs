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
    public partial class PatientDetails : System.Web.UI.Page
    {
        DBConnection objConn;
        ePatientDetails objPD;
        DataTable dt;
        DataSet ds;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                objConn = new DBConnection();
                objPD = new ePatientDetails();
                dt = new DataTable();
                ds = new DataSet();
                objPD.Aflag = 2;
                ds = objConn.executeDataset(objPD, "Patient");
                dt = ds.Tables[0];
                if (dt.Rows.Count > 0)
                {

                    dt = ds.Tables[0];
                    ddlState.DataSource = dt;
                    ddlState.DataValueField = "StateId";
                    ddlState.DataTextField = "StateName";
                    ddlState.DataBind();
                    ddlState.Items.Insert(0, new ListItem("---Select---", "-1"));

                    dt = ds.Tables[1];
                    ddlCity.DataSource = dt;
                    ddlCity.DataValueField = "CityId";
                   ddlCity.DataTextField = "CityName";
                    ddlCity.DataBind();
                    ddlCity.Items.Insert(0, new ListItem("---Select---", "-1"));
                }
            }
        }



        protected void btnSave_Click(object sender, EventArgs e)
        {
            objConn = new DBConnection();
            objPD = new ePatientDetails();
            dt = new DataTable();

            objPD.Name = txtPatientName.Text;
            objPD.Age = Convert.ToDecimal(ViewState["Age"]);
            objPD.Address = txtAddress.Text;
            objPD.DateOfBirth = txtDateOfBirth.Text;
            objPD.Gender = ddlGender.SelectedValue;
            objPD.State = Convert.ToInt32(ddlState.SelectedValue);
            objPD.City = Convert.ToInt32(ddlCity.SelectedValue);
            objPD.Referral = txtReferral.Text;
            objPD.DateOfAdmission = txtDateOfAdmission.Text;

            objPD.Aflag = 1;
            dt = objConn.executeDataTable(objPD, "Patient");
            btnSave.Text = "Done";

        }
    }
}