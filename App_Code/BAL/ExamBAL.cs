using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ExamBAL
/// </summary>
/// 
namespace MCQProject
{
    public class ExamBAL
    {
        #region Constructor
        public ExamBAL()
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
        public Boolean Insert(ExamENT entExam)
        {
            ExamDAL dalExam = new ExamDAL();
            if (dalExam.Insert(entExam))
            {
                Message = dalExam.Message;
                return true;
            }
            else
            {
                Message = dalExam.Message;
                return false;
            }
        }
        #endregion Insert

        #region Update
        public Boolean Update(ExamENT entExam)
        {
            ExamDAL dalExam = new ExamDAL();
            if (dalExam.Update(entExam))
            {
                Message = dalExam.Message;
                return true;
            }
            else
            {
                Message = dalExam.Message;
                return false;
            }
        }
        #endregion Update

        #region Delete
        public Boolean Delete(string ID)
        {
            ExamDAL dalExam = new ExamDAL();
            if (dalExam.Delete(ID))
            {
                Message = dalExam.Message;
                return true;
            }
            else
            {
                Message = dalExam.Message;
                return false;
            }
        }
        #endregion Delete

        #region SelectAll
        public DataTable selectAll()
        {
            ExamDAL dalExam = new ExamDAL();
            DataTable dtExam = new DataTable();
            dtExam = dalExam.selectAll();
            Message = dalExam.Message;
            return dtExam;
        }
        #endregion SelectAll

        #region SelectByPK
        public ExamENT selectByPK(string ID)
        {
            ExamDAL dalExam = new ExamDAL();
            ExamENT entExam = new ExamENT();
            entExam = dalExam.selectByPK(ID);
            Message = dalExam.Message;
            return entExam;
        }
        #endregion SelectByPK

        #region SelectForDropDown
        public DataTable selectForDropDown()
        {
            ExamDAL dalExam = new ExamDAL();
            DataTable dtExam = new DataTable();

            dtExam = dalExam.selectForDropDown();
            Message = dalExam.Message;
            return dtExam;
        }
        #endregion SelectForDropDown

        #region SelectByExamSubjectID
        public DataTable SelectByExamSubjectID(string ID)
        {
            ExamDAL dalExam = new ExamDAL();
            DataTable dtExam = new DataTable();

            dtExam = dalExam.SelectByExamSubjectID(ID);
            Message = dalExam.Message;
            return dtExam;
            
        }
        #endregion SelectByExamSubjectID

        #region USERPANEL
        #region UserExamFillUp
        public DataTable UserExamFillUp()
        {

            ExamDAL dalExam = new ExamDAL();
            DataTable dtExam = new DataTable();
            dtExam = dalExam.UserExamFillUp();
            DataTable dt = new DataTable();
            if (dtExam.Rows.Count > 0)
            {
                for (int i = 0; i < dtExam.Rows.Count; i++)
                {
                    int no = Convert.ToInt32(dtExam.Rows[i].ItemArray[2]);

                    if (no == 0)
                    {
                        dtExam.Rows[i].Delete();
                    }
                }
            }
            Message = dalExam.Message;
            return dtExam;
        }
        #endregion UserExamFillUp

        #region UserGetNoOfMCQ
        public DataTable UserGetNoOfMCQ(string ID)
        {

            ExamDAL dalExam = new ExamDAL();
            DataTable dtExam = new DataTable();

            dtExam = dalExam.UserGetNoOfMCQ(ID);
            Message = dalExam.Message;
            return dtExam;
        }
        #endregion UserGetNoOfMCQ
        #endregion USERPANEL
    }
}