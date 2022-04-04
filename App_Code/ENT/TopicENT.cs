using System;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for TopicENT
/// </summary>
/// 
namespace MCQProject
{
    public class TopicENT
    {

        #region Constructor
        public TopicENT()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        #endregion Constructor

        #region _TopicID
        protected SqlInt32 _TopicID;
        public SqlInt32 TopicID
        {
            get
            {
                return _TopicID;
            }
            set
            {
                _TopicID = value;
            }
        }
        #endregion _TopicID

        #region _TopicName
        protected String _TopicName;
        public String TopicName
        {
            get
            {
                return _TopicName;
            }
            set
            {
                _TopicName = value;
            }
        }
        #endregion _TopicName

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