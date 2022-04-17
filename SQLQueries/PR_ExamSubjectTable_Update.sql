CREATE PROCEDURE [dbo].[PR_ExamSubjectTable_Update]
@ExamSubjectID int,
@ExamSubjectName nvarchar(100),
@ExamCategoryID int,
@Remarks nvarchar(250),
@IsActive bit,
@Modified datetime
AS
UPDATE [dbo].[ExamSubjectTable]
SET
	[dbo].[ExamSubjectTable].[ExamSubjectName] = @ExamSubjectName,
	[dbo].[ExamSubjectTable].[ExamCategoryID]= @ExamCategoryID,
	[dbo].[ExamSubjectTable].[Remarks] = @Remarks,
	[dbo].[ExamSubjectTable].[IsActive] = @IsActive,
	[dbo].[ExamSubjectTable].[Modified] = GETDATE()
WHERE [dbo].[ExamSubjectTable].[ExamSubjectID] = @ExamSubjectID 