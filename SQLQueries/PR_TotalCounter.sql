CREATE PROCEDURE [dbo].[PR_TotalCounter]
AS
SELECT count(*) AS 'numbers' FROM [dbo].[ExamCategoryTable] UNION ALL
SELECT count(*)  FROM [dbo].[ExamSubjectTable] UNION ALL
SELECT count(*)  FROM [dbo].[ExamTopicTable] UNION ALL
SELECT count(*)  FROM [dbo].[ExamQuestionTable] 