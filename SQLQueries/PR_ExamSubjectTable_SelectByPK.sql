CREATE PROCEDURE [PR_ExamSubjectTable_SelectByPK]
@ExamSubjectID int
AS
SELECT
[dbo].[ExamSubjectTable].[ExamCategoryID],
[dbo].[ExamSubjectTable].[ExamSubjectName],
[dbo].[ExamSubjectTable].[Remarks],
[dbo].[ExamSubjectTable].[IsActive]
FROM [dbo].[ExamSubjectTable]
WHERE [dbo].[ExamSubjectTable].[ExamSubjectID]=@ExamSubjectID
	