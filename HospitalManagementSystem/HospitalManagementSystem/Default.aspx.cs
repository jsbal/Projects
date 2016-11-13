using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HospitalManagementSystem.BAL;
using HospitalManagementSystem.Entity;
using System.Data.SqlClient;

namespace HospitalManagementSystem

{
    public partial class Default : System.Web.UI.Page
    {
        DBConnection objdb;
        SqlDataReader objDR;
        edefault objdeflt;


        protected void btnLogin_Click(object sender, EventArgs e)
        {
           try
            {
                objdb = new DBConnection();
                objdeflt = new edefault();

                objdeflt.Pass = txtPassword.Value;
                objdeflt.UserName = txtUserName.Text;


                objDR = objdb.executeReader(objdeflt, "usp_default");


                if (objDR.HasRows)
                {
                    objDR.Read();
                    if (txtPassword.Value == objDR["Pass"].ToString())
                    {
                        Session["UserId"] = objDR["UserId"].ToString();
                        Response.Redirect("doctors.aspx");
                    }
                    else
                    {
                        lblMsg.Text = "Invaild UserName And Password";
                    }
                }
                else
                {
                    lblMsg.Text = "Invaild UserName And Password";
                }

            }
            catch (Exception ex)
            {
                errorLog objErr=new errorLog();
                objErr.fn_logErr(ex);
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
                    
        }
       
    
    }
    }
