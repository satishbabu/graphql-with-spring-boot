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
(1, 'math', 100.0, 101);
