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

public partial class AdminPanel_Exams_AddEditExam : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!Page.IsPostBack)
        {

            if (Session["UserID"] != null)
            {
                if (Request.QueryString["ExamID"] != null)
                {
                    lblMode.Text = "Edit";
                    fillData(Request.QueryString["ExamID"].ToString().Trim());
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
    protected void btnSave_Click(object sender, EventArgs e)
    {

        String ErrorMessage = "";

        if (txtExamName.Text.ToString().Trim() == "")
            ErrorMessage += "- Enter Exam Name </br>";
        if (txtExamDescription.Text.ToString().Trim() == "")
            ErrorMessage += "- Enter Description </br>";
        if(ErrorMessage!="")
        {
            msgDanger.Text = ErrorMessage;
            blockDanger.Visible = true;
            return;
        }


        ExamENT entExam = new ExamENT();
        ExamBAL balExam = new ExamBAL();


        SqlInt32 ExamCategoryID = 0;
        SqlString ExamName = SqlString.Null;
        SqlString Description = SqlString.Null;
        SqlString Remarks = SqlString.Null;
        if (txtExamName.Text.ToString().Trim() != "")
           entExam.CategoryName = txtExamName.Text.ToString().Trim();
        if (txtExamDescription.Text.ToString().Trim() != "")
           entExam.Description = txtExamDescription.Text.ToString().Trim();
         
        entExam.Remarks = txtRemarks.Text.ToString().Trim();

        entExam.IsActive = cbVisible.Checked;

         if (Request.QueryString["ExamID"] != null)
         {
             SqlInt32 ExamID = Convert.ToInt32(Request.QueryString["ExamID"]);
             entExam.CategoryID = ExamID;
             if (balExam.Update(entExam))
             {
                 clearFields();
                 Response.Redirect("~/AdminPanel/Exams/ExamList.aspx");

             }
             else
             {
                 //message
                 msgDanger.Text = balExam.Message;
                 blockDanger.Visible = true;
             }
         }
         else
         {
             if (balExam.Insert(entExam))
             {
                 clearFields();
                 msgSuccess.Text = "Data Inserted Successfully.";
                 blockSuccess.Visible = true;
                 //Message
             }
             else
             {
                 //Message
                 msgDanger.Text = balExam.Message;
                 blockDanger.Visible = true;
             }
         }
           
    }

    private void clearFields()
    {
        txtExamDescription.Text = "";
        txtExamName.Text = "";
        txtRemarks.Text = "";
        txtExamName.Focus();
    }
    private void fillData(string ID)
    {
        ExamBAL balExam = new ExamBAL();
        ExamENT entExam = new ExamENT();

        entExam = balExam.selectByPK(ID);

        if (balExam.Message != null && balExam.Message != "")
        {
            //Message
            msgDanger.Text = balExam.Message;
            blockDanger.Visible = true;
            return;
        }
       if (entExam.CategoryName  != null && entExam.CategoryName != "")
           txtExamName.Text = entExam.CategoryName .ToString().Trim();
       if (entExam.Description !=null && entExam.Description != "")
           txtExamDescription.Text = entExam.Description.ToString().Trim();
       if (entExam.Remarks != null && entExam.Remarks !="")
           txtRemarks.Text = entExam.Remarks.ToString().Trim();
       if (entExam.IsActive.Equals(true))
           cbVisible.Checked = true;
       else
           cbVisible.Checked = false;

       
                      
    }
}