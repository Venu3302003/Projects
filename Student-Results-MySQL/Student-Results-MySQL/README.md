SELECT * FROM students;

SELECT s.name, sub.subject_name, m.marks
FROM marks m
JOIN students s ON m.student_id = s.student_id
JOIN subjects sub ON m.subject_id = sub.subject_id;

SELECT 
    s.student_id,
    s.name,
    SUM(m.marks) AS total_marks,
    AVG(m.marks) AS average_marks,
    CASE
        WHEN AVG(m.marks) >= 90 THEN 'A+'
        WHEN AVG(m.marks) >= 80 THEN 'A'
        WHEN AVG(m.marks) >= 70 THEN 'B'
        WHEN AVG(m.marks) >= 60 THEN 'C'
        ELSE 'F'
    END AS grade
FROM marks m
JOIN students s ON s.student_id = m.student_id
GROUP BY s.student_id, s.name
ORDER BY average_marks DESC;


SELECT s.name, AVG(m.marks) AS avg_marks
FROM students s
JOIN marks m ON m.student_id = s.student_id
GROUP BY s.student_id
ORDER BY avg_marks DESC
LIMIT 1;

SELECT 
    s.name,
    COUNT(CASE WHEN m.marks < 35 THEN 1 END) AS failed_subjects
FROM students s
JOIN marks m ON s.student_id = m.student_id
GROUP BY s.student_id;
