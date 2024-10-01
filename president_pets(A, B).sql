USE world_leaders;
-- show the president with his/her pet
CREATE OR REPLACE VIEW president_pets AS
	SELECT CONCAT(f_name, ' ', l_name) AS president_name, pets
    FROM world_presidents JOIN fun_facts USING(person_id)
    WHERE pets IS NOT NULL
    ORDER BY president_name, pets;