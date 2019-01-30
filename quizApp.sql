DROP DATABASE quizApp;

CREATE DATABASE IF NOT EXISTS quizApp;

use quizApp;

CREATE TABLE IF NOT EXISTS admins (
admin_id INT UNSIGNED NOT NULL,
admin_first_name VARCHAR(20),
admin_last_name VARCHAR(20),
PRIMARY KEY (admin_id)
);

CREATE TABLE IF NOT EXISTS students (
student_id INT UNSIGNED NOT NULL,
student_first_name VARCHAR(20),
student_last_name VARCHAR(20),
PRIMARY KEY (student_id)
);

CREATE TABLE IF NOT EXISTS quizes (
quiz_id INT UNSIGNED NOT NULL,
question_number INT UNSIGNED NOT NULL,
question TEXT NOT NULL,
PRIMARY KEY (quiz_id),
admin_id INT UNSIGNED NOT NULL,
answer_id INT UNSIGNED NOT NULL,
FOREIGN KEY (admin_id) REFERENCES admins (admin_id),
FOREIGN KEY (answer_id) REFERENCES answers (answer_id)
);

-- add a quiz table later

CREATE TABLE IF NOT EXISTS answers (
answer_id INT UNSIGNED NOT NULL,
answer TEXT NOT NULL,
PRIMARY KEY (answer_id),
quiz_id INT UNSIGNED NOT NULL,
FOREIGN KEY (quiz_id) REFERENCES quizes (quiz_id)
);





