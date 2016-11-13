using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using HospitalManagementSystem.Entity;
using System.Configuration;


namespace HospitalManagementSystem
{
    public partial class consultation : System.Web.UI.Page
    {
        DBConnection objConn;
        eConsultation objCL;
        DataTable dt;
        DataSet ds;

        protected void Page_Load(object sender, EventArgs e)
    {  
        {
            if (!IsPostBack)
            {
                objConn = new DBConnection();
                objCL = new eConsultation();
                dt = new DataTable();
                ds = new DataSet();
                objCL.Aflag = 2;
                ds = objConn.executeDataset(objCL, "consultation");
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
                    ddlDocterName.DataSource = dt;
                    ddlDocterName.DataValueField = "DoctorId";
                    ddlDocterName.DataTextField = "Name";
                    ddlDocterName.DataBind();
                    ddlDocterName.Items.Insert(0, new ListItem("---Select---", "-1"));
                }

            }
        }
                

} 

        protected void btnSave_Click(object sender, EventArgs e)
        {
            objConn = new DBConnection();
            objCL = new eConsultation();
            dt = new DataTable();
            ds= new DataSet();



            objCL.PatientId = Convert.ToInt32(ddlPatientName.SelectedValue);
            objCL.DrId =Convert.ToInt32 (ddlDocterName.SelectedValue);
            objCL.Diagnosis = txtDiagnosis.Text;
            objCL.DateOfConsult = txtDateOfConsultation.Text;
            objCL.DrComments = txtDoctorComments.Text;

            objCL.Aflag = 1;
            ds = objConn.executeDataset(objCL, "consultation");
           
            
    }
    }
}

