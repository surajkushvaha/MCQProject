CREATE PROCEDURE [dbo].[PR_UserTable_SelectByUserID]
@UserID int
as
Select 
	[dbo].[UserTable].[Email], 
	[dbo].[UserTable].[DisplayName],
	[dbo].[UserTable].[MobileNo],
	[dbo].[UserTable].[Address],
	[dbo].[UserTable].[Created],
	[dbo].[UserTable].[Modified] 
From [dbo].[UserTable]
where [dbo].[UserTable].[UserID] = @UserID