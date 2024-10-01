USE world_leaders;
-- number_of_president_age_higher_than_60_with_election_later_than_2000_in_different_country
CREATE OR REPLACE VIEW number_of_president_older_than_60_elected_after_2000 AS
	SELECT country, COUNT(age) AS number_of_president
    FROM (world_presidents 
		JOIN background USING (leader_ID))
        JOIN president_election USING (president_ID)
    WHERE date_of_election BETWEEN '2000-00-00' AND NOW() AND age > 60 
    GROUP BY country
    ORDER BY number_of_president DESC, country;