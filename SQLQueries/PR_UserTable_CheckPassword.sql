CREATE PROCEDURE [dbo].[PR_UserTable_CheckPassword]
@UserID int
AS
SELECT 
	[dbo].[UserTable].[Password]
FROM [dbo].[UserTable]
 WHERE [dbo].[UserTable].[UserID]= @UserID