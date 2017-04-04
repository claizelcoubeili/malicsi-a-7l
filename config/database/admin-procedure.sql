USE malicsi;

DROP PROCEDURE IF EXISTS update_activity;
DELIMITER //
CREATE PROCEDURE update_activity(
		in _is_active BOOLEAN,
		in _id INT
	)

	BEGIN
		UPDATE user SET is_active = _is_active WHERE id = _id;
	END;
//
DELIMITER ;

DROP PROCEDURE IF EXISTS create_organizer;
DELIMITER //
CREATE PROCEDURE create_organizer(
	in _id INT,
	in _name VARCHAR(50),
	in _description VARCHAR(100)
)
	BEGIN
		INSERT INTO organizer (id, name, description) values (_id, _name, _description);
	END;
//
DELIMITER ;

grant execute on procedure update_activity to administrator;