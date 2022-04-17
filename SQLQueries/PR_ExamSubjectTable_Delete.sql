CREATE PROCEDURE [dbo].[PR_ExamSubjectTable_Delete]
@ExamSubjectID int
AS
DELETE FROM [dbo].[ExamSubjectTable]
WHERE [dbo].[ExamSubjectTable].[ExamSubjectID] = @ExamSubjectID
