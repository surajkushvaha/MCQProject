CREATE PROCEDURE [dbo].[PR_FeedbackTable_Insert]
@Name nvarchar(50),
@Email nvarchar(100),
@FeedbackDetail nvarchar(1000)
AS
INSERT INTO [dbo].[FeedbackTable]
(
	[dbo].[FeedbackTable].[Name],
	[dbo].[[FeedbackTable].[Email],
	[dbo].[FeedbackTable].[FeedbackDetail],
	[dbo].[FeedbackTable].[Modified]
)
VALUES
(
	@Name,
	@Email,
	@FeedbackDetail,
	GETDATE()
)