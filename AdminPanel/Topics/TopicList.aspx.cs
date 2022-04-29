using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPanel_Topics_TopicList : System.Web.UI.Page
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
    protected void gvTopicList_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "deleteRecord")
        {
            if (e.CommandArgument.ToString() != "")
            {
                TopicBAL balTopic = new TopicBAL();
                if (balTopic.Delete(e.CommandArgument.ToString().Trim()))
                {
                    fillGridView();
                    msgSuccess.InnerText = "Deleted Succefully";
                    blockSuccess.Visible = true;
                }
                else
                {
                    //message
                    msgDanger.InnerText = balTopic.Message;
                    blockDanger.Visible = true;
                }
            }
        }
    }

    private void fillGridView()
    {
        TopicBAL balTopic = new TopicBAL();
        DataTable dtTopic = new DataTable();

        dtTopic = balTopic.selectAll();
        gvTopicList.DataSource = dtTopic;
        gvTopicList.DataBind();
        if (!(dtTopic != null && dtTopic.Rows.Count > 0))
        {
            msgDanger.InnerText = "No Data Available";
            blockDanger.Visible = true;
        }
        if (balTopic.Message != null && balTopic.Message != "")
        {
            msgDanger.InnerText = balTopic.Message;
            blockDanger.Visible = true;
        }

    }
}