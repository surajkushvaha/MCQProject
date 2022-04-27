using System;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for FeedbackENT
/// </summary>
/// 
namespace MCQProject
{
    public class FeedbackENT
    {
        #region Constructor
        public FeedbackENT()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        #endregion Constructor

        #region Name
        protected SqlString _Name;
        public SqlString Name
        {
            get
            {
                return _Name;
            }
            set
            {
                _Name = value;
            }
        }
        #endregion Name

        #region FeedbackID
        protected SqlInt32 _FeedbackID;
        public SqlInt32 FeedbackID
        {
            get
            {
                return _FeedbackID;
            }
            set
            {
                _FeedbackID = value;
            }
        }
        #endregion FeedbackID

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

        #region FeedbackDetail
        protected SqlString _FeedbackDetail;
        public SqlString FeedbackDetail
        {
            get
            {
                return  _FeedbackDetail;
            }
            set
            {
                _FeedbackDetail = value;
            }
        }
        #endregion FeedbackDetail

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