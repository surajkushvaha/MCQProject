CREATE PROCEDURE [dbo].[PR_ExamCategoryTable_DropDownList]
AS
SELECT 
	[dbo].[ExamCategoryTable].[ExamCategoryID],
	[dbo].[ExamCategoryTable].[ExamCategoryName]
FROM [dbo].[ExamCategoryTable]
ORDER BY [dbo].[ExamCategoryTable].[ExamCategoryName]