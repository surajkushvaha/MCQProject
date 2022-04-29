using MCQProject;
using System;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPanel_Default : System.Web.UI.Page
{
    #region Page Load
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["UserID"] != null)
            {
                Response.Redirect("~/AdminPanel/Home.aspx", true);
            }
           
        }
    }
    #endregion Page Load

    #region Button: Login
    protected void btnLogin_Click(object sender, EventArgs e)
    {

        #region Server Side Validation
        string ErrorMessage = "";
        SqlString strEmail = SqlString.Null;
        SqlString strPassword = SqlString.Null;
        if (txtEmail.Text.Trim() == "")
        {
            ErrorMessage += "- Enter Email </br>";
        }
        if (txtPassword.Text.Trim() == "")
        {
            ErrorMessage += "- Enter Password <br/>";
        }
        if (ErrorMessage != "")
        {
            msgDanger.Text = ErrorMessage;
            blockDanger.Visible = true;
            return;
        }
        #endregion Server Side Validation

        #region Assign the Value
        if (txtEmail.Text.Trim() != "")
        {
            strEmail = txtEmail.Text.Trim();
        }
        if (txtPassword.Text.Trim() != "")
        {
            strPassword = txtPassword.Text.Trim();
        }
        #endregion Assign the Value

        #region Login
        UserBAL balUser = new UserBAL();
        UserENT entUser = new UserENT();

        entUser = balUser.SelctByEmailPassword(strEmail, strPassword);

        if (entUser != null)
        {
            if (!entUser.UserID.IsNull)
                Session["UserID"] = entUser.UserID.ToString().Trim();
            if (!entUser.DisplayName.IsNull)
                Session["DisplayName"] = entUser.DisplayName.ToString().Trim();

            Session["Email"] = strEmail;
                 
            Response.Redirect("~/AdminPanel/Home.aspx", true);
        }

        else
        {
            msgDanger.Text = balUser.Message;
            blockDanger.Visible = true;
            return;
        }
        #endregion Login

    }
    #endregion Button: Login
}