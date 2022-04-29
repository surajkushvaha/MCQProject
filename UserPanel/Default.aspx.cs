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
        DataTable dtExam = new DataTable();
        dtExam = balExam.UserExamFillUp();
        rpExam.DataSource = dtExam;
        rpExam.DataBind();

    }


    protected void rpExam_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        SubjectBAL balSubject = new SubjectBAL();
        ExamBAL balExam = new ExamBAL();
        DataTable dtSubject = new DataTable();
        DataTable dtExam = new DataTable();

        HiddenField hf = (HiddenField)e.Item.FindControl("hf");
        if (hf != null && hf.Value.ToString().Trim() != "")
        {
            dtExam = balExam.UserGetNoOfMCQ(hf.Value);
            Label lbl = (Label)e.Item.FindControl("lblCountMCQ");
            lbl.Text = dtExam.Rows[0].ItemArray[0].ToString();
            dtSubject = balSubject.UserSubjectFillUp(hf.Value);
            Repeater rpSubject = (Repeater)e.Item.FindControl("rpSubject");
            if (rpSubject != null)
            {
                rpSubject.DataSource = dtSubject;
                rpSubject.DataBind();
            }
        }
    }
    
}