CREATE PROCEDURE [PR_ExamQuestionTable_UserSelectAllBySubjectIDForTest]
@SubjectID int,
@ExamID int,
@noOfMCQ  int
AS
SELECT TOP (@noOfMCQ)
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
INNER JOIN dbo.ExamCategoryTable ON dbo.ExamCategoryTable.ExamCategoryID = dbo.ExamSubjectTable.ExamCategoryID
WHERE ExamSubjectTable.ExamSubjectID= @SubjectID AND ExamCategoryTable.ExamCategoryID= @ExamID AND ExamQuestionTable.IsActive = 1 
AND ExamTopicTable.IsActive = 1 AND ExamSubjectTable.IsActive = 1 
ORDER BY NEWID()