using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPanel_index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
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

    private void fillData(){
        DataTable dt = new DataTable();

        using (SqlConnection objCon = new SqlConnection(ConfigurationManager.ConnectionStrings["MCQProjectConnectionString"].ConnectionString))
        {
            if (objCon.State != ConnectionState.Open)
                objCon.Open();
            using (SqlCommand objCmd = objCon.CreateCommand())
            {
                objCmd.CommandType = CommandType.StoredProcedure;
                objCmd.CommandText = "[PR_TotalCounter]";
                using (SqlDataReader objSDR = objCmd.ExecuteReader())
                {
                    dt.Load(objSDR);
                }
            }
            if (objCon.State == ConnectionState.Open)
                objCon.Close();
        }

        lblExamCount.Text = dt.Rows[0].ItemArray[0].ToString();
        lblSubjectCount.Text = dt.Rows[1].ItemArray[0].ToString();
        lblTopicCount.Text = dt.Rows[2].ItemArray[0].ToString();
        lblQuestionCount.Text = dt.Rows[3].ItemArray[0].ToString();

    }
}