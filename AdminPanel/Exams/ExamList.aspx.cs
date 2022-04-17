using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPanel_Exams_ExamList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        fillGridView();
    }
    private void fillGridView()
    {
        using (SqlConnection objCon = new SqlConnection(ConfigurationManager.ConnectionStrings["MCQProjectConnectionString"].ConnectionString))
        {
            if (objCon.State != ConnectionState.Open)
                objCon.Open();
            using (SqlCommand objCmd = objCon.CreateCommand())
            {
                objCmd.CommandType = CommandType.StoredProcedure;
                objCmd.CommandText = "[PR_ExamCategoryTable_SelectAll]";
                using (SqlDataReader objSDR = objCmd.ExecuteReader())
                {
                    gvExamList.DataSource = objSDR;
                    gvExamList.DataBind();
                }
            }
            if (objCon.State == ConnectionState.Open)
                objCon.Close();
        }
    }
    protected void gvExamList_RowCommand(object sender, GridViewCommandEventArgs e)
    {
       
    }
}