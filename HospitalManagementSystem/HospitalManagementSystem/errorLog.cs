using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HospitalManagementSystem
{
    public class errorLog
    {
        public void fn_logErr(Exception ex)
        {
            System.IO.File.WriteAllText("D:\\github\\Projects\\HospitalManagementSystem\\HospitalManagementSystem\\ErrorLog\\ErrLog.txt", ex.Message);
        }

    }
}