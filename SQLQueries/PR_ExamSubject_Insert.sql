CREATE PROCEDURE [dbo].[PR_ExamSubjectTable_Insert]
@ExamCategoryID int,
@ExamSubjectName nvarchar(100),
@Remarks nvarchar(250),
@IsActive bit
AS
INSERT INTO [dbo].[ExamSubjectTable]
(
	[dbo].[ExamSubjectName],
	[dbo].[ExamCategoryID],
	[dbo].[Remarks],
	[dbo].[IsActive]
)
VALUES
(
	@ExamSubjectName,
	@ExamCategoryID,
	@Remarks,
	@IsActive
)
