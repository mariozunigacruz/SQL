USE world_leaders;
-- offically_educated_president_average_power_length_in_different_country
CREATE OR REPLACE VIEW offically_educated_president_average_power_length AS
	SELECT country, ROUND(AVG(length_of_power), 1) AS average_length_of_power
    FROM world_presidents JOIN background USING (leader_ID)
    WHERE education != 'Self'
    GROUP BY country
    ORDER BY average_length_of_power DESC, country; 