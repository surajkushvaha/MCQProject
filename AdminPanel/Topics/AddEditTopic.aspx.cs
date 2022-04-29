using MCQProject;
using System;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPanel_Topics_AddEditTopic : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["UserID"] != null)
            {
                fillDropDown();
                if (Request.QueryString["TopicID"] != null)
                {
                    lblMode.Text = "Edit";
                    fillData(Request.QueryString["TopicID"].ToString().Trim());
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
        TopicBAL balTopic = new TopicBAL();
        TopicENT entTopic = new TopicENT();
        entTopic = balTopic.selectByPK(ID);
        if (balTopic.Message != null && balTopic.Message != "")
        {
            //Message
            msgDanger.InnerText = balTopic.Message;
            blockDanger.Visible = true;
            return;
        }
        if (entTopic.SubjectID.ToString().Trim() != "")
        {
            CommonFields.SelectExamCategoryByExamSubjectID(ddlExam, entTopic.SubjectID.ToString().Trim());
            CommonFields.selectByExamCategoryID(ddlSubject, ddlExam.SelectedValue);
            ddlSubject.SelectedValue = entTopic.SubjectID.ToString().Trim();
        }
        if (entTopic.TopicName.ToString().Trim() != "")
            txtTopicName.Text = entTopic.TopicName.ToString().Trim();
        if (entTopic.Remarks.ToString().Trim() != "")
            txtRemarks.Text = entTopic.Remarks.ToString().Trim();
        if (entTopic.IsActive.Equals(true))
            cbVisible.Checked = true;
        else
            cbVisible.Checked = false;


    }
    #endregion fillData

    #region btnSave_Click
    protected void btnSave_Click(object sender, EventArgs e)
    {
        String ErrorMessage = "";

        if (txtTopicName.Text.ToString().Trim() == "")
            ErrorMessage += "- Enter Topic Name </br>";
        if (ddlExam.SelectedIndex == 0)
            ErrorMessage += "- Select a Exam</br>";
        if (ddlSubject.SelectedIndex == 0)
            ErrorMessage += "- Select a Subject</br>";
        if (ErrorMessage != "")
        {
            msgDanger.InnerText = ErrorMessage;
            blockDanger.Visible = true;
            return;
        }
        TopicENT entTopic = new TopicENT();
        TopicBAL balTopic = new TopicBAL();


        if (txtTopicName.Text.ToString().Trim() != "")
            entTopic.TopicName = txtTopicName.Text.ToString().Trim();
        if (ddlSubject.SelectedIndex > 0)
            entTopic.SubjectID = Convert.ToInt32(ddlSubject.SelectedValue);
        entTopic.Remarks = txtRemarks.Text.ToString().Trim();
        entTopic.IsActive = cbVisible.Checked;

        if (Request.QueryString["TopicID"] != null)
        {
            SqlInt32 TopicID = Convert.ToInt32(Request.QueryString["TopicID"]);
            entTopic.TopicID = TopicID;
            if (balTopic.Update(entTopic))
            {
                clearFields();
                Response.Redirect("~/AdminPanel/Topics/TopicList.aspx");
            }
            else
            {
                msgDanger.InnerText = balTopic.Message;
                blockDanger.Visible = true;
            }
        }
        else
        {
            if (balTopic.Insert(entTopic))
            {
                clearFields();
                msgSuccess.InnerText = "Data Inserted Successfully.";
                blockSuccess.Visible = true;
            }
            else
            {
                msgDanger.InnerText = balTopic.Message;
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
        txtTopicName.Text = "";
        txtRemarks.Text = "";
        cbVisible.Checked = false;
        ddlExam.SelectedIndex = 0;
        ddlSubject.SelectedIndex = 0;
    }
    #endregion clearFields

}