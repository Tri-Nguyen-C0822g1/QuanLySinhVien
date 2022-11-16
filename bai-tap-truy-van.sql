use quanlysinhvien;

select StudentName
from Student
where StudentName like 'H%';

select ClassID, ClassName, StartDate
from Class
where StartDate >'2008-12-01 00:00:00' and StartDate < '2009-01-01 00:00:00';

select SubID, SubName, Credit
from Subject
where Credit >= 3 and credit <= 5;

SET SQL_SAFE_UPDATES = 1;

update Student
set classID = 2
where StudentName ='Hung';


SELECT 
    st.StudentName, s.SubName, m.Mark
FROM
    Student st
        INNER JOIN
    Mark m ON m.StudentID = st.StudentID
        INNER JOIN
    Subject s ON m.subID = s.subID
ORDER BY m.Mark DESC, st.StudentName ASC;


