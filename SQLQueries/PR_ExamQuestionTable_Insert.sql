CREATE PROCEDURE [PR_ExamQuestionTable_Insert]
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
INSERT INTO [dbo].[ExamQuestionTable]
(
	[dbo].[ExamQuestionTable].[Question],
	[dbo].[ExamQuestionTable].[OptionA],
	[dbo].[ExamQuestionTable].[OptionB],
	[dbo].[ExamQuestionTable].[OptionC],
	[dbo].[ExamQuestionTable].[OptionD],
	[dbo].[ExamQuestionTable].[OptionE],
	[dbo].[ExamQuestionTable].[TrueOption],
	[dbo].[ExamQuestionTable].[Solution],
	[dbo].[ExamQuestionTable].[ExamTopicID],
	[dbo].[ExamQuestionTable].[Remarks],
	[dbo].[ExamQuestionTable].[IsActive]

)
VALUES(
@Question,
@OptionA,
@OptionB,
@OptionD,
@OptionC,
@OptionE,
@TrueOption,
@Solution,
@ExamTopicID,
@Remarks,
@IsActive
)