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
        ePatientWard objPW;
        DataSet ds;
         protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                objConn = new DBConnection();
                objPW = new ePatientWard();
                dt = new DataTable();
                ds = new DataSet();
                objPW.Aflag = 2;
                ds = objConn.executeDataset(objPW, "[PatientWard");
                dt = ds.Tables[0];
                if (dt.Rows.Count > 0)
                {

                    dt = ds.Tables[0];
                    ddlPatientName.DataSource = dt;
                    ddlPatientName.DataValueField = "PatientId";
                    ddlPatientName.DataTextField = "Name";
                    ddlPatientName.DataBind();
                    ddlPatientName.Items.Insert(0, new ListItem("---Select---", "-1"));

                    dt = ds.Tables[1];
                    ddlWardNo.DataSource = dt;
                    ddlWardNo.DataValueField = "WardId";
                   ddlWardNo.DataTextField = "WardName";
                    ddlWardNo.DataBind();
                    ddlWardNo.Items.Insert(0, new ListItem("---Select---", "-1"));
       



        protected void btnSave_Click(object sender, EventArgs e)
        {
            objConn = new DBConnection();
            dt = new DataTable();
            objPW = new ePatientWard();

            objPW.PatientId = Convert.ToInt32(ddlPatientName.SelectedValue);
            objPW.WardId = Convert.ToInt32(ddlWardNo.SelectedValue);
            objPW.BedNo = ddlWardNo.SelectedValue;
           
              objPW.Aflag = 1;
            dt = objConn.executeDataTable(objPW,  "PatientWard");


        }
    }
    }
