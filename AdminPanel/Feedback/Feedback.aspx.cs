using MCQProject;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPanel_Feedback_Feedback : System.Web.UI.Page
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
    protected void gvFeedbackList_RowCommand(object sender, GridViewCommandEventArgs e)
    {

    }
    private void fillGridView()
    {
       FeedbackBAL balFeedback = new FeedbackBAL();
        DataTable dtFeedback = new DataTable();
        dtFeedback = balFeedback.selectAll();
        gvFeedbackList.DataSource = dtFeedback;
        gvFeedbackList.DataBind();
        if (!(dtFeedback != null && dtFeedback.Rows.Count > 0))
        {
            msgDanger.InnerText = "No Data Available";
            blockDanger.Visible = true;
        }
        if (balFeedback.Message != null && balFeedback.Message != "")
        {
            msgDanger.InnerText = balFeedback.Message;
            blockDanger.Visible = true;
        }


    }
}