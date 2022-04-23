using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPanel_Exams_AddEditExam : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Request.QueryString["ExamID"] != null)
            {
                lblMode.Text = "Edit";
                fillData(Request.QueryString["ExamID"].ToString().Trim());
            }
            else
            {
                lblMode.Text = "Add New";

            }
        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        SqlInt32 ExamCategoryID = 0;
        SqlString ExamName =SqlString.Null;
        SqlString Description = SqlString.Null;
        SqlString Remarks = SqlString.Null;
        SqlBoolean IsActive = cbVisible.Checked;

        if (txtExamName.Text.ToString().Trim() != "")
            ExamName = txtExamName.Text.ToString().Trim();
        if (txtExamDescription.Text.ToString().Trim() != "")
            Description = txtExamDescription.Text.ToString().Trim();
        if (txtRemarks.Text.ToString().Trim() != "")
            Remarks = txtRemarks.Text.ToString().Trim();
        

        using (SqlConnection objCon = new SqlConnection(ConfigurationManager.ConnectionStrings["MCQProjectConnectionString"].ConnectionString))
        {
            if (objCon.State != ConnectionState.Open)
                objCon.Open();
            using (SqlCommand objCmd = objCon.CreateCommand())
            {
                objCmd.CommandType = CommandType.StoredProcedure;
                objCmd.Parameters.AddWithValue("@ExamCategoryName", ExamName);
                objCmd.Parameters.AddWithValue("@Description", Description);
                objCmd.Parameters.AddWithValue("@Remarks", Remarks);
                objCmd.Parameters.AddWithValue("@IsActive", IsActive);
                if (Request.QueryString["ExamID"] != null)
                {
                    ExamCategoryID = Convert.ToInt32(Request.QueryString["ExamID"].ToString().Trim());
                    objCmd.Parameters.AddWithValue("@ExamCategoryID", ExamCategoryID);
                    objCmd.CommandText = "[PR_ExamCategoryTable_Update]";
                    objCmd.ExecuteNonQuery();
                    Response.Redirect("~/AdminPanel/Exams/ExamList.aspx");
                }
                else
                {
                    objCmd.CommandText="[PR_ExamCategoryTable_Insert]";
                    objCmd.ExecuteNonQuery();
                    clearFields();
                }
                
            }
            if (objCon.State == ConnectionState.Open)
                objCon.Close();
        }


    }

    private void clearFields()
    {
        txtExamDescription.Text = "";
        txtExamName.Text = "";
        txtRemarks.Text = "";
        txtExamName.Focus();
    }
    private void fillData(string ID)
    {
        using (SqlConnection objCon = new SqlConnection(ConfigurationManager.ConnectionStrings["MCQProjectConnectionString"].ConnectionString))
        {
            if (objCon.State != ConnectionState.Open)
                objCon.Open();
            using (SqlCommand objCmd = objCon.CreateCommand())
            {
                objCmd.CommandType = CommandType.StoredProcedure;
                objCmd.CommandText = "[PR_ExamCategoryTable_SelectByPK]";
                objCmd.Parameters.AddWithValue("@ExamCategoryID", Convert.ToInt32(ID));
                using (SqlDataReader objSDR = objCmd.ExecuteReader())
                {
                    if (objSDR.HasRows) { 
                        while(objSDR.Read()){
                            if (!objSDR["ExamCategoryName"].Equals(DBNull.Value))
                                txtExamName.Text = objSDR["ExamCategoryName"].ToString().Trim();
                            if (!objSDR["Description"].Equals(DBNull.Value))
                                txtExamDescription.Text = objSDR["Description"].ToString().Trim();
                            if (!objSDR["Remarks"].Equals(DBNull.Value))
                                txtRemarks.Text = objSDR["Remarks"].ToString().Trim();
                            if (objSDR["IsActive"].Equals(true))
                                cbVisible.Checked = true;
                            else
                                cbVisible.Checked = false;
                        }

                    }
                }
            }
            if (objCon.State == ConnectionState.Open)
                objCon.Close();
        }
    }
}