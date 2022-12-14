-- create table Class(
-- ClassID int not null auto_increment primary key,
-- ClassName varchar(60) not null,
-- StartDate datetime not null,
-- Status bit 
-- );

-- create table Student(
-- StudentID int not null auto_increment primary key,
-- StudentName varchar(30) not null,
-- Address varchar(50),
-- Phone varchar(20),
-- ClassID int not null,
-- foreign key(ClassID) references Class(ClassID)
-- );

-- CREATE TABLE Subject
-- (
--     SubId   INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
--     SubName VARCHAR(30) NOT NULL,
--     Credit  TINYINT     NOT NULL DEFAULT 1 CHECK ( Credit >= 1 ),
--     Status  BIT                  DEFAULT 1
-- );

CREATE TABLE Mark
(
    MarkId    INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    SubId     INT NOT NULL,
    StudentId INT NOT NULL,
    Mark      FLOAT   DEFAULT 0 CHECK ( Mark BETWEEN 0 AND 100),
    ExamTimes TINYINT DEFAULT 1,
    UNIQUE (SubId, StudentId),
    FOREIGN KEY (SubId) REFERENCES Subject (SubId),
    FOREIGN KEY (StudentId) REFERENCES Student (StudentId)
);


