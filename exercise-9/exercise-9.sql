-- ROLLUP of amount made per year, month, day
-- use ROLLUP and EXTRACT YEAR, MONTH, DAY from payment_date
SELECT
    EXTRACT(YEAR from payment_date) AS y,
    EXTRACT(MONTH from payment_date) AS m,
    EXTRACT(DAY from payment_date) AS d,
    
SUM(payment.amount)
FROM 
    payment
GROUP BY
    ROLLUP (y,m,d)
    