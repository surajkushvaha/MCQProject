using MCQProject;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPanel_Exams_ExamList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        { 
        if (Session["UserID"] != null)
        {
            fillGridView();
        }
        else
        {
            Response.Redirect("~/AdminPanel/Login.aspx", true);
        }
        }
    }
    private void fillGridView()
    {
         ExamBAL balExam = new ExamBAL();
         DataTable dtExam = new DataTable();
         dtExam = balExam.selectAll();
         gvExamList.DataSource = dtExam;
         gvExamList.DataBind();
         if (!(dtExam != null && dtExam.Rows.Count > 0))
         {
             msgDanger.InnerText = "No Data Available";
             blockDanger.Visible = true;
         }
         if(balExam.Message != null && balExam.Message != "")
         {
             msgDanger.InnerText = balExam.Message;
             blockDanger.Visible = true;
         }
            
        
    }
    protected void gvExamList_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "deleteRecord")
        {
            if (e.CommandArgument.ToString() != "")
            {
                ExamBAL balExam = new ExamBAL();
                if (balExam.Delete(e.CommandArgument.ToString().Trim()))
                {
                    fillGridView();
                    msgSuccess.InnerText = "Deleted Succefully";
                    blockSuccess.Visible = true;
                }
                else
                {
                   //message
                    msgDanger.InnerText = balExam.Message;
                    blockDanger.Visible = true;
                }
            }
        }
    }
}