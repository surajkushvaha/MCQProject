using MCQProject;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for QuestionBAL
/// </summary>
public class QuestionBAL
{
	public QuestionBAL()
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
        QuestionDAL dalQuestion = new QuestionDAL();
        if (dalQuestion.Insert(entQuestion))
        {
            Message = dalQuestion.Message;
            return true;
        }
        else
        {
            Message = dalQuestion.Message;
            return false;
        }
    }
    #endregion Insert

    #region Update
    public Boolean Update(QuestionENT entQuestion)
    {
        QuestionDAL dalQuestion = new QuestionDAL();
        if (dalQuestion.Update(entQuestion))
        {
            Message = dalQuestion.Message;
            return true;
        }
        else
        {
            Message = dalQuestion.Message;
            return false;
        }
    }
    #endregion Update

    #region Delete
    public Boolean Delete(string ID)
    {
        QuestionDAL dalQuestion = new QuestionDAL();
        if (dalQuestion.Delete(ID))
        {
            Message = dalQuestion.Message;
            return true;
        }
        else
        {
            Message = dalQuestion.Message;
            return false;
        }
    }
    #endregion Delete

    #region SelectAll
    public DataTable selectAll()
    {
        QuestionDAL dalQuestion = new QuestionDAL();
        DataTable dtQuestion = new DataTable();
        dtQuestion = dalQuestion.selectForGrid();
        Message = dalQuestion.Message;
        return dtQuestion;
    }
    #endregion SelectALl

    #region SelectByPK
    public QuestionENT selectByPK(string ID)
    {
        QuestionDAL dalQuestion = new QuestionDAL();
        QuestionENT entQuestion = new QuestionENT();
        entQuestion = dalQuestion.selectByPK(ID);
        Message = dalQuestion.Message;
        return entQuestion;
    }
    #endregion SelectByPK


    #region UserPanel
    #region UserSelectAllBySubjectIDTopicID
    public DataTable UserSelectAllBySubjectIDTopicID(string SubjectID, string TopicID)
    {
        QuestionDAL dalQuestion = new QuestionDAL();
        DataTable dtQuestion = new DataTable();
        dtQuestion = dalQuestion.UserSelectAllBySubjectIDTopicID(SubjectID,TopicID);
        Message = dalQuestion.Message;
        return dtQuestion;
    }
    #endregion UserSelectAllBySubjectIDTopicID


    #region UserSelectAllBySubjectID
    public DataTable UserSelectAllBySubjectID(string SubjectID)
    {
        QuestionDAL dalQuestion = new QuestionDAL();
        DataTable dtQuestion = new DataTable();
        dtQuestion = dalQuestion.UserSelectAllBySubjectID(SubjectID);
        Message = dalQuestion.Message;
        return dtQuestion;
    }
    #endregion UserSelectAllBySubjectID


    #region TestUserSelectAllByExamID
    public DataTable TestUserSelectAllByExamID(string ExamID, string NoMCQ)
    {
        QuestionDAL dalQuestion = new QuestionDAL();
        DataTable dtQuestion = new DataTable();
        dtQuestion = dalQuestion.TestUserSelectAllByExamID(ExamID,NoMCQ);
        Message = dalQuestion.Message;
        return dtQuestion;
    }
    #endregion TestUserSelectAllByExamID

    #region TestUserSelectAllBySubjectID
    public DataTable TestUserSelectAllBySubjectID(string SubjectID, string ExamID, string NoMCQ)
    {
        QuestionDAL dalQuestion = new QuestionDAL();
        DataTable dtQuestion = new DataTable();
        dtQuestion = dalQuestion.TestUserSelectAllBySubjectID(SubjectID,ExamID,NoMCQ);
        Message = dalQuestion.Message;
        return dtQuestion;
    }
    #endregion TestUserSelectAllBySubjectID

    #endregion UserPanel
}