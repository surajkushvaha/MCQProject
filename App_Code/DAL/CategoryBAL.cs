using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CategoryBAL
/// </summary>
/// 
namespace MCQProject
{
    public class CategoryBAL:DatabaseConfig
    {
        #region Constructor
        public CategoryBAL()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        #endregion Constructor

        #region Local Variable
        protected String _Message;
        public String Message
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
        #endregion Local Variable


        #region Insert
        //public Boolean Insert(CategoryENT entCategory)
        //{
        //    using (SqlConnection objCon = new SqlConnection(ConnectionString))
        //    {
        //        if (objCon.State != ConnectionState.Open)
        //        {
        //            objCon.Open();
        //        }
        //        using (SqlCommand objCmd = objCon.CreateCommand())
        //        {
        //            try
        //            {
        //                objCmd.CommandType = CommandType.StoredProcedure;
        //                objCmd.CommandText = "";
        //            }
        //            catch
        //            {

        //            }
        //        }
        //    }
        //}
        #endregion Insert

        #region Update 
        #endregion Update

        #region Delete 
        #endregion Delete

        #region SelectAll
        #endregion SelectAll


    }
}