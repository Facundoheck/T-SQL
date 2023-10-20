WITH CTE AS (
      SELECT
        user_id,
        (COUNT(CASE WHEN action = 'confirmed' THEN 1 ELSE NULL END) / 
        CAST(COUNT(user_id) AS DECIMAL(10,2))) [confirmation_rate]
      FROM
        Confirmations
      GROUP BY
        user_id
)
SELECT
  T2.user_id,
  ROUND(ISNULL([confirmation_rate],0),2) [confirmation_rate]
FROM
  CTE T1
RIGHT JOIN
  Signups T2 ON T1.user_id = T2.user_id