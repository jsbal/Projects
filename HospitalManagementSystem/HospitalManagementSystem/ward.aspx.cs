using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HospitalManagementSystem.Entity;
using HospitalManagementSystem.BAL;
using System.Data.SqlClient;
using System.Data;


namespace HospitalManagementSystem
{
    public partial class ward : System.Web.UI.Page
    {
        DBConnection objDB;
        eWard objeW;
        DataTable dt;

        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
            objDB = new DBConnection();
            objeW = new eWard();
            dt=new DataTable();

            objeW.WardNo = txtWardNo.Text;
            objeW.WardName = txtWardName.Text;
            objeW.WardType = txtWardType.Text;
            objeW.BedCharges = txtPerDayCharges.Text;
            objeW.NoOfBed = txtNoOfBeds.Text;

            dt = objDB.executeDataTable(objeW, "usp_Ward");
        }
            catch(Exception ex)
                {
                errorLog objErr=new errorLog();
                objErr.fn_logErr(ex);
            }
    }
}