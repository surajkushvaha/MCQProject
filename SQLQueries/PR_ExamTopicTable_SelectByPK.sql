CREATE PROCEDURE [dbo].[PR_ExamTopicTable_SelectByPK]
@ExamTopicID int
AS
SELECT
[dbo].[ExamTopicTable].[ExamSubjectID],
[dbo].[ExamTopicTable].[ExamTopicName],
[dbo].[ExamTopicTable].[Remarks],
[dbo].[ExamTopicTable].[IsActive]
FROM [dbo].[ExamTopicTable]
WHERE [dbo].[ExamTopicTable].[ExamTopicID]=@ExamTopicID
	