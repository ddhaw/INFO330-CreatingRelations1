CREATE TABLE IF NOT EXISTS student_courses (
  studentid INTEGER,
  course VARCHAR(40),
  FOREIGN KEY (studentid) REFERENCES students(id),
  FOREIGN KEY (course) REFERENCES courses(code),
  grade FLOAT DEFAULT NULL
);

INSERT INTO student_courses (studentid, course) VALUES (
  SELECT id FROM students WHERE firstname = "Fred" AND lastname = "Flintstone",
  SELECT code FROM courses WHERE code = "INFO330A");

INSERT INTO student_courses (studentid, course) VALUES (
  SELECT id FROM students WHERE firstname = "Fred" AND lastname = "Flintstone",
  SELECT code FROM courses WHERE code = "INFO448A");

INSERT INTO student_courses (studentid, course) VALUES (
  SELECT id FROM students WHERE firstname = "Fred" AND lastname = "Flintstone",
  SELECT code FROM courses WHERE code = "INFO314");

INSERT INTO student_courses (studentid, course) VALUES (
  SELECT id FROM students WHERE firstname = "Barney" AND lastname = "Rubble",
  SELECT code FROM courses WHERE code = "INFO330A");

INSERT INTO student_courses (studentid, course) VALUES (
  SELECT id FROM students WHERE firstname = "Barney" AND lastname = "Rubble",
  SELECT code FROM courses WHERE code = "INFO449A");

INSERT INTO student_courses (studentid, course) VALUES (
  SELECT id FROM students WHERE firstname = "Wilma" AND lastname = "Flintstone",
  SELECT code FROM courses WHERE code = "BAW010");

INSERT INTO student_courses (studentid, course) VALUES (
  SELECT id FROM students WHERE firstname = "Wilma" AND lastname = "Flintstone",
  SELECT code FROM courses WHERE code = "BAW100");

INSERT INTO student_courses (studentid, course) VALUES (
  SELECT id FROM students WHERE firstname = "Betty" AND lastname = "Rubble",
  SELECT code FROM courses WHERE code = "BAW010");
