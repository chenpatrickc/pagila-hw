/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */
SELECT
    first_name,
    last_name,
    sum (amount)
FROM
    staff
INNER JOIN payment USING (staff_id)
WHERE
    payment_date < '2020-2-01'
GROUP BY
    staff.first_name,
    staff.last_name;
