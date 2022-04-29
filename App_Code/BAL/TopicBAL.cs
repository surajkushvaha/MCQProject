using MCQProject;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for TopicBAL
/// </summary>
public class TopicBAL
{
    #region Constructor
    public TopicBAL()
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
    public Boolean Insert(TopicENT entTopic)
    {
        TopicDAL dalTopic = new TopicDAL();
        if (dalTopic.Insert(entTopic))
        {
            Message = dalTopic.Message;
            return true;
        }
        else
        {
            Message = dalTopic.Message;
            return false;
        }
    }
    #endregion Insert

    #region Update
    public Boolean Update(TopicENT entTopic)
    {
        TopicDAL dalTopic = new TopicDAL();
        if (dalTopic.Update(entTopic))
        {
            Message = dalTopic.Message;
            return true;
        }
        else
        {
            Message = dalTopic.Message;
            return false;
        }
    }
    #endregion Update

    #region Delete
    public Boolean Delete(string ID)
    {
        TopicDAL dalTopic = new TopicDAL();
        if (dalTopic.Delete(ID))
        {
            Message = dalTopic.Message;
            return true;
        }
        else
        {
            Message = dalTopic.Message;
            return false;
        }
    }
    #endregion Delete

    #region SelectAll
    public DataTable selectAll()
    {
        TopicDAL dalTopic = new TopicDAL();
        DataTable dtTopic = new DataTable();
        dtTopic = dalTopic.selectAll();
        Message = dalTopic.Message;
        return dtTopic;
    }
    #endregion SelectALl

    #region SelectByPK
    public TopicENT selectByPK(string ID)
    {
        TopicDAL dalTopic = new TopicDAL();
        TopicENT entTopic = new TopicENT();
        entTopic = dalTopic.selectByPK(ID);
        Message = dalTopic.Message;
        return entTopic;
    }
    #endregion SelectByPK

    #region SelectByExamSubjectID
    public DataTable SelectByExamSubjectID(string ID)
    {

        TopicDAL dalTopic = new TopicDAL();
        DataTable dtTopic = new DataTable();
        dtTopic = dalTopic.SelectByExamSubjectID(ID);
        Message = dalTopic.Message;
        return dtTopic;

    }
    #endregion SelectByExamSubjectID

    #region USERPANEL
    #region UserTopicFillUp
    public DataTable UserTopicFillUp(string ID)
    {
        TopicDAL dalTopic = new TopicDAL();
        DataTable dtTopic = new DataTable();
        dtTopic = dalTopic.UserTopicFillUp(ID);
        Message = dalTopic.Message;
        return dtTopic;
    }
    #endregion UserTopicFillUp
    #endregion USERPANEL
}