using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Content_AdminPanel : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserID"] == null)
        {
            Response.Redirect("~/AdminPanel/Login.aspx", true);
        }
        if (!Page.IsPostBack)
        {
            if (Session["DisplayName"] != null)
            {
                lblDisplayName.Text = Session["DisplayName"].ToString().Trim();
            }
            if (Session["Email"] != null)
            {
                lblEmail.Text = Session["Email"].ToString().Trim();
            }
        }
    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        if (Page.IsPostBack || !Page.IsPostBack)
        {
            Session.Clear();
            Response.Redirect("~/AdminPanel/Login.aspx", true);
        }

    }
   
}
