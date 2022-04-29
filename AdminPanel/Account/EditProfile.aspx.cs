﻿using MCQProject;
using System;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPanel_Account_EditProfile : System.Web.UI.Page
{
    #region On Load
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!Page.IsPostBack)
        {
            if (Session["UserID"] != null)
            {
                fillControls();
            }
            else
            {
                Response.Redirect("~/AdminPanel/Login.aspx", true);
            }
        }
       

    }
    #endregion On Load

    #region Button : Save
    protected void btnSave_Click(object sender, EventArgs e)
    {
        #region Local Variables

        String strErrMsg = "";

        #endregion Local Variables

        #region Server Side Validation and Assgining values
        UserENT entUser = new UserENT();
        if (Session["UserID"] != null)
        {
            entUser.UserID = Convert.ToInt32(Session["UserID"]);
        }
        if (txtEmail.Text.Trim() == "")
        {
            strErrMsg += "Enter Email </br>";
        }
        if (txtDisplayName.Text.Trim() == "")
        {
            strErrMsg += "Enter Display Name </br>";
        }
        if (txtPassword.Text.Trim() != "")
        {
            if (checkPassword(Convert.ToInt32(Session["UserID"]), txtPassword.Text.Trim()) == true)
            {
                entUser.Password = txtPassword.Text.Trim();

            }
            else
            {
                return;
            }

        }
        else
        {
            strErrMsg += "Enter Password  to Edit Profile</br>";

        }
        if (txtNewPassword.Text.ToString().Trim() != txtConfirmPassword.Text.ToString().Trim())
        {
            strErrMsg += "Password should be matched </br>";
        }
        if (strErrMsg != "")
        {
            msgDanger.InnerText = strErrMsg;
            blockDanger.Visible = true;
            return;
        }

        if (txtNewPassword.Text.Trim() != "")
        {
            entUser.Password = txtNewPassword.Text.Trim();
        }
        if (txtEmail.Text.Trim() != "")
        {
            entUser.Email = txtEmail.Text.Trim();
        }
        if (txtDisplayName.Text.Trim() != "")
        {
            entUser.DisplayName = txtDisplayName.Text.Trim();
        }
        if (txtMobileNo.Text.Trim() != "")
        {
            entUser.MobileNo = txtMobileNo.Text.Trim();
        }
        if (txtAddress.Text.Trim() != "")
        {
            entUser.Address = txtAddress.Text.Trim();
        }

        #endregion Server Side Validation and Assgining values

        #region Update
        UserBAL balUser = new UserBAL();

        if (balUser.Update(entUser))
        {
            Session["DisplayName"] = entUser.DisplayName.ToString().Trim();
            Session["Email"] = entUser.Email.ToString().Trim();
            Session["PhotoPath"] = entUser.PhotoPath.ToString().Trim();
            Response.Redirect("~/AdminPanel/Account/Profile.aspx", true);
        }
        else
        {
            msgDanger.InnerText = balUser.Message;
            blockDanger.Visible = true;
            return;

        }
        #endregion Update
    }
    #endregion Button : Save

    #region fill controls
    private void fillControls()
    {
        UserBAL balUser = new UserBAL();
        UserENT entUser = new UserENT();

        entUser = balUser.SelectByUserID(Convert.ToInt32(Session["UserID"]));

        if (entUser != null)
        {

            if (!entUser.Email.IsNull)
            {
                txtEmail.Text = entUser.Email.ToString().Trim();
            }
            if (!entUser.DisplayName.IsNull)
            {
                txtDisplayName.Text = entUser.DisplayName.ToString().Trim();
            }
            if (!entUser.MobileNo.IsNull)
            {
                txtMobileNo.Text = entUser.MobileNo.ToString().Trim();
            }
            if (!entUser.Address.IsNull)
            {
                txtAddress.Text = entUser.Address.ToString().Trim();
            }
            if (!entUser.PhotoPath.IsNull)
            {
                bgImage.Style.Add("background-image", ResolveUrl(entUser.PhotoPath.ToString().Trim()));
            }
            if (!entUser.PhotoFileSize.IsNull)
            {
                hfImgSize.Value = entUser.PhotoFileSize.ToString().Trim();
            }
            if (!entUser.PhotoFileType.IsNull)
            {
                hfImgType.Value = entUser.PhotoFileType.ToString().Trim();
            }
            if (!entUser.PhotoFileExtension.IsNull)
            {
                hfImgExtension.Value = entUser.PhotoFileExtension.ToString().Trim();
            }
        }
        else
        {
            msgDanger.InnerText = balUser.Message;
            blockDanger.Visible = true;
            return;

        }

    }
    #endregion fill controls

    #region checkPassword
    private bool checkPassword(SqlInt32 UserID, SqlString Password)
    {
        UserBAL balUser = new UserBAL();
        if (balUser.CheckPassword(UserID, Password))
        {
            return true;
        }
        else
        {
            msgDanger.InnerText = balUser.Message;
            blockDanger.Visible = true;
            return false;

        }
    }
    #endregion checkPassword
}