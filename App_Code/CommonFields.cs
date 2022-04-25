using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

/// <summary>
/// Summary description for CommonDropDown
/// </summary>
/// 
namespace MCQProject
{
    public class CommonFields
    {

        #region Constructor
        public CommonFields()
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

        #region SelectForDropDown
        public static void selectForDropDown(DropDownList ddl)
        {
            ExamBAL balExam = new ExamBAL();
            ddl.DataSource = balExam.selectForDropDown();
            ddl.DataTextField = "ExamCategoryName";
            ddl.DataValueField = "ExamCategoryID";
            ddl.DataBind();
            ddl.Items.Insert(0, new ListItem("Select Exam", "0"));
           
        }
        #endregion SelectForDropDown

        #region SelectByExamCategoryID
        public static void selectByExamCategoryID(DropDownList ddl,string ID)
        {

            SubjectBAL balSubject = new SubjectBAL();
            ddl.DataSource = balSubject.SelectByExamCategoryID(ID);
            ddl.DataTextField = "ExamSubjectName";
            ddl.DataValueField = "ExamSubjectID";
            ddl.DataBind();
            ddl.Items.Insert(0, new ListItem("Select Subject", "0"));

        }
        #endregion SelectByExamCategoryID

        #region SelectByExamSubjectID
        public static void selectByExamCategoryID(DropDownList ddl, string ID)
        {

            TopicBAL balSubject = new TopicBAL();
            ddl.DataSource = balSubject.SelectByExamSubjectID(ID);
            ddl.DataTextField = "ExamTopicName";
            ddl.DataValueField = "ExamTopicID";
            ddl.DataBind();
            ddl.Items.Insert(0, new ListItem("Select Topic", "0"));

        }
        #endregion SelectByExamSubjectID
    }


}