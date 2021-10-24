insert into address
(id, street, city) values
(1, 'satish street', 'satish city');

insert into address
(id, street, city) values
(2, 'bill street', 'bill city');

insert into student
(id, first_name, last_name, email, address_id) values
(101,'Satish', 'Babu', 'satish@satish.com', 1);

insert into student
(id, first_name, last_name, email, address_id) values
(102,'Bill', 'Gates', 'bill@gates.com', 2);

insert into subject
(id, subject_name, marks_obtained, student_id) values
(1, 'Java', 100.0, 101);

insert into subject
(id, subject_name, marks_obtained, student_id) values
(2, 'MqSQL', 95.0, 101);

insert into subject
(id, subject_name, marks_obtained, student_id) values
(3, 'MongoDB', 90.0, 101);

insert into subject
(id, subject_name, marks_obtained, student_id) values
(4, 'MySQL', 100.0, 102);

insert into subject
(id, subject_name, marks_obtained, student_id) values
(5, 'MongoDB', 100.0, 102);
