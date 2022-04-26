CREATE PROCEDURE [dbo].[PR_UserTable_UpdateByPK]
@UserID int,
@Email nvarchar(100),
@Password nvarchar(100),
@DisplayName nvarchar(20),
@MobileNo nvarchar(50),
@Address nvarchar(500)
AS
UPDATE [dbo].[UserTable]
SET
	[dbo].[UserTable].[Email] = @Email,
	[dbo].[UserTable].[Password] = @Password,
	[dbo].[UserTable].[DisplayName] = @DisplayName,
	[dbo].[UserTable].[MobileNo] = @MobileNo,
	[dbo].[UserTable].[Address] = @Address,
	[dbo].[UserTable].[Modified] = getdate()
WHERE [dbo].[UserTable].[UserID] = @UserID
