using System;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for UserENT
/// </summary>
namespace MCQProject
{
    public class UserENT
    {
        #region Constructor
        public UserENT()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        #endregion Constructor

        #region UserID
        protected SqlInt32 _UserID;

        public SqlInt32 UserID
        {
            get
            {
                return _UserID;
            }
            set
            {
                _UserID = value;
            }
        }
        #endregion UserID

        #region Email
        protected SqlString _Email;

        public SqlString Email
        {
            get
            {
                return _Email;
            }
            set
            {
                _Email = value;
            }
        }
        #endregion Email

        #region Password
        protected SqlString _Password;
        public SqlString Password
        {
            get
            {
                return _Password;
            }
            set
            {
                _Password = value;
            }
        }
        #endregion Password

        #region DisplayName
        protected SqlString _DisplayName;
        public SqlString DisplayName
        {
            get
            {
                return _DisplayName;
            }
            set
            {
                _DisplayName = value;
            }
        }
        #endregion DisplayName

        #region MobileNo
        protected SqlString _MobileNo;
        public SqlString MobileNo
        {
            get
            {
                return _MobileNo;
            }
            set
            {
                _MobileNo = value;
            }
        }
        #endregion MobileNo

        #region PhotoPath
        protected SqlString _PhotoPath;

        public SqlString PhotoPath
        {
            get
            {
                return _PhotoPath;
            }
            set
            {
                _PhotoPath = value;
            }
        }
        #endregion PhotoPath

        #region FileType
        protected SqlString _PhotoFileType;

        public SqlString PhotoFileType
        {
            get
            {
                return _PhotoFileType;
            }
            set
            {
                _PhotoFileType = value;
            }
        }
        #endregion FileType

        #region FileExtension
        protected SqlString _PhotoFileExtension;

        public SqlString PhotoFileExtension
        {
            get
            {
                return _PhotoFileExtension;
            }
            set
            {
                _PhotoFileExtension = value;
            }
        }
        #endregion FileType

        #region FileSize
        protected SqlString _PhotoFileSize;

        public SqlString PhotoFileSize
        {
            get
            {
                return _PhotoFileSize;
            }
            set
            {
                _PhotoFileSize = value;
            }
        }
        #endregion FileSize

        #region Address
        protected SqlString _Address;
        public SqlString Address
        {
            get
            {
                return _Address;
            }
            set
            {
                _Address = value;
            }
        }
        #endregion Address

        #region Created
        protected SqlDateTime _Created;

        public SqlDateTime Created
        {
            get
            {
                return _Created;
            }
            set
            {
                _Created = value;
            }
        }
        #endregion Created

        #region Modified
        protected SqlDateTime _Modified;

        public SqlDateTime Modified
        {
            get
            {
                return _Modified;
            }
            set
            {
                _Modified = value;
            }
        }
        #endregion Modified
    }
}