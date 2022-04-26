using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for UserDAL
/// </summary>
namespace MCQProject
{
    public class UserDAL:DatabaseConfig
    {
        #region Constructor
        public UserDAL()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        #endregion Constructor

        #region Local Variable
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
        #endregion Local Variable

        #region Insert Operation
        public Boolean Insert(UserENT entUser)
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
                        objCmd.CommandText = "PR_UserTable_Insert";
                        objCmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = entUser.Email;
                        objCmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = entUser.Password;
                        objCmd.Parameters.Add("@DisplayName", SqlDbType.VarChar).Value = entUser.DisplayName;
                        objCmd.Parameters.Add("@MobileNo", SqlDbType.VarChar).Value = entUser.MobileNo;
                        objCmd.Parameters.Add("@Address", SqlDbType.VarChar).Value = entUser.Address;


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

        #endregion Insert Operation

        #region Update Operation
        public Boolean Update(UserENT entUser)
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
                        objCmd.CommandText = "PR_UserTable_UpdateByPK";
                        objCmd.Parameters.Add("@UserID", SqlDbType.Int).Value = entUser.UserID;

                        objCmd.Parameters.Add("@Email", SqlDbType.VarChar).Value = entUser.Email;
                        objCmd.Parameters.Add("@Password", SqlDbType.VarChar).Value = entUser.Password;
                        objCmd.Parameters.Add("@DisplayName", SqlDbType.VarChar).Value = entUser.DisplayName;
                        objCmd.Parameters.Add("@MobileNo", SqlDbType.VarChar).Value = entUser.MobileNo;
                        objCmd.Parameters.Add("@Address", SqlDbType.VarChar).Value = entUser.Address;

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
        #endregion Update Operation       

        #region Check For Availability Email
        public Boolean CheckForInsert(SqlString Email)
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
                        objCmd.CommandText = "PR_UserTable_CheckForInsert";
                        objCmd.Parameters.AddWithValue("@Email", Email);

                        #endregion Prepare Command


                        SqlDataReader objSDR = objCmd.ExecuteReader();
                        if (objSDR.HasRows)
                        {
                            Message = "This Email is alredy exist try another Email";                          
                            return false;
                        }
                        else
                        {
                            return true;
                        }

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
        #endregion Check For Availability Email

        #region Check For Password
        public Boolean CheckPassword(SqlInt32 UserID,SqlString Password)
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
                        objCmd.CommandText = "PR_UserTable_CheckPassword";
                        objCmd.Parameters.AddWithValue("@UserID", UserID);

                        #endregion Prepare Command

                        #region Read Data & Set Controls
                        using (SqlDataReader objSDR = objCmd.ExecuteReader())
                        {
                            if (objSDR.HasRows)
                            {
                                while (objSDR.Read())
                                {
                                    if (!objSDR["Password"].Equals(DBNull.Value))
                                    {
                                        if (objSDR["Password"].ToString().Trim() == Password)
                                        {
                                            return true;
                                        }
                                        else
                                        {
                                            Message = "Please Enter Correct Password";
                                            return false;
                                        }

                                    }
                                }

                            }
                        }
                        return false;
                        #endregion Read Data & Set Controls

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
        #endregion Check For Password

        #region Select By UserID
        public UserENT SelectByUserID(SqlInt32 UserID)
        {
            using (SqlConnection objCon = new SqlConnection(ConnectionString))
            {
                if (objCon.State != ConnectionState.Open)
                    objCon.Open();

                using (SqlCommand objCmd = objCon.CreateCommand())
                {
                    try
                    {
                        #region Prepare Command

                        objCmd.CommandType = CommandType.StoredProcedure;
                        objCmd.CommandText = "PR_UserTable_SelectByUserID";
                        objCmd.Parameters.AddWithValue("@UserID", UserID);
                        #endregion Prepare Command

                        #region Read the value and set the controls
                        UserENT entUser = new UserENT();

                        SqlDataReader objSDR = objCmd.ExecuteReader();

                        if (objSDR.HasRows)
                        {
                            while (objSDR.Read())
                            {

                                if (!objSDR["Email"].Equals(DBNull.Value))
                                {
                                    entUser.Email = objSDR["Email"].ToString().Trim();
                                }
                                if (!objSDR["DisplayName"].Equals(DBNull.Value))
                                {
                                    entUser.DisplayName = objSDR["DisplayName"].ToString().Trim();
                                }
                                if (!objSDR["MobileNo"].Equals(DBNull.Value))
                                {
                                    entUser.MobileNo = objSDR["MobileNo"].ToString().Trim();
                                }

                                if (!objSDR["Address"].Equals(DBNull.Value))
                                {
                                    entUser.Address = objSDR["Address"].ToString().Trim();
                                }

                                if (!objSDR["Created"].Equals(DBNull.Value))
                                {
                                    entUser.Created = Convert.ToDateTime(objSDR["Created"].ToString().Trim());
                                }
                                if (!objSDR["Modified"].Equals(DBNull.Value))
                                {
                                    entUser.Modified = Convert.ToDateTime(objSDR["Modified"].ToString().Trim());
                                }
                                break;
                            }
                        }
                        return entUser;
                        #endregion Read the value and set the controls

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
        #endregion Select By UserID

        #region Select By Email & Password
        public UserENT SelctByEmailPassword(SqlString Email, SqlString Password)
        {
            using (SqlConnection objCon = new SqlConnection(ConnectionString))
            {
                if (objCon.State != ConnectionState.Open)
                    objCon.Open();

                using (SqlCommand objCmd = objCon.CreateCommand())
                {
                    try
                    {
                        #region Prepare Command

                        objCmd.CommandType = CommandType.StoredProcedure;
                        objCmd.CommandText = "PR_UserTable_SelectByUsernamePassword";
                        objCmd.Parameters.AddWithValue("@Password", Password);
                        objCmd.Parameters.AddWithValue("@Email", Email);
                        #endregion Prepare Command

                        #region Read Data & Set Controls
                        UserENT entUser = new UserENT();

                        SqlDataReader objSDR = objCmd.ExecuteReader();

                        if (objSDR.HasRows)
                        {
                            while (objSDR.Read())
                            {
                                if (!objSDR["UserID"].Equals(DBNull.Value))
                                {
                                    entUser.UserID = Convert.ToInt32(objSDR["UserID"].ToString().Trim());
                                }
                                if (!objSDR["Email"].Equals(DBNull.Value))
                                {
                                    entUser.Email = objSDR["Email"].ToString().Trim();
                                }
                                if (!objSDR["DisplayName"].Equals(DBNull.Value))
                                {
                                    entUser.DisplayName = objSDR["DisplayName"].ToString().Trim();
                                }
                                if (!objSDR["MobileNo"].Equals(DBNull.Value))
                                {
                                    entUser.MobileNo = objSDR["MobileNo"].ToString().Trim();
                                }

                                if (!objSDR["Address"].Equals(DBNull.Value))
                                {
                                    entUser.Address = objSDR["Address"].ToString().Trim();
                                }

                                break;
                            }
                        }
                        else
                        {
                            Message = "Wrong Email and Passsword";
                            return null;
                        }
                        return entUser;
                        #endregion Read Data & Set Controls

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
        #endregion Select By Email & Password

    }
}