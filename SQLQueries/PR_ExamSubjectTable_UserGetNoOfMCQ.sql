ALTER PROCEDURE [PR_ExamCategoryTable_UserGetNoOfMCQ]
@ExamCategoryID int
AS
SELECT COUNT(*) as MCQTotal FROM [dbo].[ExamCategoryTable]
INNER JOIN dbo.ExamSubjectTable on dbo.ExamCategoryTable.ExamCategoryID = dbo.ExamSubjectTable.ExamCategoryID
INNER JOIN dbo.ExamTopicTable on dbo.ExamSubjectTable.ExamSubjectID = dbo.ExamTopicTable.ExamSubjectID
INNER JOIN dbo.ExamQuestionTable on dbo.ExamQuestionTable.ExamTopicID = dbo.ExamTopicTable.ExamTopicID
WHERE 
[dbo].[ExamCategoryTable].[IsActive] = 1 AND
[dbo].[ExamSubjectTable].[IsActive] = 1 AND
[dbo].[ExamTopicTable].[IsActive] = 1 AND
[dbo].[ExamQuestionTable].[IsActive] = 1 AND
[dbo].ExamCategoryTable.ExamCategoryID = @ExamCategoryID 