WITH teacher_grading_counts AS (
    SELECT
        teacher_id,
        COUNT(*) AS total_graded
    FROM
        assignments
    GROUP BY
        teacher_id
),
max_grading_teacher AS (
    SELECT
        teacher_id
    FROM
        teacher_grading_counts
    ORDER BY
        total_graded DESC
    LIMIT 1
)
SELECT
    COUNT(*) AS count_grade_A_assignments
FROM
    assignments
WHERE
    grade = 'A'
    AND teacher_id = (SELECT teacher_id FROM max_grading_teacher);