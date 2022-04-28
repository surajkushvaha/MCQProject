CREATE PROCEDURE [PR_ExamQuestionTable_SelectForGrid]
AS
SELECT 
[dbo].[ExamQuestionTable].[QuestionID],
[dbo].[ExamQuestionTable].[Question],
[dbo].[ExamTopicTable].[ExamTopicName],
[dbo].[ExamSubjectTable].[ExamSubjectName],
[dbo].[ExamCategoryTable].[ExamCategoryName],
[dbo].[ExamQuestionTable].[IsActive]
FROM [dbo].[ExamQuestionTable]
INNER JOIN [dbo].[ExamTopicTable] ON [dbo].[ExamTopicTable].[ExamTopicID] = [dbo].[ExamQuestionTable].[ExamTopicID]
INNER JOIN [dbo].[ExamSubjectTable] ON [dbo].[ExamSubjectTable].[ExamSubjectID] = [dbo].[ExamTopicTable].[ExamSubjectID]
INNER JOIN [dbo].[ExamCategoryTable] ON [dbo].[ExamCategoryTable].[ExamCategoryID] = [dbo].[ExamSubjectTable].[ExamCategoryID]
