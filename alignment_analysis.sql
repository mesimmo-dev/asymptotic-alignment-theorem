CREATE TABLE alignment_series (
    step INTEGER PRIMARY KEY,
    observed_value REAL NOT NULL,
    target_value REAL NOT NULL
);

INSERT INTO alignment_series
    (step, observed_value, target_value)
VALUES
    (1, 0.42, 1.00),
    (2, 0.58, 1.00),
    (3, 0.69, 1.00),
    (4, 0.77, 1.00),
    (5, 0.84, 1.00),
    (6, 0.89, 1.00),
    (7, 0.93, 1.00),
    (8, 0.96, 1.00);

SELECT
    step,
    observed_value,
    target_value,
    ROUND(
        ABS(target_value - observed_value),
        4
    ) AS deviation
FROM alignment_series
ORDER BY step;

SELECT
    step,
    ROUND(
        observed_value / target_value,
        4
    ) AS alignment_ratio
FROM alignment_series
ORDER BY step;
