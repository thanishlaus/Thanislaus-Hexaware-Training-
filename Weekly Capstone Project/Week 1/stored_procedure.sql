DELIMITER //

CREATE PROCEDURE student_completion(IN sid INT)

BEGIN

SELECT
s.student_name,
AVG(p.completion_percentage) AS completion_rate

FROM students s
JOIN enrollments e
ON s.student_id=e.student_id

JOIN progress p
ON e.enrollment_id=p.enrollment_id

WHERE s.student_id=sid

GROUP BY s.student_name;

END //

DELIMITER ;