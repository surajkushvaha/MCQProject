CREATE PROCEDURE [PR_ExamQuestionTable_Delete]
@QuestionID int
AS
DELETE  FROM [dbo].[ExamQuestionTable]
WHERE [dbo].[ExamQuestionTable].[QuestionID] = @QuestionID