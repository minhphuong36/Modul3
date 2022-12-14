
-- SELECT max(credit)
-- FROM subject  

-- select max(mark) 
-- from mark

SELECT S.StudentId, S.StudentName, AVG(Mark)
FROM Student S join Mark M on S.StudentId
GROUP BY S.StudentId, S.StudentName






