ALTER PROCEDURE [dbo].[PR_UserTable_SelectByUserNamePassword]
@Email varchar(100),
@Password varchar(100)
AS
SELECT 
	[dbo].[UserTable].[UserID],
	[dbo].[UserTable].[Email],
	[dbo].[UserTable].[Password],
	[dbo].[UserTable].[DisplayName],
	[dbo].[UserTable].[MobileNo],
	[dbo].[UserTable].[Address],
	[dbo].[UserTable].[PhotoPath],
	[dbo].[UserTable].[PhotoFileType],
	[dbo].[UserTable].[PhotoFileSize],
	[dbo].[UserTable].[PhotoFileExtension]
	
FROM [dbo].[UserTable]
WHERE [dbo].[UserTable].[Email] = @Email AND [dbo].[UserTable].[Password] = @Password