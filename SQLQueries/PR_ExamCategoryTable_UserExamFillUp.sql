ALTER PROCEDURE [PR_ExamCategoryTable_UserExamFillUp]
AS
SELECT [dbo].[ExamCategoryTable].[ExamCategoryID], [dbo].[ExamCategoryTable].[ExamCategoryName],
(SELECT COUNT(*) FROM [dbo].[ExamSubjectTable]
WHERE [dbo].[ExamCategoryTable].[ExamCategoryID] = [dbo].[ExamSubjectTable].[ExamCategoryID]) AS SubjectNo
FROM [dbo].[ExamCategoryTable]
WHERE [dbo].[ExamCategoryTable].[IsActive] = 1
ORDER BY [dbo].[ExamCategoryTable].[ExamCategoryName]

