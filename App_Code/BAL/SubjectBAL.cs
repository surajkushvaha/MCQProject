using MCQProject;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for SubjectBAL
/// </summary>
public class SubjectBAL
{
    #region Constructor
    public SubjectBAL()
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
    public Boolean Insert(SubjectENT entSubject)
    {
        SubjectDAL dalSubject = new SubjectDAL();
        if (dalSubject.Insert(entSubject))
        {
            Message = dalSubject.Message;
            return true;
        }
        else
        {
            Message = dalSubject.Message;
            return false;
        }
    }
    #endregion Insert

    #region Update
    public Boolean Update(SubjectENT entSubject)
    {
        SubjectDAL dalSubject = new SubjectDAL();
        if (dalSubject.Update(entSubject))
        {
            Message = dalSubject.Message;
            return true;
        }
        else
        {
            Message = dalSubject.Message;
            return false;
        }
    }
    #endregion Update

    #region Delete
    public Boolean Delete(string ID)
    {
        SubjectDAL dalSubject = new SubjectDAL();
        if (dalSubject.Delete(ID))
        {
            Message = dalSubject.Message;
            return true;
        }
        else
        {
            Message = dalSubject.Message;
            return false;
        }
    }
    #endregion Delete

    #region SelectAll
    public DataTable selectAll()
    {
        SubjectDAL dalSubject = new SubjectDAL();
        DataTable dtSubject = new DataTable();
        dtSubject = dalSubject.selectAll();
        Message = dalSubject.Message;
        return dtSubject;
    }
    #endregion SelectALl

    #region SelectByPK
    public SubjectENT selectByPK(string ID)
    {
        SubjectDAL dalSubject = new SubjectDAL();
        SubjectENT entSubject = new SubjectENT();
        entSubject = dalSubject.selectByPK(ID);
        Message = dalSubject.Message;
        return entSubject;
    }
    #endregion SelectByPK

    #region SelectByExamCategoryID
    public DataTable SelectByExamCategoryID(string ID)
    {

        SubjectDAL dalSubject = new SubjectDAL();
        DataTable dtSubject = new DataTable();
        dtSubject = dalSubject.SelectByExamCategoryID(ID);
        Message = dalSubject.Message;
        return dtSubject;
        
    }
    #endregion SelectByExamCategoryID

    #region SelectByExamTopicID
    public DataTable SelectByExamTopicID(string ID)
    {
        SubjectDAL dalSubject = new SubjectDAL();
        DataTable dtSubject = new DataTable();
        dtSubject = dalSubject.SelectByExamTopicID(ID);
        Message = dalSubject.Message;
        return dtSubject;
    }
    #endregion SelectByExamTopicID

    #region USERPANEL
    #region UserSubjectFillUp
    public DataTable UserSubjectFillUp(string ID)
    {
        SubjectDAL dalSubject = new SubjectDAL();
        DataTable dtSubject = new DataTable();
        dtSubject = dalSubject.UserSubjectFillUp(ID);

        //if (dtSubject.Rows.Count > 0)
        //{
        //    for (int i = 0; i < dtSubject.Rows.Count; i++)
        //    {
        //        int no = Convert.ToInt32(dtSubject.Rows[i].ItemArray[2]);

        //        if (no == 0)
        //        {
        //            dtSubject.Rows[i].Delete();
        //        }
        //    }
        //}
        Message = dalSubject.Message;
        return dtSubject;
    }
    #endregion UserSubjectFillUp
    #endregion USERPANEL
}