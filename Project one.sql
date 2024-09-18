Create Database Realtion;

create table users(

UserID int PRIMARY KEY,
Name varchar(50),
Email varchar(100)

);

Create Table Roles(

RoleID int PRIMARY KEY,
RoleName varchar(50)

)

CREATE TABLE UserAccounts (
    AccountID int PRIMARY KEY,
    UserID int,
    AccountType varchar(50),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

CREATE TABLE UserAccountStatuses (
    StatusID int PRIMARY KEY,
    AccountID int,
    StatusName varchar(50),
    FOREIGN KEY (AccountID) REFERENCES UserAccounts(AccountID)
);

INSERT INTO Users (UserID, Name, Email)
VALUES (1, 'John Doe', 'john.doe@example.com'),
       (2, 'Jane Doe', 'jane.doe@example.com');


INSERT INTO Roles (RoleID, RoleName)
VALUES (1, 'Admin'),
       (2, 'User');

-- Insert data into User Accounts table
INSERT INTO UserAccounts (AccountID, UserID, AccountType)
VALUES (1, 1, 'Admin Account'),
       (2, 2, 'User Account');

-- Insert data into User Account Statuses table
INSERT INTO UserAccountStatuses (StatusID, AccountID, StatusName)
VALUES (1, 1, 'Active'),
       (2, 2, 'Inactive');


delete from Roles;

DELETE FROM UserAccountStatuses;

DELETE FROM UserAccounts;

DELETE FROM Users;