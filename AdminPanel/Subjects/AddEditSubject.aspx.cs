using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPanel_Subjects_AddEditSubject : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        fillDropDown();
        if (Request.QueryString["ExamID"] != null)
        {
            lblMode.Text = "Edit";
            fillData(Request.QueryString["SubjectID"].ToString().Trim());
        }
        else
        {
            lblMode.Text = "Add New";
        }
    }
    private void fillData(string ID)
    {

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {

    }
    private void fillDropDown()
    {
        using (SqlConnection objCon = new SqlConnection(ConfigurationManager.ConnectionStrings["MCQProjectConnectionString"].ConnectionString))
        {
            if (objCon.State != ConnectionState.Open)
                objCon.Open();
            using (SqlCommand objCmd = objCon.CreateCommand())
            {
                objCmd.CommandType = CommandType.StoredProcedure;
                objCmd.CommandText = "[PR_ExamCategoryTable_DropDownList]";
                using (SqlDataReader objSDR = objCmd.ExecuteReader())
                {
                    ddlExam.DataSource = objSDR;
                    ddlExam.DataTextField = "ExamCategoryName";
                    ddlExam.DataValueField = "ExamCategoryID";
                    ddlExam.DataBind();
                    ddlExam.Items.Insert(0, new ListItem("Select Exam", "0"));
                }
            }
            if (objCon.State == ConnectionState.Open)
                objCon.Close();
        }
    }
}