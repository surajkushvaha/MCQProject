using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for FeedbackBAL
/// </summary>
/// 
namespace MCQProject{
public class FeedbackBAL
{
    #region Constructor
    public FeedbackBAL()
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
        public Boolean Insert(FeedbackENT entFeedback)
        {
            FeedbackDAL dalFeedback = new FeedbackDAL();
            if (dalFeedback.Insert(entFeedback))
            {
                return true;
            }
            else
            {
                Message = dalFeedback.Message;
                return false;
            }
        }
        #endregion Insert     

    #region SelectAll
        public DataTable selectAll()
        {
            FeedbackDAL dalFeedback = new FeedbackDAL();
            DataTable dtFeedback = new DataTable();
            dtFeedback = dalFeedback.selectAll();
            Message = dalFeedback.Message;
            return dtFeedback;
        }
        #endregion SelectALl
}
}