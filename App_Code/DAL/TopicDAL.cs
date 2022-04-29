using MCQProject;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for TopicDAL
/// </summary>
public class TopicDAL:DatabaseConfig
{
    #region Constructor
    public TopicDAL()
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
    public Boolean Insert(TopicENT entTopic)
    {
        using (SqlConnection objCon = new SqlConnection(ConnectionString))
        {
            if (objCon.State != ConnectionState.Open)
                objCon.Open();
            using (SqlCommand objCmd = objCon.CreateCommand())
            {
                try
                {
                    objCmd.CommandType = CommandType.StoredProcedure;
                    objCmd.Parameters.AddWithValue("@ExamSubjectID", entTopic.SubjectID);

                    objCmd.Parameters.AddWithValue("@ExamTopicName", entTopic.TopicName);
                    objCmd.Parameters.AddWithValue("@Remarks", entTopic.Remarks);
                    objCmd.Parameters.AddWithValue("@IsActive", entTopic.IsActive);
                    objCmd.CommandText = "[PR_ExamTopicTable_Insert]";
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
                    if (objCon.State == ConnectionState.Open)
                        objCon.Close();
                }
            }
        }
    }
    #endregion Insert

    #region Update
    public Boolean Update(TopicENT entTopic)
    {
        using (SqlConnection objCon = new SqlConnection(ConnectionString))
        {
            if (objCon.State != ConnectionState.Open)
                objCon.Open();
            using (SqlCommand objCmd = objCon.CreateCommand())
            {
                try
                {
                    objCmd.CommandType = CommandType.StoredProcedure;
                    objCmd.Parameters.AddWithValue("@ExamTopicID", entTopic.TopicID);
                    objCmd.Parameters.AddWithValue("@ExamTopicName", entTopic.TopicName);
                    objCmd.Parameters.AddWithValue("@ExamSubjectID", entTopic.SubjectID);
                    objCmd.Parameters.AddWithValue("@Remarks", entTopic.Remarks);
                    objCmd.Parameters.AddWithValue("@IsActive", entTopic.IsActive);
                    objCmd.CommandText = "[PR_ExamTopicTable_Update]";
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
                    if (objCon.State == ConnectionState.Open)
                        objCon.Close();
                }
            }
        }
    }
    #endregion Update

    #region Delete
    public Boolean Delete(string ID)
    {
        using (SqlConnection objCon = new SqlConnection(ConnectionString))
        {
            if (objCon.State != ConnectionState.Open)
                objCon.Open();
            using (SqlCommand objCmd = objCon.CreateCommand())
            {
                try
                {
                    objCmd.CommandType = CommandType.StoredProcedure;

                    objCmd.Parameters.AddWithValue("@ExamTopicID", Convert.ToInt32(ID));
                    objCmd.CommandText = "[PR_ExamTopicTable_Delete]";
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
                    if (objCon.State == ConnectionState.Open)
                        objCon.Close();
                }
            }
        }
    }
    #endregion Delete

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
                    objCmd.CommandText = "[PR_ExamTopicTable_SelectAll]";
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

    #region SelectByPK
    public TopicENT selectByPK(string ID)
    {
        using (SqlConnection objCon = new SqlConnection(ConnectionString))
        {
            if (objCon.State != ConnectionState.Open)
                objCon.Open();
            using (SqlCommand objCmd = objCon.CreateCommand())
            {
                try
                {
                    TopicENT entTopic = new TopicENT();
                    objCmd.CommandType = CommandType.StoredProcedure;
                    objCmd.CommandText = "[PR_ExamTopicTable_SelectByPK]";
                    objCmd.Parameters.AddWithValue("@ExamTopicID", Convert.ToInt32(ID));
                    using (SqlDataReader objSDR = objCmd.ExecuteReader())
                    {
                        if (objSDR.HasRows)
                        {
                            while (objSDR.Read())
                            {
                                if (!objSDR["ExamSubjectID"].Equals(DBNull.Value))
                                    entTopic.SubjectID = Convert.ToInt32(objSDR["ExamSubjectID"]);
                                if (!objSDR["ExamTopicName"].Equals(DBNull.Value))
                                    entTopic.TopicName = objSDR["ExamTopicName"].ToString().Trim();

                                if (!objSDR["Remarks"].Equals(DBNull.Value))
                                    entTopic.Remarks = objSDR["Remarks"].ToString().Trim();
                                if (objSDR["IsActive"].Equals(true))
                                    entTopic.IsActive = true;
                                else
                                    entTopic.IsActive = false;
                            }

                        }
                    }
                    return entTopic;
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
    #endregion SelectByPK

    #region SelectByExamSubjectID
    public DataTable SelectByExamSubjectID(string ID)
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
                    objCmd.CommandText = "[PR_ExamTopicTable_SelectByExamSubjectID]";
                    objCmd.Parameters.AddWithValue("@ExamSubjectID", Convert.ToInt32(ID));
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
    #endregion SelectByExamSubjectID

    #region USERPANEL
    #region UserTopicFillUp
    public DataTable UserTopicFillUp(string ID)
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
                    objCmd.CommandText = "[PR_ExamTopicTable_UserTopicFillUp]";
                    objCmd.Parameters.AddWithValue("@ExamSubjectID", ID);
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
    #endregion UserTopicFillUp
    #endregion USERPANEL
}