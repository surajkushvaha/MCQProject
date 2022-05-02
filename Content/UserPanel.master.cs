using MCQProject;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Content_UserPanel : System.Web.UI.MasterPage
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
        DataTable dtSubject = new DataTable();

        HiddenField hf = (HiddenField)e.Item.FindControl("hf");
        if (hf != null && hf.Value.ToString().Trim() != "")
        {
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
