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
        fillGridView();
    }
    protected void gvSubjectList_RowCommand(object sender, GridViewCommandEventArgs e)
    {

    }
    private void fillGridView(){
        using (SqlConnection objCon = new SqlConnection(ConfigurationManager.ConnectionStrings["MCQProjectConnectionString"].ConnectionString))
        {
            if (objCon.State != ConnectionState.Open)
                objCon.Open();
            using (SqlCommand objCmd = objCon.CreateCommand())
            {
                objCmd.CommandType = CommandType.StoredProcedure;
                objCmd.CommandText = "[PR_ExamSubjectTable_SelectAll]";
                using (SqlDataReader objSDR = objCmd.ExecuteReader())
                {
                    gvSubjectList.DataSource = objSDR;
                    gvSubjectList.DataBind();
                }
            }
            if (objCon.State == ConnectionState.Open)
                objCon.Close();
        }
    }

}