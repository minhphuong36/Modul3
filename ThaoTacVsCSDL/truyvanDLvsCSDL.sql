SELECT * FROM student
WHERE studentname LIKE 'h%';

SELECT * FROM subject
 WHERE credit between 3 and 5;

update quanlysinhvien.student
set classid = 2
where studentname = 'Hung';

SELECT   Mark FROM mark
ORDER BY mark;