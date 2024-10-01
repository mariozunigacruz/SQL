USE world_leaders;
-- length_of_power_in_US_in_party
CREATE OR REPLACE VIEW president_power_lenght_in_party_in_us AS
	SELECT CONCAT(f_name, ' ', l_name) AS president_name, length_of_power
    FROM ((world_presidents JOIN background USING (leader_ID)) 
		JOIN president_election USING (president_ID)) 
    WHERE president_ID IN (SELECT president_ID FROM president_election WHERE party IS NOT NULL)
    ORDER BY length_of_power DESC, president_name;