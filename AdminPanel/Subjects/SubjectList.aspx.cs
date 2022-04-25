using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPanel_Subjects_SubjectList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        { fillGridView(); }
    }
    protected void gvSubjectList_RowCommand(object sender, GridViewCommandEventArgs e)
    {
          if (e.CommandName == "deleteRecord")
        {
            if (e.CommandArgument.ToString() != "")
            {
                SubjectBAL balSubject = new SubjectBAL();
                if (balSubject.Delete(e.CommandArgument.ToString().Trim()))
                {
                    fillGridView();
                    msgSuccess.InnerText = "Deleted Succefully";
                    blockSuccess.Visible = true;
                }
                else
                {
                   //message
                    msgDanger.InnerText = balSubject.Message;
                    blockDanger.Visible = true;
                }
            }
        }
    }
    
    private void fillGridView(){
        SubjectBAL balSubject = new SubjectBAL();
        DataTable dtSubject = new DataTable();

        dtSubject = balSubject.selectAll();
        gvSubjectList.DataSource = dtSubject;
        gvSubjectList.DataBind();
        if (!(dtSubject != null && dtSubject.Rows.Count > 0))
        {
            msgDanger.InnerText = "No Data Available";
            blockDanger.Visible = true;
        }
        if (balSubject.Message != null && balSubject.Message != "")
        {
            msgDanger.InnerText = balSubject.Message;
            blockDanger.Visible = true;
        }
            
    }

}