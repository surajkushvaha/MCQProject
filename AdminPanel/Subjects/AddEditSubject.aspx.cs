using MCQProject;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPanel_Subjects_AddEditSubject : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!Page.IsPostBack)
        {
            fillDropDown();
            if (Request.QueryString["SubjectID"] != null)
            {
                lblMode.Text = "Edit";
                fillData(Request.QueryString["SubjectID"].ToString().Trim());
            }
            else
            {
                lblMode.Text = "Add New";
            }
        }
    }
    private void fillData(string ID)
    {
        SubjectBAL balSubject = new SubjectBAL();
        SubjectENT entSubject = new SubjectENT();
        entSubject = balSubject.selectByPK(ID);
        if (balSubject.Message != null && balSubject.Message != "")
        {
            //Message
            msgDanger.InnerText = balSubject.Message;
            blockDanger.Visible = true;
            return;
        }
        if (entSubject.CategoryID.ToString().Trim() !="")
            ddlExam.SelectedValue = entSubject.CategoryID.ToString().Trim();
        if (entSubject.SubjectName.ToString().Trim() != "")
            txtSubjectName.Text = entSubject.SubjectName.ToString().Trim();
        if (entSubject.Remarks.ToString().Trim() != "")
            txtRemarks.Text = entSubject.Remarks.ToString().Trim();
        if (entSubject.IsActive.Equals(true))
            cbVisible.Checked = true;
        else
            cbVisible.Checked = false;

       
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        String ErrorMessage = "";

        if (txtSubjectName.Text.ToString().Trim() == "")
            ErrorMessage += "- Enter Subject Name </br>";
        if (ddlExam.SelectedIndex == 0)
            ErrorMessage += "- Select a Subject</br>";
        if (ErrorMessage != "")
        {
            msgDanger.InnerText = ErrorMessage;
            blockDanger.Visible = true;
            return;
        }


        SubjectENT entSubject = new SubjectENT();
        SubjectBAL balSubject = new SubjectBAL();


        //SqlInt32 SubjectCategoryID = 0;
        SqlString SubjectName = SqlString.Null;
        SqlString Description = SqlString.Null;
        SqlString Remarks = SqlString.Null;
        if (txtSubjectName.Text.ToString().Trim() != "")
            entSubject.SubjectName = txtSubjectName.Text.ToString().Trim();
        if (ddlExam.SelectedIndex > 0)
            entSubject.CategoryID = Convert.ToInt32(ddlExam.SelectedValue); 

        entSubject.Remarks = txtRemarks.Text.ToString().Trim();

        entSubject.IsActive = cbVisible.Checked;

        if (Request.QueryString["SubjectID"] != null)
        {
            SqlInt32 SubjectID = Convert.ToInt32(Request.QueryString["SubjectID"]);
            entSubject.SubjectID = SubjectID;
            if (balSubject.Update(entSubject))
            {
                clearFields();
                Response.Redirect("~/AdminPanel/Subjects/SubjectList.aspx");

            }
            else
            {
                //message
                msgDanger.InnerText = balSubject.Message;
                blockDanger.Visible = true;
            }
        }
        else
        {
            if (balSubject.Insert(entSubject))
            {
                clearFields();
                msgSuccess.InnerText = "Data Inserted Successfully.";
                blockSuccess.Visible = true;
                //Message
            }
            else
            {
                //Message
                msgDanger.InnerText = balSubject.Message;
                blockDanger.Visible = true;
            }
        }
                
    }
    private void fillDropDown()
    {
        CommonFields.selectForDropDown(ddlExam);
        //if (str)
        //{
        ////msgDanger.InnerText = str;
        ////blockDanger.Visible = true;
        //}
    }
    private void clearFields()
    {
        txtSubjectName.Text = "";
        txtRemarks.Text = "";
        cbVisible.Checked = false;
        ddlExam.SelectedIndex = 0;

    }
}