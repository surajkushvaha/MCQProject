using System;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.Linq;
using System.Text;
using System.Web;

/// <summary>
/// Summary description for QuestionENT
/// </summary>
/// 

namespace MCQProject{
    public class QuestionENT
    {
        #region Constructor
        public QuestionENT()
	    {
		    //
		    // TODO: Add constructor logic here
		    //
	    }
        #endregion Constructor

        #region _QuestionID
        protected SqlInt32 _QuestionID;
        public SqlInt32 QuestionID
        {
            get
            {
                return _QuestionID;
            }
            set
            {
                _QuestionID = value;
            }
        }
        #endregion _QuestionID

        #region _Question
        protected string _Question;
        public string Question
        {
            get
            {
                return _Question;
            }
            set
            {
                _Question = value;
            }
        }
        #endregion _Question

        #region _OptionA
        protected string _OptionA;
        public string OptionA
        {
            get
            {
                return _OptionA;
            }
            set
            {
                _OptionA = value;
            }
        }
        #endregion _OptionA

        #region _OptionB
        protected string _OptionB;
        public string OptionB
        {
            get
            {
                return _OptionB;
            }
            set
            {
                _OptionB = value;
            }
        }
        #endregion _OptionB

        #region _OptionC
        protected string _OptionC;
        public string OptionC
        {
            get
            {
                return _OptionC;
            }
            set
            {
                _OptionC = value;
            }
        }
        #endregion _OptionC

        #region _OptionD
        protected string _OptionD;
        public string OptionD
        {
            get
            {
                return _OptionD;
            }
            set
            {
                _OptionD = value;
            }
        }
        #endregion _OptionD

        #region _OptionE
        protected string _OptionE;
        public string OptionE
        {
            get
            {
                return _OptionE;
            }
            set
            {
                _OptionE = value;
            }
        }
        #endregion _OptionE

        #region _TrueOption
        protected Char _TrueOption;
        public Char TrueOption
        {
            get
            {
                return _TrueOption;
            }
            set
            {
                _TrueOption = value;
            }
        }
        #endregion _TrueOption

        #region _Solution
        protected string _Solution;
        public string Solution
        {
            get
            {
                return _Solution;
            }
            set
            {
                _Solution = value;
            }
        }
        #endregion _Solution

        #region _ExamTopicID
        protected SqlInt32 _ExamTopicID;
        public SqlInt32 ExamTopicID
        {
            get
            {
                return _ExamTopicID;
            }
            set
            {
                _ExamTopicID = value;
            }
        }
        #endregion _ExamTopicID

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