CREATE PROCEDURE [PR_ExamSubjectTable_SelectByExamTopicID]
@ExamTopicID int
AS
SELECT
[dbo].[ExamSubjectTable].[ExamSubjectID],
	[dbo].[ExamSubjectTable].[ExamSubjectName]
FROM [dbo].[ExamSubjectTable]
INNER JOIN [dbo].[ExamTopicTable]
ON [dbo].[ExamTopicTable].[ExamSubjectID] = [dbo].[ExamSubjectTable].[ExamSubjectID]
WHERE [dbo].[ExamTopicTable].[ExamTopicID] = @ExamTopicID
ORDER BY [dbo].[ExamSubjectTable].[ExamSubjectName]