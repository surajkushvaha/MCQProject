CREATE PROCEDURE [dbo].[PR_ExamTopicTable_Delete]
@ExamTopicID int
AS
DELETE FROM [dbo].[ExamTopicTable]
WHERE [dbo].[ExamTopicTable].[ExamTopicID] = @ExamTopicID