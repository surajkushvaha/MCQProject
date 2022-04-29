using MCQProject;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlTypes;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPanel_Questions_AddEditQuestion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["UserID"] != null)
            {
                fillDropDown();
                if (Request.QueryString["QuestionID"] != null)
                {
                    lblMode.Text = "Edit";
                    fillData(Request.QueryString["QuestionID"].ToString().Trim());
                }
                else
                {
                    lblMode.Text = "Add New";
                }
            }
            else
            {
                Response.Redirect("~/AdminPanel/Login.aspx", true);
            }
            
        }
    }

    #region ddlExam_SelectedIndexChanged
    protected void ddlExam_SelectedIndexChanged(object sender, EventArgs e)
    {
        CommonFields.selectByExamCategoryID(ddlSubject, ddlExam.SelectedValue);
    }
    #endregion ddlExam_SelectedIndexChanged

    #region fillData
    private void fillData(string ID)
    {
        QuestionBAL balQuestion = new QuestionBAL();
        QuestionENT entQuestion = new QuestionENT();
        entQuestion = balQuestion.selectByPK(ID);
        if (balQuestion.Message != null && balQuestion.Message != "")
        {
            //Message
            msgDanger.InnerText = balQuestion.Message;
            blockDanger.Visible = true;
            return;
        }
        if (entQuestion.ExamTopicID.ToString().Trim() != "")
        {
            SubjectBAL balSubject = new SubjectBAL();
            ExamBAL balExam = new ExamBAL();
            DataTable dtSub = new DataTable();
            DataTable dtExam = new DataTable();
            dtSub = balSubject.SelectByExamTopicID(entQuestion.ExamTopicID.ToString().Trim());
            string SubID = dtSub.Rows[0].ItemArray[0].ToString().Trim();
            dtExam = balExam.SelectByExamSubjectID(SubID);
            string ExamID = dtExam.Columns[0].ToString().Trim();
            //Exam
            CommonFields.selectForDropDown(ddlExam);
            CommonFields.SelectExamCategoryByExamSubjectID(ddlExam, SubID);
            //Subject
            CommonFields.selectByExamCategoryID(ddlSubject, ddlExam.SelectedValue);
            ddlSubject.SelectedValue = SubID;
            //Topic
            CommonFields.selectByExamSubjectID(ddlTopic, SubID);
            ddlTopic.SelectedValue = entQuestion.ExamTopicID.ToString().Trim();

           
        }
        if (entQuestion.Question.ToString().Trim() != "")
            txtQuestion.Text = entQuestion.Question.ToString().Trim();
        if (entQuestion.OptionA.ToString().Trim() != "")
            txtOptionA.Text = entQuestion.OptionA.ToString().Trim();
        if (entQuestion.OptionB.ToString().Trim() != "")
            txtOptionB.Text = entQuestion.OptionB.ToString().Trim();
        if (entQuestion.OptionC.ToString().Trim() != "")
            txtOptionC.Text = entQuestion.OptionC.ToString().Trim();
        if (entQuestion.OptionD.ToString().Trim() != "")
            txtOptionD.Text = entQuestion.OptionD.ToString().Trim();
        if (entQuestion.OptionE.ToString().Trim() != "")
            txtOptionE.Text = entQuestion.OptionE.ToString().Trim();
        if (entQuestion.TrueOption.ToString().Trim() != "")
            ddlOption.SelectedValue = entQuestion.TrueOption.ToString().Trim();
        if (entQuestion.Solution.ToString().Trim() != "")
            txtSolution.Text = entQuestion.Solution.ToString().Trim();
        

        if (entQuestion.Remarks.ToString().Trim() != "")
            txtRemarks.Text = entQuestion.Remarks.ToString().Trim();
        if (entQuestion.IsActive.Equals(true))
            cbVisible.Checked = true;
        else
            cbVisible.Checked = false;


    }
    #endregion fillData

    #region btnSave_Click
    protected void btnSave_Click(object sender, EventArgs e)
    {
        String ErrorMessage = "";
        if (ddlExam.SelectedIndex == 0)
            ErrorMessage += "- Select a Exam</br>";
        if (ddlSubject.SelectedIndex == 0)
            ErrorMessage += "- Select a Subject</br>";
        if(ddlTopic.SelectedIndex==0)
            ErrorMessage += "- Select a Topic</br>";
        if (ddlOption.SelectedIndex == 0)
            ErrorMessage += "- Select a True Option</br>";
        if (txtOptionA.Text.ToString().Trim() == "" || txtOptionB.Text.ToString().Trim()=="")
            ErrorMessage += "- Option A and B is Coumpolsury to Add </br>";
        if (txtQuestion.Text.ToString().Trim() == "")
            ErrorMessage += "- Enter Question Name </br>";
        if (txtQuestion.Text.ToString().Trim() == "")
            ErrorMessage += "- Enter Question Name </br>";

        
        if (ErrorMessage != "")
        {
            msgDanger.InnerText = ErrorMessage;
            blockDanger.Visible = true;
            return;
        }
        QuestionENT entQuestion = new QuestionENT();
        QuestionBAL balQuestion = new QuestionBAL();


        
        if (ddlTopic.SelectedIndex > 0)
            entQuestion.ExamTopicID = Convert.ToInt32(ddlTopic.SelectedValue);
        if (ddlOption.SelectedIndex > 0)
            entQuestion.TrueOption = Convert.ToChar(ddlOption.SelectedValue);

        if (txtQuestion.Text.ToString().Trim() != "")
            entQuestion.Question = txtQuestion.Text.ToString().Trim();
        if (txtOptionA.Text.ToString().Trim() != "")
            entQuestion.OptionA = txtOptionA.Text.ToString().Trim();
        if (txtOptionB.Text.ToString().Trim() != "")
            entQuestion.OptionB = txtOptionB.Text.ToString().Trim();

        entQuestion.OptionC = txtOptionC.Text.ToString().Trim();
        entQuestion.OptionD = txtOptionD.Text.ToString().Trim();
        entQuestion.OptionE = txtOptionE.Text.ToString().Trim();
        entQuestion.Solution = txtSolution.Text.ToString().Trim();
        entQuestion.Remarks = txtRemarks.Text.ToString().Trim();
        entQuestion.IsActive = cbVisible.Checked;

        if (Request.QueryString["QuestionID"] != null)
        {
            SqlInt32 QuestionID = Convert.ToInt32(Request.QueryString["QuestionID"]);
            entQuestion.QuestionID = QuestionID;
            if (balQuestion.Update(entQuestion))
            {
                clearFields();
                Response.Redirect("~/AdminPanel/Questions/QuestionList.aspx");
            }
            else
            {
                msgDanger.InnerText = balQuestion.Message;
                blockDanger.Visible = true;
            }
        }
        else
        {
            if (balQuestion.Insert(entQuestion))
            {
                clearFields();
                msgSuccess.InnerText = "Data Inserted Successfully.";
                blockSuccess.Visible = true;
            }
            else
            {
                msgDanger.InnerText = balQuestion.Message;
                blockDanger.Visible = true;
            }
        }
    }
    #endregion btnSave_Click

    #region fillDropDown
    private void fillDropDown()
    {
        CommonFields.selectForDropDown(ddlExam);
    }
    #endregion fillDropDown

    #region clearFields
    private void clearFields()
    {
        txtQuestion.Text = "";
        txtOptionA.Text = "";
        txtOptionB.Text = "";
        txtOptionC.Text = "";
        txtOptionD.Text = "";
        txtOptionE.Text = "";
        txtSolution.Text = "";
        txtRemarks.Text = "";
        cbVisible.Checked = false;
        ddlExam.SelectedIndex = 0;
        ddlSubject.SelectedIndex = 0;
        ddlTopic.SelectedIndex = 0;
        ddlOption.SelectedIndex = 0;
    }
    #endregion clearFields


    protected void ddlSubject_SelectedIndexChanged(object sender, EventArgs e)
    {
        CommonFields.selectByExamSubjectID(ddlTopic, ddlSubject.SelectedValue);
    }
}