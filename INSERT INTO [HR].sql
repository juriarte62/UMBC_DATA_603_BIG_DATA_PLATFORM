INSERT INTO [HR].[Certification_Employee] (certificationid, certification_date, renewal_date, training_hours, empid, CourseName)
VALUES (A123, '2025/10/15', '2030/10/15', 5, 1, ZombieClass),
(B123, '2025/1/15', '2030/1/15', 5, 2, ZombieClass),
(C123, '2025/11/15', '2030/11/15', 5, 3, ZombieClass)


location of file 
C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\HW_1_backup_Jonathan_Uriarte

CREATE TABLE [HER].[Certification_Employee] (
    certificationid VARCHAR(255) NOT NULL PRIMARY KEY,
    certification_date DATE, 
    renewal_date DATE,
    training_hours INTEGER,
    empid INTEGER,
    CourseName VARCHAR(255),
    FOREIGN KEY (empid) REFERENCES [HR].[Employees] (empid)
)