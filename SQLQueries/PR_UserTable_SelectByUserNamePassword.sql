CREATE PROCEDURE [dbo].[PR_UserTable_SelectByUserNamePassword]
@Email varchar(100),
@Password varchar(100)
AS
SELECT 
	[dbo].[UserTable].[UserID],
	[dbo].[UserTable].[Email],
	[dbo].[UserTable].[Password],
	[dbo].[UserTable].[DisplayName],
	[dbo].[UserTable].[MobileNo],
	[dbo].[UserTable].[Address]
	
From [dbo].[UserTable]
Where [dbo].[UserTable].[Email] = @Email and [dbo].[UserTable].[Password] = @Password