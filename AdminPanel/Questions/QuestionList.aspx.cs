using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPanel_Questions_QuestionList : System.Web.UI.Page
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
        QuestionBAL balQuestion = new QuestionBAL();
        DataTable dtQuestion = new DataTable();

        dtQuestion = balQuestion.selectAll();
        gvQuestionList.DataSource = dtQuestion;
        gvQuestionList.DataBind();
        if (!(dtQuestion != null && dtQuestion.Rows.Count > 0))
        {
            msgDanger.InnerText = "No Data Available";
            blockDanger.Visible = true;
        }
        if (balQuestion.Message != null && balQuestion.Message != "")
        {
            msgDanger.InnerText = balQuestion.Message;
            blockDanger.Visible = true;
        }

    }
    protected void gvQuestionList_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "deleteRecord")
        {
            if (e.CommandArgument.ToString() != "")
            {
                QuestionBAL balQuestion = new QuestionBAL();
                if (balQuestion.Delete(e.CommandArgument.ToString().Trim()))
                {
                    fillGridView();
                    msgSuccess.InnerText = "Deleted Succefully";
                    blockSuccess.Visible = true;
                }
                else
                {
                    //message
                    msgDanger.InnerText = balQuestion.Message;
                    blockDanger.Visible = true;
                }
            }
        }
    }
}