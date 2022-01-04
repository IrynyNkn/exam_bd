-- 1
SELECT ship.id, ship.name, ship.max_weight, port.name
FROM ship
JOIN port ON port.id = ship.port_id
WHERE ship.max_weight IN (
    SELECT ship.max_weight
    FROM ship
    GROUP BY ship.max_weight
    HAVING count(*) >= 2
    );

-- 4
SELECT
                port.name,
                count(*) AS number_of_orders_per_port
FROM port
JOIN orders ON port.id = orders.departure_port_id
GROUP BY port.name
ORDER BY number_of_orders_per_port DESC
LIMIT 1;

