using System;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for SubjectENT
/// </summary>
/// 


namespace MCQProject
{
    public class SubjectENT
    {
        #region Constructor
        public SubjectENT()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        #endregion Constructor

        #region _SubjectID
        protected SqlInt32 _SubjectID;
        public SqlInt32 SubjectID
        {
            get
            {
                return _SubjectID;
            }
            set
            {
                _SubjectID = value;
            }
        }
        #endregion _SubjectID

        #region _SubjectName
        protected String _SubjectName;
        public String SubjectName
        {
            get
            {
                return _SubjectName;
            }
            set
            {
                _SubjectName = value;
            }
        }
        #endregion _SubjectName

        #region _CategoryID
        protected SqlInt32 _CategoryID;
        public SqlInt32 CategoryID
        {
            get
            {
                return _CategoryID;
            }
            set
            {
                _CategoryID = value;
            }
        }
        #endregion _CategoryID

        #region _Remarks
        protected String _Remarks;
        public String Remarks
        {
            get
            {
                return _Remarks;
            }
            set
            {
                _Remarks = value;
            }
        }
        #endregion _Remarks

        #region _IsActive
        protected Boolean _IsActive;
        public Boolean IsActive
        {
            get
            {
                return _IsActive;
            }
            set
            {
                _IsActive = value;
            }
        }
        #endregion _IsActive

        #region _Created
        protected DateTime _Created;
        public DateTime Created
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
        #endregion _Created

        #region _Modified
        protected DateTime _Modified;
        public DateTime Modified
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
        #endregion _Modified
    }
}