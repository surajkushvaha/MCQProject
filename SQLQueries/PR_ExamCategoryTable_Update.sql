ALTER PROCEDURE [dbo].[PR_ExamCategoryTable_Update]
@ExamCategoryID int,
@ExamCategoryName nvarchar(100),
@Description nvarchar(500),
@Remarks nvarchar(250),
@IsActive bit,
@Modified datetime
AS
UPDATE [dbo].[ExamCategoryTable]
SET
	[dbo].[ExamCategoryTable].[ExamCategoryName] = @ExamCategoryName,
	[dbo].[ExamCategoryTable].[Description] = @Description,
	[dbo].[ExamCategoryTable].[Remarks] = @Remarks,
	[dbo].[ExamCategoryTable].[IsActive] = @IsActive,
	[dbo].[ExamCategoryTable].[Modified] = GETDATE()
WHERE [dbo].[ExamCategoryTable].[ExamCategoryID] = @ExamCategoryID 