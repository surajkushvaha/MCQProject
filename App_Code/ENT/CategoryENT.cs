using System;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CategoryENT
/// </summary>
/// 

namespace MCQProject
{
    public class CategoryENT
    {

        #region Constructor
        public CategoryENT()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        #endregion Constructor

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

        #region _CategoryName
        protected String _CategoryName;
        public String CategoryName
        {
            get
            {
                return _CategoryName;
            }
            set
            {
                _CategoryName = value;
            }
        }
        #endregion _CategoryName

        #region _Description
        protected String _Description;
        public String Description
        {
            get
            {
                return _Description;
            }
            set
            {
                _Description = value;
            }
        }
        #endregion _Description

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