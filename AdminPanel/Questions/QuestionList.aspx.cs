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
        fillGridView();
    }

    private void fillGridView()
    {
        
    }
    protected void gvQuestionList_RowCommand(object sender, GridViewCommandEventArgs e)
    {

    }
}