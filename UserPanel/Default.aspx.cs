using MCQProject;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserPanel_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        fillData();
    }

    private void fillData()
    {
        ExamBAL balExam = new ExamBAL();
        DataTable dt = new DataTable();
        dt = balExam.selectForDropDown();
        rpSubjects.DataSource = dt;
        rpSubjects.DataBind();
    }
}