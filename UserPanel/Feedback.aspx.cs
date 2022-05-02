using MCQProject;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserPanel_Feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        FeedbackBAL balFeedback = new FeedbackBAL();
        FeedbackENT entFeedback = new FeedbackENT();
        string MessageError = "";
        if (txtName.Text.ToString().Trim() == "")
        {
            MessageError += "Please Enter the Name.</br>";
        }
        if (txtEmail.Text.ToString().Trim() == "")
        {
            MessageError += "Please Enter the Email.</br>";
        }
        if (txtSubject.Text.ToString().Trim() == "")
        {
            MessageError += "Please Enter the Subject.</br>";
        }
        if (txtMessage.Text.ToString().Trim() == "")
        {
            MessageError += "Please Enter the Message.</br>";
        }
        if(MessageError.ToString().Trim() != "")
        {
            msgDanger.InnerHtml =MessageError;
            blockDanger.Visible = true;
            return;
        }


        if (txtName.Text.ToString().Trim() != "")
        {
            entFeedback.Name = txtName.Text.ToString().Trim();
        }
        if (txtEmail.Text.ToString().Trim() != "")
        {
            entFeedback.Email = txtEmail.Text.ToString().Trim();
        }

        if (txtMessage.Text.ToString().Trim() != "")
        {
            entFeedback.FeedbackDetail = txtMessage.ToString().Trim();
        }
        if(balFeedback.Insert(entFeedback))
        {
            msgSuccess.InnerHtml = txtName.Text.ToString().Trim() + " We Recieved Your valuable Feedback";
            blockSuccess.Visible = true;
            txtMessage.Text = "";
            txtEmail.Text = "";
            txtMessage.Text = "";
            txtSubject.Text = "";
            txtName.Focus();
        }
        else
        {
            msgDanger.InnerHtml = balFeedback.Message;
            blockDanger.Visible = true;
        }

    }
}