
-- =====================================================
-- Student Results Management System (Complete single SQL)
-- Drops existing DB and recreates fresh DB with 30 students
-- =====================================================

DROP DATABASE IF EXISTS student_results_db;
CREATE DATABASE student_results_db;
USE student_results_db;

CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    roll_no VARCHAR(20) NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL,
    class VARCHAR(20),
    email VARCHAR(120)
);

CREATE TABLE subjects (
    subject_id INT AUTO_INCREMENT PRIMARY KEY,
    subject_name VARCHAR(50) NOT NULL
);

CREATE TABLE marks (
    mark_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    subject_id INT NOT NULL,
    marks_obtained INT NOT NULL CHECK (marks_obtained BETWEEN 0 AND 100),
    FOREIGN KEY (student_id) REFERENCES students(student_id) ON DELETE CASCADE,
    FOREIGN KEY (subject_id) REFERENCES subjects(subject_id) ON DELETE CASCADE
);

INSERT INTO subjects (subject_name) VALUES
('Maths'),('Science'),('English'),('Social'),('Hindi');

INSERT INTO students (roll_no, name, class, email) VALUES
('A101','Venu Kumar','10A','venu101@example.com'),
('A102','Ravi Kumar','10A','ravi102@example.com'),
('A103','Sita Devi','10A','sita103@example.com'),
('A104','Mahesh Babu','10A','mahesh104@example.com'),
('A105','Arjun Reddy','10A','arjun105@example.com'),
('A106','Swathi Rani','10A','swathi106@example.com'),
('A107','Navya Sri','10A','navya107@example.com'),
('A108','Kiran Kumar','10A','kiran108@example.com'),
('A109','Harsha Vardhan','10A','harsha109@example.com'),
('A110','Lokesh Reddy','10A','lokesh110@example.com'),
('A111','Prashanth Sai','10A','prashanth111@example.com'),
('A112','Yamini Devi','10A','yamini112@example.com'),
('A113','Nikhil Raj','10A','nikhil113@example.com'),
('A114','Lavanya Devi','10A','lavanya114@example.com'),
('A115','Sunitha Rao','10A','sunitha115@example.com'),
('A116','Akshay Kumar','10A','akshay116@example.com'),
('A117','Chandu Reddy','10A','chandu117@example.com'),
('A118','Mounika Devi','10A','mounika118@example.com'),
('A119','Pavan Kumar','10A','pavan119@example.com'),
('A120','Srikanth Rao','10A','srikanth120@example.com'),
('A121','Sneha Reddy','10A','sneha121@example.com'),
('A122','Rahul Varma','10A','rahul122@example.com'),
('A123','Bhavya Sri','10A','bhavya123@example.com'),
('A124','Sai Krishna','10A','saikrishna124@example.com'),
('A125','Tarun Kumar','10A','tarun125@example.com'),
('A126','Gayathri Raj','10A','gayathri126@example.com'),
('A127','Karthik Reddy','10A','karthik127@example.com'),
('A128','Anusha Devi','10A','anusha128@example.com'),
('A129','Shiva Kumar','10A','shiva129@example.com'),
('A130','Deepika Rao','10A','deepika130@example.com');

INSERT INTO marks (student_id, subject_id, marks_obtained) VALUES
(1,1,88),(1,2,75),(1,3,92),(1,4,80),(1,5,85),
(2,1,70),(2,2,65),(2,3,72),(2,4,68),(2,5,74),
(3,1,95),(3,2,90),(3,3,93),(3,4,88),(3,5,91),
(4,1,77),(4,2,82),(4,3,79),(4,4,85),(4,5,80),
(5,1,68),(5,2,74),(5,3,70),(5,4,76),(5,5,73),
(6,1,84),(6,2,89),(6,3,91),(6,4,87),(6,5,90),
(7,1,92),(7,2,88),(7,3,85),(7,4,90),(7,5,87),
(8,1,75),(8,2,69),(8,3,72),(8,4,71),(8,5,70),
(9,1,80),(9,2,78),(9,3,82),(9,4,79),(9,5,77),
(10,1,66),(10,2,70),(10,3,68),(10,4,72),(10,5,69),
(11,1,89),(11,2,91),(11,3,87),(11,4,90),(11,5,88),
(12,1,73),(12,2,75),(12,3,78),(12,4,77),(12,5,76),
(13,1,90),(13,2,92),(13,3,94),(13,4,89),(13,5,93),
(14,1,79),(14,2,74),(14,3,80),(14,4,77),(14,5,75),
(15,1,86),(15,2,84),(15,3,82),(15,4,88),(15,5,87),
(16,1,77),(16,2,79),(16,3,75),(16,4,80),(16,5,78),
(17,1,93),(17,2,91),(17,3,95),(17,4,90),(17,5,94),
(18,1,65),(18,2,69),(18,3,72),(18,4,68),(18,5,70),
(19,1,82),(19,2,85),(19,3,80),(19,4,83),(19,5,84),
(20,1,71),(20,2,73),(20,3,75),(20,4,77),(20,5,74),
(21,1,94),(21,2,92),(21,3,90),(21,4,93),(21,5,95),
(22,1,68),(22,2,70),(22,3,74),(22,4,72),(22,5,71),
(23,1,88),(23,2,86),(23,3,84),(23,4,85),(23,5,87),
(24,1,90),(24,2,91),(24,3,92),(24,4,89),(24,5,94),
(25,1,73),(25,2,75),(25,3,70),(25,4,72),(25,5,74),
(26,1,96),(26,2,94),(26,3,92),(26,4,95),(26,5,93),
(27,1,68),(27,2,70),(27,3,72),(27,4,74),(27,5,73),
(28,1,85),(28,2,87),(28,3,90),(28,4,88),(28,5,86),
(29,1,78),(29,2,76),(29,3,74),(29,4,77),(29,5,75),
(30,1,91),(30,2,93),(30,3,95),(30,4,92),(30,5,94);
