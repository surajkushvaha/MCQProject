using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for FeedbackDAL
/// </summary>
/// 
namespace MCQProject
{
    public class FeedbackDAL:DatabaseConfig
    {
        #region Constructor
        public FeedbackDAL()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        #endregion Constructor

        #region Message
        protected string _Message;
        public string Message
        {
            get
            {
                return _Message;
            }
            set
            {
                _Message = value;
            }
        }
        #endregion Message

        #region Insert
        public Boolean Insert(FeedbackENT entFeedback)
        {
            using (SqlConnection objConn = new SqlConnection(ConnectionString))
            {
                if (objConn.State != ConnectionState.Open)
                    objConn.Open();

                using (SqlCommand objCmd = objConn.CreateCommand())
                {
                    try
                    {
                        #region Prepare Command

                        objCmd.CommandType = CommandType.StoredProcedure;
                        objCmd.CommandText = "PR_FeedbackTable_Insert";
                        objCmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = entFeedback.Name;
                        objCmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = entFeedback.Email;
                        objCmd.Parameters.Add("@FeedbackDetail", SqlDbType.VarChar).Value = entFeedback.FeedbackDetail;



                        #endregion Prepare Command

                        objCmd.ExecuteNonQuery();

                        return true;

                    }
                    catch (SqlException sqlex)
                    {
                        Message = sqlex.Message;
                        return false;
                    }
                    catch (Exception ex)
                    {
                        Message = ex.Message;
                        return false;
                    }
                    finally
                    {
                        if (objConn.State == ConnectionState.Open)
                            objConn.Close();
                    }
                }
            }
        }

        #endregion Insert 

        #region SelectAll
        public DataTable selectAll()
        {
            using (SqlConnection objCon = new SqlConnection(ConnectionString))
            {
                if (objCon.State != ConnectionState.Open)
                    objCon.Open();
                DataTable dt = new DataTable();
                using (SqlCommand objCmd = objCon.CreateCommand())
                {
                    try
                    {
                        objCmd.CommandType = CommandType.StoredProcedure;
                        objCmd.CommandText = "[PR_FeedbackTable_SelectAll]";
                        using (SqlDataReader objSDR = objCmd.ExecuteReader())
                        {
                            dt.Load(objSDR);
                        }
                        return dt;
                    }
                    catch (SqlException sqlex)
                    {
                        Message = sqlex.Message;
                        return null;
                    }
                    catch (Exception ex)
                    {
                        Message = ex.Message;
                        return null;
                    }
                    finally
                    {
                        if (objCon.State == ConnectionState.Open)
                            objCon.Close();

                    }
                }

            }
        }
        #endregion SelectALl
    }
}