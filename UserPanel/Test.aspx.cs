using MCQProject;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



public partial class UserPanel_Test : System.Web.UI.Page
{
    List<string> optionList = new List<string> { };

    protected void Page_Load(object sender, EventArgs e)
    {
        kt_post.Visible = false;
        btnSubmit.Visible = false;
        if (!Page.IsPostBack)
        {

            if (Session["TestKey"] != null)
            {
                if (Session["Start"] != null)
                {
                    btnConfirm.Visible = false;
                    fillQuestions();
                }
                if(Session["Test"]==null)
                { Session["Test"] = DateTime.Now;}
                    showConfirmationBox(); 
            }
            else
            {
                Page.Response.Redirect("~/UserPanel/Quiz.aspx");
            }
        }
    }

    private void showConfirmationBox()
    {

        if(Session["Test"] != null){
            lblExam.Text = Session["ExamName"].ToString().Trim() + "("+ Session["SubjectName"].ToString().Trim()+")";
            lblMark.Text = Session["Value"].ToString().Trim();
            lblTiming.Text = Session["Time"].ToString().Trim() + "MIN";
        }
    }
    protected void rpQuestion_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        HiddenField hf = (HiddenField)e.Item.FindControl("hfID");
        RadioButtonList rbl = (RadioButtonList)e.Item.FindControl("options");
        QuestionBAL balQue = new QuestionBAL();
        QuestionENT entQue = new QuestionENT();
        entQue = balQue.selectByPK(hf.Value);
        DataTable dt = new DataTable();
        DataColumn dc = new DataColumn("OptionValue", typeof(String));
        dt.Columns.Add(dc);
        dc = new DataColumn("Option", typeof(String));
        dt.Columns.Add(dc);
        if (entQue.OptionA != null && entQue.OptionA.ToString().Trim() != "")
        {
            DataRow dr = dt.NewRow();
            dr[0] = "A";
            dr[1] = entQue.OptionA.ToString();
            dt.Rows.InsertAt(dr,0);
        }
        if (entQue.OptionB != null && entQue.OptionB.ToString().Trim() != "")
        {
            DataRow dr = dt.NewRow();
            dr[0] = "B";
            dr[1] = entQue.OptionB.ToString();
            dt.Rows.InsertAt(dr, 1);
        }
        if (entQue.OptionC != null && entQue.OptionC.ToString().Trim() != "")
        {
            DataRow dr = dt.NewRow();
            dr[0] = "C";
            dr[1] = entQue.OptionC.ToString();
            dt.Rows.InsertAt(dr, 2);
        }
        if (entQue.OptionD != null && entQue.OptionD.ToString().Trim() != "")
        {
            DataRow dr = dt.NewRow();
            dr[0] = "D";
            dr[1] = entQue.OptionD.ToString();
            dt.Rows.InsertAt(dr, 3);
        }
        if (entQue.OptionE != null && entQue.OptionE.ToString().Trim() != "")
        {
            DataRow dr = dt.NewRow();
            dr[0] = "E";
            dr[1] = entQue.OptionE.ToString();
            dt.Rows.InsertAt(dr, 4);
        }
        if (entQue.TrueOption != null && entQue.TrueOption.ToString().Trim() != "")
        {
            optionList.Add(entQue.TrueOption.ToString());
        }

        rbl.DataTextField = "Option";
        rbl.DataValueField = "OptionValue";
        rbl.DataSource = dt;
        rbl.DataBind();
    }
    protected void btnConfirm_Click(object sender, EventArgs e)
    {
        Session["Start"] = "Ok";
        btnConfirm.Visible = false;
        
        fillQuestions();
    }

    private void fillQuestions()
    {
        kt_post.Visible = true;
        btnSubmit.Visible = true;
        string SubID = Session["SubjectID"].ToString().Trim();
        string ExamID = Session["ExamID"].ToString().Trim();
        string NoMCQ = Session["Value"].ToString().Trim();
        QuestionBAL balQuestion = new QuestionBAL();
        DataTable dtQuestion = new DataTable();
        if (SubID == "0")
        {
            dtQuestion = balQuestion.TestUserSelectAllByExamID(ExamID, NoMCQ);
           
        }
        else
        {
            dtQuestion = balQuestion.TestUserSelectAllBySubjectID(SubID, ExamID, NoMCQ);
        }
        rpQuestion.DataSource = dtQuestion;
        rpQuestion.DataBind();
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
            }
            else
            {
                msgDanger.InnerText = "As of Now there is no any Question We Add More Question Soon";
                blockDanger.Visible = true;
                btnSubmit.Visible = false;
            }
        }
      
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        foreach (RepeaterItem item in rpQuestion.Items)
        {
            // Checking the item is a data item
            if (item.ItemType == ListItemType.Item || item.ItemType == ListItemType.AlternatingItem)
            {
                var rdbList = item.FindControl("options") as RadioButtonList;
                // Get the selected value
                string selected = rdbList.SelectedValue;
            }
        }
    }

  
}