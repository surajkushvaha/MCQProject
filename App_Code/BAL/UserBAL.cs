﻿
using System;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for UserBAL
/// </summary>
namespace MCQProject
{
    public class UserBAL
    {
        #region Constructor
        public UserBAL()
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

        #region Insert
        public Boolean Insert(UserENT entUser)
        {
            UserDAL dalUser = new UserDAL();
            if (dalUser.Insert(entUser))
            {
                return true;
            }
            else
            {
                Message = dalUser.Message;
                return false;
            }
        }
        #endregion Insert     

        #region Update

        public Boolean Update(UserENT entUser)
        {
            UserDAL dalUser = new UserDAL();
            if (dalUser.Update(entUser))
            {
                return true;
            }
            else
            {
                Message = dalUser.Message;
                return false;
            }
        }
        #endregion Update

        #region CheckForInsert

        public Boolean CheckForInsert(SqlString Email)
        {
            UserDAL dalUser = new UserDAL();
            if (dalUser.CheckForInsert(Email))
            {
                return true;
            }
            else
            {
                Message = dalUser.Message;
                return false;
            }
        }
        #endregion CheckForInsert

        #region CheckForPassword

        public Boolean CheckPassword(SqlInt32 UserID,SqlString Password)
        {
            UserDAL dalUser = new UserDAL();
            if (dalUser.CheckPassword(UserID,Password))
            {
                return true;
            }
            else
            {
                Message = dalUser.Message;
                return false;
            }
        }
        #endregion CheckForPassword

        #region SelectByUserID
        public UserENT SelectByUserID(SqlInt32 UserID)
        {
            UserDAL dalUser = new UserDAL();
            UserENT entUser = new UserENT();
            entUser = dalUser.SelectByUserID(UserID);
            Message = dalUser.Message;
            return entUser;
        }
        #endregion SelectByUserID

        #region SelctByEmailPassword
        public UserENT SelctByEmailPassword(SqlString Email, SqlString Password)
        {
            UserDAL dalUser = new UserDAL();
            UserENT entUser = new UserENT();

            entUser = dalUser.SelctByEmailPassword(Email, Password);
            Message = dalUser.Message;
            return entUser;
        }
        #endregion SelctByEmailPassword
    }
}