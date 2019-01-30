use quizApp;

INSERT INTO admins (admin_id, admin_first_name, admin_last_name)
VALUES (69,'Juan','Edwards');

INSERT INTO quizes (quiz_id, question_number, question, admin_id)
VALUES (900, 1,'Is landon a spy?', 69);
