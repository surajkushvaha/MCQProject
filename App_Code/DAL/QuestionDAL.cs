using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;

/// <summary>
/// Summary description for QuestionDAL
/// </summary>
/// 
namespace MCQProject
{
    public class QuestionDAL:DatabaseConfig
    {
        public QuestionDAL()
        {
            //
            // TODO: Add constructor logic here
            //
        }

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
        public Boolean Insert(QuestionENT entQuestion)
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
                        objCmd.Parameters.AddWithValue("@Question", entQuestion.Question);
                        objCmd.Parameters.AddWithValue("@OptionA", entQuestion.OptionA);
                        objCmd.Parameters.AddWithValue("@OptionB", entQuestion.OptionB);
                        objCmd.Parameters.AddWithValue("@OptionC", entQuestion.OptionC);
                        objCmd.Parameters.AddWithValue("@OptionD", entQuestion.OptionD);
                        objCmd.Parameters.AddWithValue("@OptionE", entQuestion.OptionE);
                        objCmd.Parameters.AddWithValue("@TrueOption", entQuestion.TrueOption);
                        objCmd.Parameters.AddWithValue("@Solution", entQuestion.Solution);
                        objCmd.Parameters.AddWithValue("@ExamTopicID", entQuestion.ExamTopicID);
                        objCmd.Parameters.AddWithValue("@Remarks", entQuestion.Remarks);
                        objCmd.Parameters.AddWithValue("@IsActive", entQuestion.IsActive);
                        objCmd.CommandText = "[PR_ExamQuestionTable_Insert]";
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
        public Boolean Update(QuestionENT entQuestion)
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
                        objCmd.Parameters.AddWithValue("@QuestionID", entQuestion.QuestionID);
                        objCmd.Parameters.AddWithValue("@Question", entQuestion.Question);
                        objCmd.Parameters.AddWithValue("@OptionA", entQuestion.OptionA);
                        objCmd.Parameters.AddWithValue("@OptionB", entQuestion.OptionB);
                        objCmd.Parameters.AddWithValue("@OptionC", entQuestion.OptionC);
                        objCmd.Parameters.AddWithValue("@OptionD", entQuestion.OptionD);
                        objCmd.Parameters.AddWithValue("@OptionE", entQuestion.OptionE);
                        objCmd.Parameters.AddWithValue("@TrueOption", entQuestion.TrueOption);
                        objCmd.Parameters.AddWithValue("@Solution", entQuestion.Solution);
                        objCmd.Parameters.AddWithValue("@ExamTopicID", entQuestion.ExamTopicID);
                        objCmd.Parameters.AddWithValue("@Remarks", entQuestion.Remarks);
                        objCmd.Parameters.AddWithValue("@IsActive", entQuestion.IsActive);
                        objCmd.CommandText = "[PR_ExamQuestionTable_Update]";
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

                        objCmd.Parameters.AddWithValue("@QuestionID", Convert.ToInt32(ID));
                        objCmd.CommandText = "[PR_ExamQuestionTable_Delete]";
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

        #region selectForGrid
        public DataTable selectForGrid()
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
                        objCmd.CommandText = "[PR_ExamQuestionTable_SelectForGrid]";
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
        #endregion selectForGrid

