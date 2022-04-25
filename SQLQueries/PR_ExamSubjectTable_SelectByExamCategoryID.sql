CREATE PROCEDURE [dbo].[PR_ExamSubjectTable_SelectByExamCategoryID]
@ExamCategoryID int
AS
SELECT 
[dbo].[ExamSubjectTable].[ExamSubjectID],
[dbo].[ExamSubjectTable].[ExamSubjectName]
FROM 
[dbo].[ExamSubjectTable] 
WHERE
[dbo].[ExamSubjectTable].[ExamCategoryID] = @ExamCategoryID