CREATE PROCEDURE [dbo].[PR_ExamCategoryTable_Insert]
@ExamCategoryName varchar(100),
@Description nvarchar(500),
@Remarks nvarchar(250),
@IsActive bit
AS
INSERT INTO [dbo].[ExamCategoryTable]
(
	ExamCategoryName,
	Description,
	Remarks,
	IsActive
)
VALUES
(
	@ExamCategoryName,
	@Description,
	@Remarks,
	@IsActive
)