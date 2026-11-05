-- SQL Server migration script generated from customer_churn.db (SQLite)
-- Run this entire script in SQL Server Management Studio (SSMS).

USE master;
GO

IF DB_ID(N'CustomerChurn') IS NULL
    CREATE DATABASE CustomerChurn;
GO

USE CustomerChurn;
GO

-- Re-create the tables so the script can be run again without duplicate objects.
DROP TABLE IF EXISTS dbo.db_support;
DROP TABLE IF EXISTS dbo.db_subscription;
DROP TABLE IF EXISTS dbo.db_customer;
GO

CREATE TABLE dbo.db_customer (
    customerid NVARCHAR(30) NULL,
    name NVARCHAR(150) NULL,
    country NVARCHAR(100) NULL,
    state NVARCHAR(100) NULL,
    gender NVARCHAR(30) NULL,
    dob DATETIME2 NULL,
    interests NVARCHAR(200) NULL,
    pincode NVARCHAR(20) NULL
);

CREATE TABLE dbo.db_subscription (
    customerid NVARCHAR(30) NULL,
    subscription_start_date DATE NULL,
    subscription_type NVARCHAR(100) NULL,
    renewal_date DATE NULL,
    plan_type NVARCHAR(100) NULL,
    contract_type NVARCHAR(100) NULL,
    cancellation_date DATE NULL,
    cancellation_reason NVARCHAR(300) NULL,
    monthly_charges DECIMAL(10,2) NULL,
    cltv INT NULL,
    churn_score INT NULL
);

CREATE TABLE dbo.db_support (
    customerid NVARCHAR(30) NULL,
    complaint_date DATETIME2 NULL,
    escalations NVARCHAR(10) NULL,
    csat_score INT NULL,
    col_1 FLOAT NULL,
    comment NVARCHAR(500) NULL
);
GO

