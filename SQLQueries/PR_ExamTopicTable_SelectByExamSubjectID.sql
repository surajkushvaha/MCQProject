CREATE PROCEDURE [dbo].[PR_ExamTopicTable_SelectByExamSubjectID]
@ExamSubjectID int
AS
SELECT 
[dbo].[ExamTopicTable].[ExamTopicID],
[dbo].[ExamTopicTable].[ExamTopicName]
FROM 
[dbo].[ExamTopicTable] 
WHERE
[dbo].[ExamTopicTable].[ExamSubjectID] = @ExamSubjectID