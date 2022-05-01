ALTER PROCEDURE [PR_ExamQuestionTable_UserSelectAllBySubjectIDTopicID]
@SubjectID int,
@TopicID int
AS
SELECT 
	QuestionID,
	Question,
	OptionA,
	OptionB,
	OptionC,
	OptionD,
	OptionE,
	TrueOption,
	Solution,
	ExamTopicName,
	ExamQuestionTable.Remarks
FROM [dbo].[ExamQuestionTable]
INNER JOIN dbo.ExamTopicTable ON dbo.ExamQuestionTable.ExamTopicID = dbo.ExamTopicTable.ExamTopicID
INNER JOIN dbo.ExamSubjectTable ON dbo.ExamSubjectTable.ExamSubjectID = dbo.ExamTopicTable.ExamSubjectID
WHERE ExamSubjectTable.ExamSubjectID= @SubjectID AND ExamQuestionTable.ExamTopicID = @TopicID AND ExamQuestionTable.IsActive = 1 
AND ExamTopicTable.IsActive = 1 AND ExamSubjectTable.IsActive = 1 