-- Import 21 rows into dbo.db_customer
INSERT INTO dbo.[db_customer] ([customerid], [name], [country], [state], [gender], [dob], [interests], [pincode]) VALUES (N'0002-ORFBO', N'keshav', N'India', N'Maharashtra', N'Male', N'1982-04-12 00:00:00', N'travel', NULL);
INSERT INTO dbo.[db_customer] ([customerid], [name], [country], [state], [gender], [dob], [interests], [pincode]) VALUES (N'0003-MKNFE', N'raghav', N'India', N'Karnataka', N'Male', N'1995-11-23 00:00:00', NULL, NULL);
INSERT INTO dbo.[db_customer] ([customerid], [name], [country], [state], [gender], [dob], [interests], [pincode]) VALUES (N'0004-TLHLJ', N'lalita', N'India', N'Delhi', N'Female', N'1978-02-15 00:00:00', N'movie', NULL);
INSERT INTO dbo.[db_customer] ([customerid], [name], [country], [state], [gender], [dob], [interests], [pincode]) VALUES (N'0011-IGKFF', N'mohan', N'India', N'Nagaland', N'Male', N'2001-08-30 00:00:00', NULL, NULL);
INSERT INTO dbo.[db_customer] ([customerid], [name], [country], [state], [gender], [dob], [interests], [pincode]) VALUES (N'0013-EXCHZ', N'mira', N'India', N'Delhi', N'Female', N'1990-05-05 00:00:00', N'drama', NULL);
INSERT INTO dbo.[db_customer] ([customerid], [name], [country], [state], [gender], [dob], [interests], [pincode]) VALUES (N'0013-MHZWF', N'durga', NULL, N'Delhi', N'Women', N'1988-12-10 00:00:00', NULL, NULL);
INSERT INTO dbo.[db_customer] ([customerid], [name], [country], [state], [gender], [dob], [interests], [pincode]) VALUES (N'0013-SMEOE', N'mina', N'India', N'Meghalaya', N'Female', N'1976-09-21 00:00:00', NULL, NULL);
INSERT INTO dbo.[db_customer] ([customerid], [name], [country], [state], [gender], [dob], [interests], [pincode]) VALUES (N'0014-BMAQU', N'madan', N'India', N'Rajasthan', N'Male', N'1999-03-14 00:00:00', NULL, NULL);
INSERT INTO dbo.[db_customer] ([customerid], [name], [country], [state], [gender], [dob], [interests], [pincode]) VALUES (N'0015-UOCOJ', N'maya', NULL, N'Kathmandu', N'Women', N'1985-07-07 00:00:00', NULL, NULL);
INSERT INTO dbo.[db_customer] ([customerid], [name], [country], [state], [gender], [dob], [interests], [pincode]) VALUES (N'0016-QLJIS', N'arjun', N'Nepal', N'Kathmandu', N'Male', N'1993-10-29 00:00:00', NULL, NULL);
INSERT INTO dbo.[db_customer] ([customerid], [name], [country], [state], [gender], [dob], [interests], [pincode]) VALUES (N'0017-DINOC', N'shiva', N'India', N'Maharashtra', N'Men', N'1997-01-22 00:00:00', NULL, NULL);
INSERT INTO dbo.[db_customer] ([customerid], [name], [country], [state], [gender], [dob], [interests], [pincode]) VALUES (N'0017-IUDMW', N'rangadevi', N'India', N'Karnataka', N'Female', N'1981-06-18 00:00:00', NULL, NULL);
INSERT INTO dbo.[db_customer] ([customerid], [name], [country], [state], [gender], [dob], [interests], [pincode]) VALUES (N'0018-NYROU', N'chitra', NULL, N'Telangana', N'Female', N'2004-12-01 00:00:00', NULL, NULL);
INSERT INTO dbo.[db_customer] ([customerid], [name], [country], [state], [gender], [dob], [interests], [pincode]) VALUES (N'0019-EFAEP', N'raju', N'India', N'Meghalaya', N'Female', N'1992-04-25 00:00:00', NULL, NULL);
INSERT INTO dbo.[db_customer] ([customerid], [name], [country], [state], [gender], [dob], [interests], [pincode]) VALUES (N'0019-GFNTW', N'Madhav', N'India', N'Uttar Pradesh', N'Men', N'1979-11-11 00:00:00', NULL, NULL);
INSERT INTO dbo.[db_customer] ([customerid], [name], [country], [state], [gender], [dob], [interests], [pincode]) VALUES (N'0020-INWCK', N'parvati', N'India', N'Delhi', N'Female', N'1986-02-28 00:00:00', N'job', NULL);
INSERT INTO dbo.[db_customer] ([customerid], [name], [country], [state], [gender], [dob], [interests], [pincode]) VALUES (N'0020-JDNXP', N'rikim', N'India', N'Meghalaya', N'Female', N'1994-08-19 00:00:00', NULL, NULL);
INSERT INTO dbo.[db_customer] ([customerid], [name], [country], [state], [gender], [dob], [interests], [pincode]) VALUES (N'0021-IKXGC', N'vishakha', N'India', N'Rajasthan', N'Female', N'2000-09-02 00:00:00', NULL, NULL);
INSERT INTO dbo.[db_customer] ([customerid], [name], [country], [state], [gender], [dob], [interests], [pincode]) VALUES (N'0022-TCJCI', N'raghvendra', N'India', N'Telangana', N'Male', N'1983-12-30 00:00:00', NULL, NULL);
INSERT INTO dbo.[db_customer] ([customerid], [name], [country], [state], [gender], [dob], [interests], [pincode]) VALUES (N'0023-HGHWL', N'rishabh', N'India', N'Uttar Pradesh', N'Men', N'1991-05-14 00:00:00', NULL, NULL);
INSERT INTO dbo.[db_customer] ([customerid], [name], [country], [state], [gender], [dob], [interests], [pincode]) VALUES (N'0023-UYUPN', N'sudevi', N'India', N'Maharashtra', N'Women', N'1977-10-06 00:00:00', NULL, NULL);
GO
-- Verification: expected row counts are 21 customers, 21 subscriptions, 9 support records.
SELECT 'db_customer' AS table_name, COUNT(*) AS row_count FROM dbo.db_customer
UNION ALL
SELECT 'db_subscription', COUNT(*) FROM dbo.db_subscription
UNION ALL
SELECT 'db_support', COUNT(*) FROM dbo.db_support;
GO
