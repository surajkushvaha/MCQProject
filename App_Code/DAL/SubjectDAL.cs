using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for SubjectDAL
/// </summary>
/// 
namespace MCQProject
{
    public class SubjectDAL:DatabaseConfig
    {
        #region Constructor
        public SubjectDAL()
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
        public Boolean Insert(SubjectENT entSubject)
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
                        objCmd.Parameters.AddWithValue("@ExamCategoryID", entSubject.CategoryID);
                        objCmd.Parameters.AddWithValue("@ExamSubjectName", entSubject.SubjectName);
                        objCmd.Parameters.AddWithValue("@Remarks", entSubject.Remarks);
                        objCmd.Parameters.AddWithValue("@IsActive", entSubject.IsActive);
                        objCmd.CommandText = "[PR_ExamSubjectTable_Insert]";
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
        public Boolean Update(SubjectENT entSubject)
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
                        objCmd.Parameters.AddWithValue("@ExamSubjectID", entSubject.SubjectID);
                        objCmd.Parameters.AddWithValue("@ExamSubjectName", entSubject.SubjectName);
                        objCmd.Parameters.AddWithValue("@ExamCategoryID", entSubject.CategoryID);
                        objCmd.Parameters.AddWithValue("@Remarks", entSubject.Remarks);
                        objCmd.Parameters.AddWithValue("@IsActive", entSubject.IsActive);
                        objCmd.CommandText = "[PR_ExamSubjectTable_Update]";
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

                        objCmd.Parameters.AddWithValue("@ExamSubjectID", Convert.ToInt32(ID));
                        objCmd.CommandText = "[PR_ExamSubjectTable_Delete]";
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
                        objCmd.CommandText = "[PR_ExamSubjectTable_SelectAll]";
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
        public SubjectENT selectByPK(string ID)
        {
            using (SqlConnection objCon = new SqlConnection(ConnectionString))
            {
                if (objCon.State != ConnectionState.Open)
                    objCon.Open();
                using (SqlCommand objCmd = objCon.CreateCommand())
                {
                    try
                    {
                        SubjectENT entSubject = new SubjectENT();
                        objCmd.CommandType = CommandType.StoredProcedure;
                        objCmd.CommandText = "[PR_ExamSubjectTable_SelectByPK]";
                        objCmd.Parameters.AddWithValue("@ExamSubjectID", Convert.ToInt32(ID));
                        using (SqlDataReader objSDR = objCmd.ExecuteReader())
                        {
                            if (objSDR.HasRows)
                            {
                                while (objSDR.Read())
                                {
                                    if (!objSDR["ExamCategoryID"].Equals(DBNull.Value))
                                        entSubject.CategoryID = Convert.ToInt32(objSDR["ExamCategoryID"]);
                                    if (!objSDR["ExamSubjectName"].Equals(DBNull.Value))
                                        entSubject.SubjectName = objSDR["ExamSubjectName"].ToString().Trim();
                                   
                                    if (!objSDR["Remarks"].Equals(DBNull.Value))
                                        entSubject.Remarks = objSDR["Remarks"].ToString().Trim();
                                    if (objSDR["IsActive"].Equals(true))
                                        entSubject.IsActive = true;
                                    else
                                        entSubject.IsActive = false;
                                }

                            }
                        }
                        return entSubject;
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

        #region SelectByExamCategoryID
        public DataTable SelectByExamCategoryID(string ID)
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
                        objCmd.CommandText = "[PR_ExamSubjectTable_SelectByExamCategoryID]";
                        objCmd.Parameters.AddWithValue("@ExamCategoryID", Convert.ToInt32(ID));
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
        #endregion SelectByExamCategoryID

        #region SelectByExamTopicID
        public DataTable SelectByExamTopicID(string ID)
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
                        objCmd.CommandText = "[PR_ExamSubjectTable_SelectByExamTopicID]";
                        objCmd.Parameters.AddWithValue("@ExamTopicID", Convert.ToInt32(ID));
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
        #endregion SelectByExamTopicID

        #region USERPANEL
        #region UserSubjectFillUp
        public DataTable UserSubjectFillUp(string ID)
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
                        objCmd.CommandText = "[PR_ExamSubjectTable_UserSubjectFillUp]";
                        objCmd.Parameters.AddWithValue("@ExamCategoryID", ID);
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
        #endregion UserSubjectFillUp
        #endregion USERPANEL
    }
}