-- use quanlysinhvien

-- SELECT *FROM Subject
-- WHERE Credit < 10;

-- SELECT StudentId, StudentName, ClassName
-- FROM Student  
-- join Class  on ClassId = ClassID;

-- SELECT student.StudentId, student.StudentName, Class.ClassName FROM Student  
-- join Class  on student.ClassId = Class.ClassID 
-- WHERE Class.ClassName = 'A1';

SELECT S.StudentId, S.StudentName, Sub.SubName, M.Mark FROM Student S 
join Mark M on S.StudentId = M.StudentId 
join Subject Sub on M.SubId = Sub.SubId
where sub.subname = 'cf';


