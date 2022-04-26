CREATE PROCEDURE [PR_ExamCategoryTable_SelectByExamSubjectID]
@ExamSubjectID int
AS
SELECT
[dbo].[ExamCategoryTable].[ExamCategoryID],
	[dbo].[ExamCategoryTable].[ExamCategoryName]
FROM [dbo].[ExamCategoryTable]
INNER JOIN [dbo].[ExamSubjectTable]
ON [dbo].[ExamSubjectTable].[ExamCategoryID] = [dbo].[ExamCategoryTable].[ExamCategoryID]
WHERE [dbo].[ExamSubjectTable].[ExamSubjectID] = @ExamSubjectID
ORDER BY [dbo].[ExamCategoryTable].[ExamCategoryName]