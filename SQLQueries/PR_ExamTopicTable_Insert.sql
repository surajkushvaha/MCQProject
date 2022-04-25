CREATE PROCEDURE [PR_ExamTopicTable_Insert]
@ExamTopicName nvarchar(100),
@ExamSubjectID int,
@Remarks nvarchar,
@IsActive bit
AS
INSERT INTO [dbo].[ExamTopicTable]
(
	ExamTopicName,
	ExamSubjectID,
	Remarks,
	IsActive
)
VALUES
(
	@ExamTopicName,
	@ExamSubjectID,
	@Remarks,
	@IsActive
)
