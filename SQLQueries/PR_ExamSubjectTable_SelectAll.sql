ALTER PROCEDURE [PR_ExamSubjectTable_SelectAll]
AS
SELECT 
	[dbo].[ExamSubjectTable].[ExamSubjectID],
	[dbo].[ExamSubjectTable].[ExamSubjectName],
	[dbo].[ExamCategoryTable].[ExamCategoryName],
	[dbo].[ExamSubjectTable].[IsActive]

FROM [dbo].[ExamSubjectTable]
INNER JOIN [dbo].[ExamCategoryTable] 
ON [dbo].[ExamCategoryTable].[ExamCategoryID] = [dbo].[ExamSubjectTable].[ExamSubjectID]
ORDER BY [dbo].[ExamCategoryTable].[ExamCategoryName],[dbo].[ExamSubjectTable].[ExamSubjectName]