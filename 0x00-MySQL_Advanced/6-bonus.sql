-- script to add marks

DELIMITER $$;
CREATE PROCEDURE AddBonus(
	IN in_user_id INT,
	IN in_project_name VARCHAR(255),
	IN score INT
)
BEGIN
	IF NOT EXISTS(SELECT name FROM projects WHERE name=project_name) THEN
		INSERT INTO projects (name) VALUES (project_name);
	END IF;
	INSERT INTO corrections (user_id, project_id, score)
	VALUES (user_id, (SELECT id from projects WHERE name=project_name), score);
END;$$
DELIMITER;
