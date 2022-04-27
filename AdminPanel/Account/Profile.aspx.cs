using MCQProject;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPanel_Account_Profile : System.Web.UI.Page
{
    #region On Load Page
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["UserID"] != null)
            {
                fillData();
            }
            else
            {
                Response.Redirect("~/AdminPanel/Login.aspx", true);
            }
        }
    }
    #endregion On Load Page

    #region fill data
    private void fillData()
    {
        string ImageDefaultUrl = "~/Content/media/svg/avatars/blank.svg";
        UserBAL balUser = new UserBAL();
        UserENT entUser = new UserENT();

        entUser = balUser.SelectByUserID(Convert.ToInt32(Session["UserID"]));

        if (entUser != null)
        {

            if (!entUser.Email.IsNull)
            {
                lblShowEmail.Text = entUser.Email.ToString().Trim();
            }
            if (!entUser.DisplayName.IsNull)
            {
                lblShowDisplayName.Text = entUser.DisplayName.ToString().Trim();
            }
            if (!entUser.MobileNo.IsNull)
            {
                lblShowMobileNo.Text = entUser.MobileNo.ToString().Trim();
                if (lblShowMobileNo.Text == "")
                {
                    lblShowMobileNo.Text = "Mobile No Not Provided By You";
                }
            }
            else
            {
                lblShowMobileNo.Text = "Mobile No Not Provided By You";
            }

            if (!entUser.Address.IsNull)
            {
                lblShowAddress.Text = entUser.Address.ToString().Trim();
                if (lblShowAddress.Text == "")
                {
                    lblShowAddress.Text = "Address Not Provided By You";
                }
            }
            else
            {
                lblShowAddress.Text = "Address Not Provided By You";
            }
            if (!entUser.PhotoPath.IsNull)
            {
                imgProfile.ImageUrl =ResolveUrl(entUser.PhotoPath.ToString());
            }
            else
            {
                imgProfile.ImageUrl = ResolveUrl(ImageDefaultUrl);
            }
            if (!entUser.Created.IsNull)
            {
                lblShowCreated.Text = entUser.Created.ToString().Trim();
            }
            if (!entUser.Modified.IsNull)
            {
                lblShowModified.Text = entUser.Modified.ToString().Trim();
            }
        }
        else
        {
            msgDanger.InnerText = balUser.Message;
            blockDanger.Visible = true;
            return;
        }
    }
    #endregion fill data
}