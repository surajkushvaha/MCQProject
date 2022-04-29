ALTER PROCEDURE [PR_ExamSubjectTable_UserSubjectFillUp]
@ExamCategoryID int
AS
SELECT [dbo].[ExamSubjectTable].[ExamSubjectID], [dbo].[ExamSubjectTable].[ExamSubjectName],
(SELECT COUNT(*) FROM [dbo].[ExamTopicTable]
WHERE [dbo].[ExamSubjectTable].[ExamSubjectID] = [dbo].[ExamTopicTable].[ExamSubjectID]) AS TopicNo
FROM [dbo].[ExamSubjectTable]
WHERE [dbo].[ExamSubjectTable].[IsActive] = 1 AND [dbo].[ExamSubjectTable].[ExamCategoryID] = @ExamCategoryID
ORDER BY [dbo].[ExamSubjectTable].[ExamSubjectName]
