using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
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
                        //objCmd.Parameters.AddWithValue("@ExamCategoryName", entExam.CategoryName);
                        //objCmd.Parameters.AddWithValue("@Description", entExam.Description);
                        //objCmd.Parameters.AddWithValue("@Remarks", entExam.Remarks);
                        //objCmd.Parameters.AddWithValue("@IsActive", entExam.IsActive);
                        //objCmd.CommandText = "[PR_ExamCategoryTable_Insert]";
                        //objCmd.ExecuteNonQuery();
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
                        //objCmd.Parameters.AddWithValue("@ExamCategoryName", entExam.CategoryName);
                        //objCmd.Parameters.AddWithValue("@Description", entExam.Description);
                        //objCmd.Parameters.AddWithValue("@Remarks", entExam.Remarks);
                        //objCmd.Parameters.AddWithValue("@IsActive", entExam.IsActive);
                        //objCmd.Parameters.AddWithValue("@ExamCategoryID", entExam.CategoryID);
                        //objCmd.CommandText = "[PR_ExamCategoryTable_Update]";
                        //objCmd.ExecuteNonQuery();
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
                       // objCmd.CommandText = "[PR_ExamCategoryTable_SelectAll]";
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
                        //objCmd.CommandText = "[PR_ExamCategoryTable_SelectByPK]";
                        //objCmd.Parameters.AddWithValue("@ExamCategoryID", Convert.ToInt32(ID));
                        using (SqlDataReader objSDR = objCmd.ExecuteReader())
                        {
                            if (objSDR.HasRows)
                            {
                                while (objSDR.Read())
                                {
                                    //if (!objSDR["ExamCategoryName"].Equals(DBNull.Value))
                                    //    entExam.CategoryName = objSDR["ExamCategoryName"].ToString().Trim();
                                    //if (!objSDR["Description"].Equals(DBNull.Value))
                                    //    entExam.Description = objSDR["Description"].ToString().Trim();
                                    //if (!objSDR["Remarks"].Equals(DBNull.Value))
                                    //    entExam.Remarks = objSDR["Remarks"].ToString().Trim();
                                    //if (objSDR["IsActive"].Equals(true))
                                    //    entExam.IsActive = true;
                                    //else
                                    //    entExam.IsActive = false;
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

    }
}