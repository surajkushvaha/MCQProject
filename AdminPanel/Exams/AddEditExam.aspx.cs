using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPanel_Exams_AddEditExam : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Request.QueryString["ExamID"] != null)
            {
                lblMode.Text = "Edit";

            }
            else
            {
                lblMode.Text = "Add New";

            }
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {

    }
}