using MCQProject;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserPanel_Quiz : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            CommonFields.selectForDropDown(ddlExam);
            subjectDD.Visible = false;
        }

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        string ErrorMsg = "";
        if (ddlExam.SelectedIndex == 0)
        {
            ErrorMsg += "Please Select Exam</br>";
        }
        if (rd1.Checked == false && rd2.Checked == false && rd3.Checked == false)
        {
            ErrorMsg += "Please Select Number of MCQ</br>";

        }
        if (ErrorMsg.ToString().Trim() != "")
        {
            msgDanger.InnerHtml = ErrorMsg;
            blockDanger.Visible = true;
            return;
        }
        if (Session["TestKey"] != null)
        {
            Session.Clear();
        }
        Session["TestKey"] = DateTime.Now ;
        Session["ExamID"] = ddlExam.SelectedValue;
        Session["SubjectID"] =ddlSubject.SelectedValue;
        Session["ExamName"] = ddlExam.SelectedItem;
        Session["SubjectName"] = ddlSubject.SelectedItem;
        if (rd1.Checked== true)
        {
            Session["Value"] = rd1.Value;
            Session["Time"] = 30;
        }
        else if (rd2.Checked == true)
        {
            Session["Value"] = rd2.Value;
            Session["Time"] = 60;


        }else if(rd3.Checked == true)
        {
            Session["Value"] = rd3.Value;
            Session["Time"] = 120;
        }

        Response.Redirect("~/UserPanel/Test.aspx");
    }
    protected void ddlExam_SelectedIndexChanged(object sender, EventArgs e)
    {
        CommonFields.selectByExamCategoryID(ddlSubject, ddlExam.SelectedValue);
        ddlSubject.Items.RemoveAt(0);
        ddlSubject.Items.Insert(0, new ListItem("All","0"));
        subjectDD.Visible = true;
    }
}