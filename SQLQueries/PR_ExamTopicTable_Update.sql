CREATE PROCEDURE [dbo].[PR_ExamTopicTable_Update]
@ExamTopicID int,
@ExamTopicName nvarchar(100),
@ExamSubjectID int,
@Remarks nvarchar(250),
@IsActive bit
AS
UPDATE [dbo].[ExamTopicTable]
SET
	[dbo].[ExamTopicTable].[ExamTopicName] = @ExamTopicName,
	[dbo].[ExamTopicTable].[ExamSubjectID] = @ExamSubjectID,
	[dbo].[ExamTopicTable].[Remarks] = @Remarks,
	[dbo].[ExamTopicTable].[IsActive] = @IsActive,
	[dbo].[ExamTopicTable].[Modified] = GETDATE()
WHERE [dbo].[ExamTopicTable].[ExamTopicID] = @ExamTopicID 