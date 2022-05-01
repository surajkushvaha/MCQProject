using MCQProject;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserPanel_ExamQuestion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Page.Request.QueryString["SubjectID"] != null && Page.Request.QueryString["SubjectID"].ToString().Trim()!="")
            fillData(Page.Request.QueryString["SubjectID"].ToString().Trim());
        else
            Page.Response.Redirect("~/UserPanel/Default.aspx");
        
    }
    private void fillData(string ID)
    {
        SubjectBAL balSubjects = new SubjectBAL();
        ExamBAL balExam= new ExamBAL();
        ExamENT entExam = new ExamENT();
        DataTable dtSubjects = new DataTable();
        DataTable dtExam = new DataTable();
        dtExam  = balExam.SelectByExamSubjectID(ID) ;
        string ExamID = dtExam.Rows[0].ItemArray[0].ToString().Trim();
        entExam = balExam.selectByPK(ExamID);
        string ExamName = dtExam.Rows[0].ItemArray[1].ToString().Trim();
        hExamName.InnerText = entExam.CategoryName;
        pExamDescription.InnerText = entExam.Description;
        dtSubjects = balSubjects.UserSubjectFillUp(ExamID);
        rpSubjects.DataSource = dtSubjects;
        rpSubjects.DataBind();
        if (Page.Request.QueryString["TopicID"] != null && Page.Request.QueryString["TopicID"].ToString().Trim() != "")
        {
            fillQuestion(Page.Request.QueryString["TopicID"].ToString().Trim());
        }
        if (Page.Request.QueryString["TopicID"] != null && Page.Request.QueryString["TopicID"].ToString().Trim() == "")
        {
            Page.Response.Redirect("~/UserPanel/ExamQuestion.aspx?SubjectID="+Request.QueryString["SubjectID"].ToString().Trim());
        }

    }


    protected void rpQuestion_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {

    }
  
    protected void rpSubjects_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        TopicBAL balTopic = new TopicBAL();
        DataTable dtTopic = new DataTable();

        HiddenField hf = (HiddenField)e.Item.FindControl("hf");
        if (hf != null && hf.Value.ToString().Trim() != "")
        {
            dtTopic = balTopic.SelectByExamSubjectID(hf.Value);
            Repeater rpTopic = (Repeater)e.Item.FindControl("rpTopic");
            if (rpTopic != null)
            {
                rpTopic.DataSource = dtTopic;
                rpTopic.DataBind();
            }
        }
    }
    protected void rpTopic_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        QuestionBAL balQuestion = new QuestionBAL();
        DataTable dtQuestion = new DataTable();
        var repeater = (Repeater)sender;
        var parentItem = (RepeaterItem)repeater.NamingContainer;
        HiddenField hf = (HiddenField)e.Item.FindControl("hfTopicID");
        HyperLink hl = (HyperLink)e.Item.FindControl("hlTopic");
        DataRowView parentDataItem =  parentItem.DataItem as DataRowView;
        string SubjectID = parentDataItem.Row.ItemArray[0].ToString().Trim();
        string TopicID = hf.Value;
        hl.NavigateUrl = "~/UserPanel/ExamQuestion.aspx?SubjectID=" + SubjectID + "&TopicID=" + TopicID;

            dtQuestion = balQuestion.UserSelectAllBySubjectID(Page.Request.QueryString["SubjectID"].ToString().Trim());
            if (balQuestion.Message != null && balQuestion.Message.ToString().Trim() != "")
            {
                msgDanger.InnerText = balQuestion.Message;
                blockDanger.Visible = true;
            }else{
                if (dtQuestion != null && dtQuestion.Rows.Count != 0)
                {
                    rpQuestion.DataSource = dtQuestion;
                    rpQuestion.DataBind();
                }
                else
                {
                    msgDanger.InnerText = "As of Now there is no any Question We Add More Question Soon";
                    blockDanger.Visible = true;
                }
            }
      
    }

    protected void fillQuestion(string TopicID)
    {
        QuestionBAL balQuestion = new QuestionBAL();
        DataTable dtQuestion = new DataTable();
        SubjectBAL balSubject = new SubjectBAL();
        DataTable dtSubject = new DataTable();
        dtSubject = balSubject.SelectByExamTopicID(TopicID);
        string SubjectID = dtSubject.Rows[0].ItemArray[0].ToString().Trim();
        dtQuestion = balQuestion.UserSelectAllBySubjectIDTopicID(SubjectID,TopicID);
        if (balQuestion.Message != null && balQuestion.Message.ToString().Trim() != "")
        {
            msgDanger.InnerText = balQuestion.Message;
            blockDanger.Visible = true;
        }
        else
        {
            if (dtQuestion != null && dtQuestion.Rows.Count != 0)
            {
                rpQuestion.DataSource = dtQuestion;
                rpQuestion.DataBind();
                blockDanger.Visible = false;

            }
            else
            {
                rpQuestion.DataSource = dtQuestion;
                rpQuestion.DataBind();
                msgDanger.InnerText = "As of Now there is no any Question We Add More Question Soon";
                blockDanger.Visible = true;
            }
        }
    }
}