CREATE PROCEDURE [dbo].[PR_ExamTopicTable_SelectAll]
AS
SELECT 
	[dbo].[ExamTopicTable].[ExamTopicID],
	[dbo].[ExamTopicTable].[ExamTopicName],
	[dbo].[ExamSubjectTable].[ExamSubjectName],
	[dbo].[ExamCategoryTable].[ExamCategoryName],
	[dbo].[ExamSubjectTable].[IsActive]

FROM [dbo].[ExamTopicTable]
INNER JOIN [dbo].[ExamSubjectTable]
ON [dbo].[ExamSubjectTable].[ExamSubjectID] = [dbo].[ExamTopicTable].[ExamSubjectID]
INNER JOIN [dbo].[ExamCategoryTable] 
ON [dbo].[ExamCategoryTable].[ExamCategoryID] = [dbo].[ExamSubjectTable].[ExamCategoryID]
ORDER BY [dbo].[ExamTopicTable].[ExamTopicName],[dbo].[ExamCategoryTable].[ExamCategoryName],[dbo].[ExamSubjectTable].[ExamSubjectName]