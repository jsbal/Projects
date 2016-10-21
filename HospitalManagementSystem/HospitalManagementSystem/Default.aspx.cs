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
    public partial class Default : System.Web.UI.Page
    {
        eLogin objLogin;
        DBConnection objConn;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                objLogin = new eLogin();
                objConn = new DBConnection();
                objLogin.UserName = this.txtUserName.Text;
                objLogin.Pass = this.txtPassword.Value;
                dt = objConn.executeDataTable(objLogin, "spGetLoginInfo");
                if (dt.Rows.Count > 0)
                {
                    if (dt.Rows[0]["MsgId"].ToString() == "1")
                    {
                        Session["UserName"] = this.txtUserName.Text;
                        Response.Redirect("~/Default.aspx");
                    }
                    else
                    {
                        this.lblMsg.Text = "Invalid user name and password.";
                        this.lblMsg.BackColor = System.Drawing.Color.Red;
                    }
                }
            }
            catch (Exception ex)
            {
                this.lblMsg.Text = ex.Message;
            }
        }
    }
}