ALTER PROCEDURE [PR_ExamQuestionTable_Update]
@QuestionID int,
@Question nvarchar(MAX),
@OptionA nvarchar(MAX),
@OptionB nvarchar(MAX),
@OptionC nvarchar(MAX),
@OptionD nvarchar(MAX),
@OptionE nvarchar(MAX),
@TrueOption nvarchar(1),
@Solution nvarchar(MAX),
@ExamTopicID int,
@Remarks nvarchar(250),
@IsActive bit
AS
UPDATE [dbo].[ExamQuestionTable]
SET 
[dbo].[ExamQuestionTable].[Question] = @Question,
[dbo].[ExamQuestionTable].[OptionA] = @OptionA,
[dbo].[ExamQuestionTable].[OptionB] = @OptionB,
[dbo].[ExamQuestionTable].[OptionC] = @OptionC,
[dbo].[ExamQuestionTable].[OptionD] = @OptionD,
[dbo].[ExamQuestionTable].[OptionE] = @OptionE,
[dbo].[ExamQuestionTable].[TrueOption] = @TrueOption,
[dbo].[ExamQuestionTable].[Solution] = @Solution,
[dbo].[ExamQuestionTable].[ExamTopicID] = @ExamTopicID,
[dbo].[ExamQuestionTable].[Remarks] = @Remarks,
[dbo].[ExamQuestionTable].[IsActive] = @IsActive,
[dbo].[ExamQuestionTable].[Modified] = GETDATE()
WHERE [dbo].[ExamQuestionTable].[QuestionID] = @QuestionID