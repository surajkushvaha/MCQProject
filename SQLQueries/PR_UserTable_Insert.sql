ALTER PROCEDURE [dbo].[PR_UserTable_Insert]
@Email nvarchar(100),
@Password nvarchar(100),
@DisplayName nvarchar(20),
@MobileNo nvarchar(50),
@Address nvarchar(500),
@PhotoPath nvarchar(500),
@PhotoFileType  nvarchar(100),
@PhotoFileSize nvarchar(50),
@PhotoFileExtension nvarchar(50)
as
insert into [dbo].[UserTable]
(
[dbo].[UserTable].[Email],
[dbo].[UserTable].[Password],
[dbo].[UserTable].[DisplayName],
[dbo].[UserTable].[MobileNo],
[dbo].[UserTable].[Address],
[dbo].[UserTable].[PhotoPath],
[dbo].[UserTable].[PhotoFileType],
[dbo].[UserTable].[PhotoFileSize],
[dbo].[UserTable].[PhotoFileExtension]
)
Values(
@Email,
@Password,
@DisplayName,
@MobileNo,
@Address,
@PhotoPath,
@PhotoFileType,
@PhotoFileSize,
@PhotoFileExtension
)