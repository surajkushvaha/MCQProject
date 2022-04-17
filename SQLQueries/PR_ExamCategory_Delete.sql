CREATE PROCEDURE [dbo].[PR_ExamCategoryTable_Delete]
@ExamCategoryID int
AS
DELETE FROM [dbo].[ExamCategoryTable]
WHERE [dbo].[ExamCategoryTable].[ExamCategoryID] = @ExamCategoryID
