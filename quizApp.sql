DROP DATABASE quizApp;

CREATE DATABASE IF NOT EXISTS quizApp;

USE quizApp;

CREATE TABLE IF NOT EXISTS admins (
admin_id INT UNSIGNED NOT NULL,
admin_first_name VARCHAR(20),
admin_last_name VARCHAR(20),
PRIMARY KEY (admin_id)
);

CREATE TABLE IF NOT EXISTS students (
student_id INT UNSIGNED NOT NULL,
PRIMARY KEY (student_id),
student_first_name VARCHAR(20),
student_last_name VARCHAR(20),
quiz_score INT UNSIGNED NOT NULL,
quiz_id INT UNSIGNED NOT NULL
);

ALTER TABLE students
ADD FOREIGN KEY (quiz_id) REFERENCES quiz (quiz_id;


CREATE TABLE IF NOT EXISTS quizes (
quiz_id INT UNSIGNED NOT NULL,
quiz_number INT UNSIGNED NOT NULL,
PRIMARY KEY (quiz_id)
);

CREATE TABLE IF NOT EXISTS quiz (
quiz_id INT UNSIGNED NOT NULL,
PRIMARY KEY (quiz_id),
admin_id INT UNSIGNED NOT NULL,
answer_id INT UNSIGNED NOT NULL,
question_id INT UNSIGNED NOT NULL
);

ALTER TABLE quiz
ADD FOREIGN KEY (admin_id) REFERENCES admins (admin_id);
ALTER TABLE quiz
ADD FOREIGN KEY (answer_id) REFERENCES answers (answer_id);
ALTER TABLE quiz
ADD FOREIGN KEY (question_id) REFERENCES questions (question_id);


CREATE TABLE IF NOT EXISTS questions (
question_id INT UNSIGNED NOT NULL,
PRIMARY KEY (question_id),
quiz_id INT UNSIGNED NOT NULL,
question TEXT NOT NULL,
answer_id INT UNSIGNED NOT NULL
);
ALTER TABLE questions
ADD FOREIGN KEY (quiz_id) REFERENCES quiz (quiz_id);
ALTER TABLE questions
ADD FOREIGN KEY (answer_id) REFERENCES answers (answer_id);


CREATE TABLE IF NOT EXISTS answer_key(
answer_key_id INT UNSIGNED NOT NULL,
PRIMARY KEY (answer_key_id),
answer_id INT UNSIGNED NOT NULL,
quiz_id INT UNSIGNED NOT NULL
);

CREATE TABLE IF NOT EXISTS answers (
answer_id INT UNSIGNED NOT NULL,
answer TEXT NOT NULL,
PRIMARY KEY (answer_id),
quiz_id INT UNSIGNED NOT NULL,
question_id INT UNSIGNED NOT NULL
);
ALTER TABLE answers
ADD FOREIGN KEY (quiz_id) REFERENCES quizes (quiz_id);
ALTER TABLE answers
ADD FOREIGN KEY (question_id) REFERENCES questions (question_id);

CREATE TABLE IF NOT EXISTS student_answers (
sa_id INT UNSIGNED NOT NULL AUTO_INCREMENT, -- sa stands for student answer
correct_answer INT UNSIGNED NOT NULL,
attempted_answer TEXT NOT NULL,
PRIMARY KEY (sa_id),
student_id INT UNSIGNED NOT NULL,
quiz_id INT UNSIGNED NOT NULL,
question_id INT UNSIGNED NOT NULL,
FOREIGN KEY (student_id) REFERENCES students (student_id),
FOREIGN KEY (quiz_id) REFERENCES quiz (quiz_id),
FOREIGN KEY (question_id) REFERENCES questions (question_id)
);





