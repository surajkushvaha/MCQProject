ALTER PROCEDURE [dbo].[PR_UserTable_SelectByUserID]
@UserID int
AS
SELECT 
	[dbo].[UserTable].[Email], 
	[dbo].[UserTable].[DisplayName],
	[dbo].[UserTable].[MobileNo],
	[dbo].[UserTable].[Address],
	[dbo].[UserTable].[PhotoPath],
	[dbo].[UserTable].[PhotoFileType],
	[dbo].[UserTable].[PhotoFileSize],
	[dbo].[UserTable].[PhotoFileExtension],
	[dbo].[UserTable].[Created],
	[dbo].[UserTable].[Modified] 
FROM [dbo].[UserTable]
WHERE [dbo].[UserTable].[UserID] = @UserID