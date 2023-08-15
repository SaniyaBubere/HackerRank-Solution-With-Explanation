SELECT
    -- Select the `id`, `age`, `coins_needed`, and `power` columns from the `wands` table.
    id,
    age,
    coins_needed,
    power
FROM
    -- Join the `wands` table and the `wands_property` table on the `code` column.
    wands w
JOIN
    wands_property wp
ON
    -- The `code` column of the `wands` table is equal to the `code` column of the `wands_property` table.
    wp.code = w.code
WHERE
    -- Only include rows where the `is_evil` column is equal to 0.
    is_evil = 0
AND
    -- Only include rows where the `coins_needed` column is equal to the minimum `coins_needed` value for wands with the same code and power.
    coins_needed = (
        -- Select the minimum `coins_needed` value from the `wands` table where the `code` column is equal to the `code` column of the current row.
        SELECT
            MIN(coins_needed)
        FROM
            wands
        WHERE
            code = w.code
    )
ORDER BY
    -- Order the results by the `power` column in descending order, and then by the `age` column in descending order.
    power DESC,
    age DESC;

-- or

select id, age, coins_needed, power from wands w JOIN wands_property wp on wp.code = w.code where is_evil = 0 
  and coins_needed = (select min(coins_needed) from wands wa where wa.code = w.code and wa.power = w.power) order by power desc, age desc;
