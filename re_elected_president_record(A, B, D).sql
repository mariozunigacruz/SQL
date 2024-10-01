USE world_leaders;
-- re-elected_president_record
CREATE OR REPLACE VIEW re_elected_president_record AS
	SELECT CONCAT(f_name, ' ', l_name) AS president_name, country, number_of_terms, term
    FROM ((world_presidents JOIN background USING (leader_ID)) 
		JOIN president_election USING (president_ID)) 
        JOIN presidental_term USING(term_id)
    WHERE number_of_terms > 1
    ORDER BY country, term, president_name;