        #region SelectByPK
        public QuestionENT selectByPK(string ID)
        {
            using (SqlConnection objCon = new SqlConnection(ConnectionString))
            {
                if (objCon.State != ConnectionState.Open)
                    objCon.Open();
                using (SqlCommand objCmd = objCon.CreateCommand())
                {
                    try
                    {
                        QuestionENT entQuestion = new QuestionENT();
                        objCmd.CommandType = CommandType.StoredProcedure;
                        objCmd.CommandText = "[PR_ExamQuestionTable_SelectByPK]";
                        objCmd.Parameters.AddWithValue("@QuestionID", Convert.ToInt32(ID));
                        using (SqlDataReader objSDR = objCmd.ExecuteReader())
                        {
                            if (objSDR.HasRows)
                            {
                                while (objSDR.Read())
                                {
                                    if (!objSDR["Question"].Equals(DBNull.Value))
                                        entQuestion.Question = objSDR["Question"].ToString().Trim();
                                    if (!objSDR["OptionA"].Equals(DBNull.Value))
                                        entQuestion.OptionA = objSDR["OptionA"].ToString().Trim();
                                    if (!objSDR["OptionB"].Equals(DBNull.Value))
                                        entQuestion.OptionB = objSDR["OptionB"].ToString().Trim();
                                    if (!objSDR["OptionC"].Equals(DBNull.Value))
                                        entQuestion.OptionC = objSDR["OptionC"].ToString().Trim();
                                    if (!objSDR["OptionD"].Equals(DBNull.Value))
                                        entQuestion.OptionD = objSDR["OptionD"].ToString().Trim();
                                    if (!objSDR["OptionE"].Equals(DBNull.Value))
                                        entQuestion.OptionE = objSDR["OptionE"].ToString().Trim();
                                    if (!objSDR["TrueOption"].Equals(DBNull.Value))
                                        entQuestion.TrueOption = Convert.ToChar(objSDR["TrueOption"]);
                                    if (!objSDR["Solution"].Equals(DBNull.Value))
                                        entQuestion.Solution = objSDR["Solution"].ToString().Trim();
                                    if (!objSDR["ExamTopicID"].Equals(DBNull.Value))
                                        entQuestion.ExamTopicID = Convert.ToInt32(objSDR["ExamTopicID"]);
                                   
                                   
                                    if (!objSDR["Remarks"].Equals(DBNull.Value))
                                        entQuestion.Remarks = objSDR["Remarks"].ToString().Trim();
                                    if (objSDR["IsActive"].Equals(true))
                                        entQuestion.IsActive = true;
                                    else
                                        entQuestion.IsActive = false;
                                }

                            }
                        }
                        return entQuestion;
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

        #region UserPanel
        #region UserSelectAllBySubjectIDTopicID
        public DataTable UserSelectAllBySubjectIDTopicID(string SubjectID,string TopicID)
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
                        objCmd.CommandText = "[PR_ExamQuestionTable_UserSelectAllBySubjectIDTopicID]";
                        objCmd.Parameters.AddWithValue("@SubjectID",SubjectID);
                        objCmd.Parameters.AddWithValue("@TopicID",TopicID);
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
        #endregion UserSelectAllBySubjectIDTopicID

        #region UserSelectAllBySubjectID
        public DataTable UserSelectAllBySubjectID(string SubjectID)
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
                        objCmd.CommandText = "[PR_ExamQuestionTable_UserSelectAllBySubjectID]";
                        objCmd.Parameters.AddWithValue("@SubjectID", SubjectID);
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
        #endregion UserSelectAllBySubjectID

        #region TestUserSelectAllByExamID
        public DataTable TestUserSelectAllByExamID(string ExamID, string NoMCQ)
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
                        objCmd.CommandText = "[PR_ExamQuestionTable_UserSelectAllByExamID]";
                        objCmd.Parameters.AddWithValue("@ExamID", ExamID);
                        objCmd.Parameters.AddWithValue("@noOfMCQ", NoMCQ);
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
        #endregion TestUserSelectAllByExamID

        #region TestUserSelectAllBySubjectID
        public DataTable TestUserSelectAllBySubjectID(string SubjectID, string ExamID, string NoMCQ)
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
                        objCmd.CommandText = "[PR_ExamQuestionTable_UserSelectAllBySubjectIDForTest]";
                        objCmd.Parameters.AddWithValue("@SubjectID", SubjectID);
                        objCmd.Parameters.AddWithValue("@ExamID", ExamID);
                        objCmd.Parameters.AddWithValue("@noOfMCQ", NoMCQ);

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
        #endregion TestUserSelectAllBySubjectID

        #endregion UserPanel
    }
}