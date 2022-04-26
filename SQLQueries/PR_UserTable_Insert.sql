CREATE PROCEDURE [dbo].[PR_UserTable_Insert]
@Email nvarchar(100),
@Password nvarchar(100),
@DisplayName nvarchar(20),
@MobileNo nvarchar(50),
@Address nvarchar(500)
as
insert into [dbo].[UserTable]
(
[dbo].[UserTable].[Email],
[dbo].[UserTable].[Password],
[dbo].[UserTable].[DisplayName],
[dbo].[UserTable].[MobileNo],
[dbo].[UserTable].[Address]
)
Values(
@Email,
@Password,
@DisplayName,
@MobileNo,
@Address
)