ALTER PROCEDURE [PR_ExamTopicTable_UserTopicFillUp]
@ExamSubjectID int
AS
SELECT [dbo].[ExamTopicTable].[ExamTopicID], [dbo].[ExamTopicTable].[ExamTopicName],
(SELECT COUNT(*) FROM [dbo].[ExamQuestionTable]
WHERE [dbo].[ExamTopicTable].[ExamTopicID] = [dbo].[ExamQuestionTable].[ExamTopicID]) AS QuestionNo
FROM [dbo].[ExamTopicTable]
WHERE [dbo].[ExamTopicTable].[IsActive] = 1 AND [dbo].[ExamTopicTable].[ExamSubjectID] = @ExamSubjectID
ORDER BY [dbo].[ExamTopicTable].[ExamTopicName]



