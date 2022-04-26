 CREATE PROCEDURE [dbo].[PR_UserTable_CheckForInsert]
@Email nvarchar(100)
as
Select 
[dbo].[UserTable].[Email]
 From [dbo].[UserTable]
Where [dbo].[UserTable].[Email] = @Email