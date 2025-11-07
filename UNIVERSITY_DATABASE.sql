CREATE DATABASE University;
USE University;
CREATE TABLE admin_details (
    admin_id INT PRIMARY KEY,
    admin_name VARCHAR(50) NOT NULL,
    admin_password VARCHAR(255) NOT NULL
);
INSERT INTO admin_details (admin_id, admin_name, admin_password) VALUES
(1, 'Amit Sharma', 'amit@123'),
(2, 'Neha Verma', 'neha@456'),
(3, 'Ravi Kumar', 'ravi@789');
SELECT * FROM admin_details;


CREATE TABLE student (
    student_id VARCHAR(10) PRIMARY KEY,
    student_name VARCHAR(50) NOT NULL,
    department VARCHAR(50) NOT NULL,
    dob DATE NOT NULL,
    gender VARCHAR(10) NOT NULL,
    semester INT NOT NULL,
    email_id VARCHAR(100) UNIQUE NOT NULL,
    student_password VARCHAR(255) NOT NULL
);
INSERT INTO student (student_id, student_name, department, dob, gender, semester, email_id, student_password) VALUES
('S031', 'Ankit Verma', 'Information Technology', '2006-05-14', 'Male', 1, 'ankit.verma@example.com', 'ankit@115'),
('S004', 'Priya Nair', 'Computer Science', '2006-01-10', 'Female', 1, 'priya.nair@example.com', 'priya@321'),
('S054', 'Devika Patel', 'Electrical', '2006-11-02', 'Female', 1, 'devika.patel@example.com', 'devika@138'),
('S019', 'Varun Iyer', 'Electronics', '2005-09-19', 'Male', 2, 'varun.iyer@example.com', 'varun@103'),
('S041', 'Mohit Rao', 'Civil', '2006-05-18', 'Male', 1, 'mohit.rao@example.com', 'mohit@125'),
('S037', 'Rohit Bansal', 'Information Technology', '2005-09-21', 'Male', 2, 'rohit.bansal@example.com', 'rohit@121'),
('S009', 'Aditya Jain', 'Computer Science', '2005-10-19', 'Male', 2, 'aditya.jain@example.com', 'aditya@333'),
('S026', 'Neelima Dey', 'Mechanical', '2005-06-17', 'Female', 2, 'neelima.dey@example.com', 'neelima@110'),
('S055', 'Eshan Verma', 'Electrical', '2006-04-25', 'Male', 1, 'eshan.verma@example.com', 'eshan@139'),
('S018', 'Tanya Joseph', 'Electronics', '2005-01-13', 'Female', 2, 'tanya.joseph@example.com', 'tanya@102'),
('S012', 'Ritika Sen', 'Electronics', '2006-09-17', 'Female', 1, 'ritika.sen@example.com', 'ritika@666'),
('S003', 'Karan Patel', 'Computer Science', '2006-08-30', 'Male', 1, 'karan.patel@example.com', 'karan@789'),
('S044', 'Meenakshi Roy', 'Civil', '2006-12-05', 'Female', 1, 'meenakshi.roy@example.com', 'meenakshi@128'),
('S007', 'Rohan Singh', 'Computer Science', '2005-06-05', 'Male', 2, 'rohan.singh@example.com', 'rohan@111'),
('S035', 'Raghav Menon', 'Information Technology', '2006-08-02', 'Male', 1, 'raghav.menon@example.com', 'raghav@119'),
('S028', 'Aditi Ghosh', 'Mechanical', '2005-09-02', 'Female', 2, 'aditi.ghosh@example.com', 'aditi@112'),
('S021', 'Ritesh Malhotra', 'Mechanical', '2006-10-11', 'Male', 1, 'ritesh.malhotra@example.com', 'ritesh@105'),
('S058', 'Heena Gupta', 'Electrical', '2005-06-07', 'Female', 2, 'heena.gupta@example.com', 'heena@142'),
('S011', 'Harsh Vora', 'Electronics', '2006-07-25', 'Male', 1, 'harsh.vora@example.com', 'harsh@555'),
('S050', 'Kavita Nair', 'Civil', '2005-06-01', 'Female', 2, 'kavita.nair@example.com', 'kavita@134'),
('S023', 'Sahil Bhat', 'Mechanical', '2006-04-30', 'Male', 1, 'sahil.bhat@example.com', 'sahil@107'),
('S017', 'Rahul Reddy', 'Electronics', '2005-03-27', 'Male', 2, 'rahul.reddy@example.com', 'rahul@101'),
('S029', 'Parth Desai', 'Mechanical', '2005-08-20', 'Male', 2, 'parth.desai@example.com', 'parth@113'),
('S002', 'Diya Sharma', 'Computer Science', '2006-11-20', 'Female', 1, 'diya.sharma@example.com', 'diya@456'),
('S052', 'Bhavana Iyer', 'Electrical', '2006-02-17', 'Female', 1, 'bhavana.iyer@example.com', 'bhavana@136'),
('S025', 'Yash Chauhan', 'Mechanical', '2006-01-28', 'Male', 1, 'yash.chauhan@example.com', 'yash@109'),
('S013', 'Manish Kumar', 'Electronics', '2006-05-03', 'Male', 1, 'manish.kumar@example.com', 'manish@777'),
('S008', 'Isha Gupta', 'Computer Science', '2005-03-14', 'Female', 2, 'isha.gupta@example.com', 'isha@222'),
('S039', 'Aman Joshi', 'Information Technology', '2005-11-29', 'Male', 2, 'aman.joshi@example.com', 'aman@123'),
('S048', 'Ira Dey', 'Civil', '2005-09-10', 'Female', 2, 'ira.dey@example.com', 'ira@132'),
('S033', 'Kunal Sharma', 'Information Technology', '2006-07-25', 'Male', 1, 'kunal.sharma@example.com', 'kunal@117'),
('S006', 'Sneha Das', 'Computer Science', '2005-12-22', 'Female', 2, 'sneha.das@example.com', 'sneha@987'),
('S027', 'Ravi Tiwari', 'Mechanical', '2005-12-05', 'Male', 2, 'ravi.tiwari@example.com', 'ravi@111'),
('S005', 'Vikram Rao', 'Computer Science', '2006-09-12', 'Male', 1, 'vikram.rao@example.com', 'vikram@654'),
('S032', 'Nisha Rao', 'Information Technology', '2006-11-10', 'Female', 1, 'nisha.rao@example.com', 'nisha@116'),
('S016', 'Sanya Bose', 'Electronics', '2005-08-16', 'Female', 2, 'sanya.bose@example.com', 'sanya@100'),
('S059', 'Irfan Ali', 'Electrical', '2005-08-28', 'Male', 2, 'irfan.ali@example.com', 'irfan@143'),
('S047', 'Deepak Malhotra', 'Civil', '2005-04-04', 'Male', 2, 'deepak.malhotra@example.com', 'deepak@131'),
('S015', 'Dev Patel', 'Electronics', '2006-07-22', 'Male', 1, 'dev.patel@example.com', 'dev@999'),
('S043', 'Tarun Pillai', 'Civil', '2006-10-30', 'Male', 1, 'tarun.pillai@example.com', 'tarun@127'),
('S046', 'Rupa Sen', 'Civil', '2005-02-18', 'Female', 2, 'rupa.sen@example.com', 'rupa@130'),
('S020', 'Meera Khan', 'Electronics', '2005-05-06', 'Female', 2, 'meera.khan@example.com', 'meera@104'),
('S010', 'Nikita Roy', 'Computer Science', '2005-04-01', 'Female', 2, 'nikita.roy@example.com', 'nikita@444'),
('S049', 'Sagar Anand', 'Civil', '2005-08-23', 'Male', 2, 'sagar.anand@example.com', 'sagar@133'),
('S056', 'Fatima Khan', 'Electrical', '2005-12-22', 'Female', 2, 'fatima.khan@example.com', 'fatima@140'),
('S001', 'Aarav Mehta', 'Computer Science', '2006-02-15', 'Male', 1, 'aarav.mehta@example.com', 'aarav@123'),
('S045', 'Ajay Das', 'Civil', '2006-03-11', 'Male', 1, 'ajay.das@example.com', 'ajay@129'),
('S034', 'Sneha Pillai', 'Information Technology', '2006-03-09', 'Female', 1, 'sneha.pillai@example.com', 'sneha@118'),
('S030', 'Shruti Kapoor', 'Mechanical', '2005-02-15', 'Female', 2, 'shruti.kapoor@example.com', 'shruti@114'),
('S036', 'Aparna Iyer', 'Information Technology', '2005-12-17', 'Female', 2, 'aparna.iyer@example.com', 'aparna@120'),
('S057', 'Gaurav Sharma', 'Electrical', '2005-10-13', 'Male', 2, 'gaurav.sharma@example.com', 'gaurav@141'),
('S022', 'Pooja Yadav', 'Mechanical', '2006-07-25', 'Female', 1, 'pooja.yadav@example.com', 'pooja@106'),
('S038', 'Tina George', 'Information Technology', '2005-04-15', 'Female', 2, 'tina.george@example.com', 'tina@122'),
('S014', 'Ananya Pillai', 'Electronics', '2006-02-09', 'Female', 1, 'ananya.pillai@example.com', 'ananya@888'),
('S053', 'Chirag Ghosh', 'Electrical', '2006-07-30', 'Male', 1, 'chirag.ghosh@example.com', 'chirag@137'),
('S040', 'Neha Choudhary', 'Information Technology', '2005-06-08', 'Female', 2, 'neha.choudhary@example.com', 'neha@124'),
('S042', 'Pallavi Sinha', 'Civil', '2006-07-24', 'Female', 1, 'pallavi.sinha@example.com', 'pallavi@126'),
('S024', 'Divya Menon', 'Mechanical', '2006-11-08', 'Female', 1, 'divya.menon@example.com', 'divya@108'),
('S060', 'Jaya Rao', 'Electrical', '2005-03-02', 'Female', 2, 'jaya.rao@example.com', 'jaya@144');

SELECT * FROM student;

CREATE TABLE faculty_details (
    faculty_id VARCHAR(10) PRIMARY KEY,
    faculty_name VARCHAR(50) NOT NULL,
    faculty_email VARCHAR(100) UNIQUE NOT NULL,
    faculty_password VARCHAR(255) NOT NULL,
    faculty_department VARCHAR(50) NOT NULL,
    designation VARCHAR(50) NOT NULL
);
INSERT INTO faculty_details (faculty_id, faculty_name, faculty_email, faculty_password, faculty_department, designation) VALUES
('F001', 'Dr. Anil Kumar', 'anil.kumar@university.edu', 'anil@123', 'Computer Science', 'Professor'),
('F002', 'Ms. Riya Mehta', 'riya.mehta@university.edu', 'riya@456', 'Computer Science', 'Assistant Professor'),
('F003', 'Mr. Harish Rao', 'harish.rao@university.edu', 'harish@789', 'Computer Science', 'Associate Professor'),
('F004', 'Dr. Sneha Sinha', 'sneha.sinha@university.edu', 'sneha@321', 'Computer Science', 'Professor'),
('F005', 'Mr. Abhay Sharma', 'abhay.sharma@university.edu', 'abhay@654', 'Computer Science', 'Lecturer'),
('F006', 'Dr. Neha Reddy', 'neha.reddy@university.edu', 'neha@987', 'Electronics', 'Professor'),
('F007', 'Mr. Arav Patel', 'arav.patel@university.edu', 'arav@111', 'Electronics', 'Assistant Professor'),
('F008', 'Ms. Kavita Joshi', 'kavita.joshi@university.edu', 'kavita@222', 'Electronics', 'Associate Professor'),
('F009', 'Dr. Ramesh Nair', 'ramesh.nair@university.edu', 'ramesh@333', 'Electronics', 'Professor'),
('F010', 'Mr. Vivek Desai', 'vivek.desai@university.edu', 'vivek@444', 'Electronics', 'Lecturer'),
('F011', 'Dr. Rajesh Gupta', 'rajesh.gupta@university.edu', 'rajesh@555', 'Mechanical', 'Professor'),
('F012', 'Ms. Snehal Deshmukh', 'snehal.deshmukh@university.edu', 'snehal@666', 'Mechanical', 'Associate Professor'),
('F013', 'Mr. Ajay Chauhan', 'ajay.chauhan@university.edu', 'ajay@777', 'Mechanical', 'Assistant Professor'),
('F014', 'Dr. Ritu Yadav', 'ritu.yadav@university.edu', 'ritu@888', 'Mechanical', 'Professor'),
('F015', 'Mr. Deepak Iyer', 'deepak.iyer@university.edu', 'deepak@999', 'Mechanical', 'Lecturer'),
('F016', 'Dr. Meena Sharma', 'meena.sharma@university.edu', 'meena@100', 'Information Technology', 'Professor'),
('F017', 'Ms. Kavya Joshi', 'kavya.joshi@university.edu', 'kavya@101', 'Information Technology', 'Assistant Professor'),
('F018', 'Mr. Adarsh Verma', 'adarsh.verma@university.edu', 'adarsh@102', 'Information Technology', 'Associate Professor'),
('F019', 'Dr. Reena Das', 'reena.das@university.edu', 'reena@103', 'Information Technology', 'Professor'),
('F020', 'Mr. Nitin Bansal', 'nitin.bansal@university.edu', 'nitin@104', 'Information Technology', 'Lecturer'),
('F021', 'Dr. Arjun Nair', 'arjun.nair@university.edu', 'arjun@105', 'Civil', 'Professor'),
('F022', 'Mr. Poonam Iyer', 'poonam.iyer@university.edu', 'poonam@106', 'Civil', 'Assistant Professor'),
('F023', 'Ms. Lata Pillai', 'lata.pillai@university.edu', 'lata@107', 'Civil', 'Associate Professor'),
('F024', 'Dr. Sunil Kumar', 'sunil.kumar@university.edu', 'sunil@108', 'Civil', 'Professor'),
('F025', 'Mr. Rajiv Menon', 'rajiv.menon@university.edu', 'rajiv@109', 'Civil', 'Lecturer'),
('F026', 'Dr. Ravi Menon', 'ravi.menon@university.edu', 'ravi@110', 'Electrical', 'Professor'),
('F027', 'Ms. Tanya Verma', 'tanya.verma@university.edu', 'tanya@111', 'Electrical', 'Assistant Professor'),
('F028', 'Mr. Rohit Chatterjee', 'rohit.chatterjee@university.edu', 'rohit@112', 'Electrical', 'Associate Professor'),
('F029', 'Dr. Vandana Bose', 'vandana.bose@university.edu', 'vandana@113', 'Electrical', 'Professor'),
('F030', 'Mr. Kunal Ghosh', 'kunal.ghosh@university.edu', 'kunal@114', 'Electrical', 'Lecturer');

CREATE TABLE courses (
    course_id VARCHAR(10) PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    department VARCHAR(50) NOT NULL,
    semester INT NOT NULL,
    faculty_id VARCHAR(10),
    faculty_name VARCHAR(50),
    FOREIGN KEY (faculty_id) REFERENCES faculty_details(faculty_id)
);
INSERT INTO courses (course_id, course_name, department, semester, faculty_id, faculty_name) VALUES
('C001', 'Problem Solving using Python', 'Computer Science', 1, 'F001', 'Dr. Anil Kumar'),
('C002', 'Technical English', 'Computer Science', 1, 'F002', 'Ms. Riya Mehta'),
('C003', 'Discrete Mathematics', 'Computer Science', 2, 'F001', 'Dr. Anil Kumar'),
('C004', 'Data Structures and Algorithms', 'Computer Science', 2, 'F002', 'Ms. Riya Mehta'),
('C005', 'Operating Systems', 'Computer Science', 2, 'F001', 'Dr. Anil Kumar'),
('C006', 'Basic Electrical Engineering', 'Electronics', 1, 'F003', 'Dr. Neha Reddy'),
('C007', 'Electronic Devices', 'Electronics', 1, 'F004', 'Mr. Arav Patel'),
('C008', 'Digital Logic Design', 'Electronics', 2, 'F003', 'Dr. Neha Reddy'),
('C009', 'Signals and Systems', 'Electronics', 2, 'F004', 'Mr. Arav Patel'),
('C010', 'Network Theory', 'Electronics', 2, 'F003', 'Dr. Neha Reddy'),
('C011', 'Engineering Mechanics', 'Mechanical', 1, 'F005', 'Mr. Rajesh Gupta'),
('C012', 'Engineering Graphics', 'Mechanical', 1, 'F006', 'Dr. Snehal Deshmukh'),
('C013', 'Thermodynamics', 'Mechanical', 2, 'F005', 'Mr. Rajesh Gupta'),
('C014', 'Manufacturing Processes', 'Mechanical', 2, 'F006', 'Dr. Snehal Deshmukh'),
('C015', 'Material Science', 'Mechanical', 2, 'F005', 'Mr. Rajesh Gupta'),
('C016', 'Computation Structures', 'Information Technology', 1, 'F007', 'Dr. Meena Sharma'),
('C017', 'Programming for Problem Solving', 'Information Technology', 1, 'F008', 'Ms. Kavya Joshi'),
('C018', 'Database Management Systems', 'Information Technology', 2, 'F007', 'Dr. Meena Sharma'),
('C019', 'Computer Networks', 'Information Technology', 2, 'F008', 'Ms. Kavya Joshi'),
('C020', 'Web Technologies', 'Information Technology', 2, 'F007', 'Dr. Meena Sharma'),
('C021', 'Engineering Drawing', 'Civil', 1, 'F009', 'Mr. Arjun Nair'),
('C022', 'Surveying I', 'Civil', 1, 'F010', 'Dr. Poonam Iyer'),
('C023', 'Strength of Materials', 'Civil', 2, 'F009', 'Mr. Arjun Nair'),
('C024', 'Fluid Mechanics', 'Civil', 2, 'F010', 'Dr. Poonam Iyer'),
('C025', 'Building Materials', 'Civil', 2, 'F009', 'Mr. Arjun Nair'),
('C026', 'Circuit Theory', 'Electrical', 1, 'F011', 'Dr. Ravi Menon'),
('C027', 'Electrical Machines I', 'Electrical', 1, 'F012', 'Ms. Tanya Verma'),
('C028', 'Power Systems', 'Electrical', 2, 'F011', 'Dr. Ravi Menon'),
('C029', 'Control Systems', 'Electrical', 2, 'F012', 'Ms. Tanya Verma'),
('C030', 'Electrical Measurements', 'Electrical', 2, 'F011', 'Dr. Ravi Menon');
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE courses;
SET FOREIGN_KEY_CHECKS = 1;
SELECT * FROM courses;
INSERT INTO courses (course_id, course_name, department, semester, faculty_id, faculty_name) VALUES
('C001', 'Problem Solving using Python', 'Computer Science', 1, 'F001', 'Dr. Anil Kumar'),
('C002', 'Object Oriented Programming', 'Computer Science', 2, 'F001', 'Dr. Anil Kumar'),
('C003', 'Technical English', 'Computer Science', 1, 'F002', 'Ms. Riya Mehta'),
('C004', 'Data Structures', 'Computer Science', 2, 'F002', 'Ms. Riya Mehta'),
('C005', 'Mathematics I', 'Computer Science', 1, 'F003', 'Mr. Harish Rao'),
('C006', 'Mathematics II', 'Computer Science', 2, 'F003', 'Mr. Harish Rao'),
('C007', 'Computer Fundamentals', 'Computer Science', 1, 'F004', 'Dr. Sneha Sinha'),
('C008', 'Digital Logic', 'Computer Science', 2, 'F004', 'Dr. Sneha Sinha'),
('C009', 'Basics of Web Design', 'Computer Science', 1, 'F005', 'Mr. Abhay Sharma'),
('C010', 'Database Introduction', 'Computer Science', 2, 'F005', 'Mr. Abhay Sharma'),
('C011', 'Basic Electrical Engineering', 'Electronics', 1, 'F006', 'Dr. Neha Reddy'),
('C012', 'Electronics Fundamentals', 'Electronics', 2, 'F006', 'Dr. Neha Reddy'),
('C013', 'Mathematics I', 'Electronics', 1, 'F007', 'Mr. Arav Patel'),
('C014', 'Mathematics II', 'Electronics', 2, 'F007', 'Mr. Arav Patel'),
('C015', 'Engineering Physics', 'Electronics', 1, 'F008', 'Ms. Kavita Joshi'),
('C016', 'Engineering Chemistry', 'Electronics', 2, 'F008', 'Ms. Kavita Joshi'),
('C017', 'Engineering Graphics', 'Electronics', 1, 'F009', 'Dr. Ramesh Nair'),
('C018', 'Electrical Circuits', 'Electronics', 2, 'F009', 'Dr. Ramesh Nair'),
('C019', 'Workshop Practice', 'Electronics', 1, 'F010', 'Mr. Vivek Desai'),
('C020', 'Network Analysis', 'Electronics', 2, 'F010', 'Mr. Vivek Desai'),
('C021', 'Engineering Mechanics', 'Mechanical', 1, 'F011', 'Dr. Rajesh Gupta'),
('C022', 'Thermodynamics', 'Mechanical', 2, 'F011', 'Dr. Rajesh Gupta'),
('C023', 'Mathematics I', 'Mechanical', 1, 'F012', 'Ms. Snehal Deshmukh'),
('C024', 'Mathematics II', 'Mechanical', 2, 'F012', 'Ms. Snehal Deshmukh'),
('C025', 'Workshop Practice', 'Mechanical', 1, 'F013', 'Mr. Ajay Chauhan'),
('C026', 'Engineering Graphics', 'Mechanical', 2, 'F013', 'Mr. Ajay Chauhan'),
('C027', 'Basic Electrical Engineering', 'Mechanical', 1, 'F014', 'Dr. Ritu Yadav'),
('C028', 'Manufacturing Processes', 'Mechanical', 2, 'F014', 'Dr. Ritu Yadav'),
('C029', 'Material Science', 'Mechanical', 1, 'F015', 'Mr. Deepak Iyer'),
('C030', 'Engineering Drawing', 'Mechanical', 2, 'F015', 'Mr. Deepak Iyer'),
('C031', 'Introduction to Programming', 'Information Technology', 1, 'F016', 'Dr. Meena Sharma'),
('C032', 'Data Structures', 'Information Technology', 2, 'F016', 'Dr. Meena Sharma'),
('C033', 'Computer Systems', 'Information Technology', 1, 'F017', 'Ms. Kavya Joshi'),
('C034', 'Web Technologies', 'Information Technology', 2, 'F017', 'Ms. Kavya Joshi'),
('C035', 'Mathematics I', 'Information Technology', 1, 'F018', 'Mr. Adarsh Verma'),
('C036', 'Mathematics II', 'Information Technology', 2, 'F018', 'Mr. Adarsh Verma'),
('C037', 'Operating Systems Fundamentals', 'Information Technology', 1, 'F019', 'Dr. Reena Das'),
('C038', 'Database Management', 'Information Technology', 2, 'F019', 'Dr. Reena Das'),
('C039', 'Computer Networks', 'Information Technology', 1, 'F020', 'Mr. Nitin Bansal'),
('C040', 'Software Engineering', 'Information Technology', 2, 'F020', 'Mr. Nitin Bansal'),
('C041', 'Engineering Drawing', 'Civil', 1, 'F021', 'Dr. Arjun Nair'),
('C042', 'Surveying I', 'Civil', 2, 'F021', 'Dr. Arjun Nair'),
('C043', 'Mathematics I', 'Civil', 1, 'F022', 'Mr. Poonam Iyer'),
('C044', 'Mathematics II', 'Civil', 2, 'F022', 'Mr. Poonam Iyer'),
('C045', 'Engineering Physics', 'Civil', 1, 'F023', 'Ms. Lata Pillai'),
('C046', 'Engineering Chemistry', 'Civil', 2, 'F023', 'Ms. Lata Pillai'),
('C047', 'Basic Electrical Engineering', 'Civil', 1, 'F024', 'Dr. Sunil Kumar'),
('C048', 'Environmental Studies', 'Civil', 2, 'F024', 'Dr. Sunil Kumar'),
('C049', 'Mechanics of Solids', 'Civil', 1, 'F025', 'Mr. Rajiv Menon'),
('C050', 'Surveying II', 'Civil', 2, 'F025', 'Mr. Rajiv Menon'),
('C051', 'Basic Electrical Engineering', 'Electrical', 1, 'F026', 'Dr. Ravi Menon'),
('C052', 'Network Theory', 'Electrical', 2, 'F026', 'Dr. Ravi Menon'),
('C053', 'Engineering Physics', 'Electrical', 1, 'F027', 'Ms. Tanya Verma'),
('C054', 'Engineering Chemistry', 'Electrical', 2, 'F027', 'Ms. Tanya Verma'),
('C055', 'Mathematics I', 'Electrical', 1, 'F028', 'Mr. Rohit Chatterjee'),
('C056', 'Mathematics II', 'Electrical', 2, 'F028', 'Mr. Rohit Chatterjee'),
('C057', 'Circuit Fundamentals', 'Electrical', 1, 'F029', 'Dr. Vandana Bose'),
('C058', 'Electronic Devices', 'Electrical', 2, 'F029', 'Dr. Vandana Bose'),
('C059', 'Electrical Measurements', 'Electrical', 1, 'F030', 'Mr. Kunal Ghosh'),
('C060', 'Control Systems Basics', 'Electrical', 2, 'F030', 'Mr. Kunal Ghosh');
SELECT * FROM courses;
CREATE TABLE results_sem1 (
    student_id VARCHAR(10),
    student_name VARCHAR(50) NOT NULL,
    department VARCHAR(50) NOT NULL,
    course_id VARCHAR(10),
    course_name VARCHAR(100) NOT NULL,
    max_marks INT DEFAULT 100,
    marks_obtained INT CHECK (marks_obtained BETWEEN 0 AND 100),
    FOREIGN KEY (student_id) REFERENCES student(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
    );
INSERT INTO results_sem1 (student_id, student_name, department, course_id, course_name, marks_obtained) VALUES
('S001', 'Aarav Patel', 'Computer Science', 'C001', 'Problem Solving using Python', 88),
('S001', 'Aarav Patel', 'Computer Science', 'C003', 'Technical English', 76),
('S001', 'Aarav Patel', 'Computer Science', 'C005', 'Mathematics I', 92),
('S002', 'Riya Mehta', 'Computer Science', 'C001', 'Problem Solving using Python', 35), -- failed
('S002', 'Riya Mehta', 'Computer Science', 'C003', 'Technical English', 67),
('S002', 'Riya Mehta', 'Computer Science', 'C005', 'Mathematics I', 80),
('S011', 'Neha Reddy', 'Electronics', 'C011', 'Basic Electrical Engineering', 82),
('S011', 'Neha Reddy', 'Electronics', 'C013', 'Mathematics I', 41),
('S011', 'Neha Reddy', 'Electronics', 'C015', 'Engineering Physics', 90),
('S012', 'Arav Patel', 'Electronics', 'C011', 'Basic Electrical Engineering', 39), -- failed
('S012', 'Arav Patel', 'Electronics', 'C013', 'Mathematics I', 55),
('S012', 'Arav Patel', 'Electronics', 'C015', 'Engineering Physics', 72),
('S021', 'Rajesh Gupta', 'Mechanical', 'C021', 'Engineering Mechanics', 91),
('S021', 'Rajesh Gupta', 'Mechanical', 'C023', 'Mathematics I', 84),
('S021', 'Rajesh Gupta', 'Mechanical', 'C025', 'Workshop Practice', 77),
('S022', 'Snehal Deshmukh', 'Mechanical', 'C021', 'Engineering Mechanics', 28), -- failed
('S022', 'Snehal Deshmukh', 'Mechanical', 'C023', 'Mathematics I', 64),
('S022', 'Snehal Deshmukh', 'Mechanical', 'C025', 'Workshop Practice', 81),
('S041', 'Arjun Nair', 'Civil', 'C041', 'Engineering Drawing', 79),
('S041', 'Arjun Nair', 'Civil', 'C043', 'Mathematics I', 83),
('S041', 'Arjun Nair', 'Civil', 'C045', 'Engineering Physics', 62),
('S042', 'Poonam Iyer', 'Civil', 'C041', 'Engineering Drawing', 50),
('S042', 'Poonam Iyer', 'Civil', 'C043', 'Mathematics I', 36), -- failed
('S042', 'Poonam Iyer', 'Civil', 'C045', 'Engineering Physics', 70),
('S051', 'Ravi Menon', 'Electrical', 'C051', 'Basic Electrical Engineering', 93),
('S051', 'Ravi Menon', 'Electrical', 'C053', 'Engineering Physics', 85),
('S051', 'Ravi Menon', 'Electrical', 'C055', 'Mathematics I', 89),
('S052', 'Tanya Verma', 'Electrical', 'C051', 'Basic Electrical Engineering', 42),
('S052', 'Tanya Verma', 'Electrical', 'C053', 'Engineering Physics', 37), -- failed
('S052', 'Tanya Verma', 'Electrical', 'C055', 'Mathematics I', 74);

CREATE TABLE results_sem2 (
    result_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id VARCHAR(10) NOT NULL,
    student_name VARCHAR(50) NOT NULL,
    department VARCHAR(50) NOT NULL,
    course_id VARCHAR(10) NOT NULL,
    course_name VARCHAR(100) NOT NULL,
    max_marks INT DEFAULT 100,
    marks_obtained INT CHECK (marks_obtained BETWEEN 0 AND 100),
	FOREIGN KEY (student_id) REFERENCES student(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO results_sem2 (student_id, student_name, department, course_id, course_name, marks_obtained) VALUES
('S001', 'Aarav Patel', 'Computer Science', 'C031', 'Data Structures and Algorithms', 92),
('S001', 'Aarav Patel', 'Computer Science', 'C032', 'Database Management Systems', 84),
('S001', 'Aarav Patel', 'Computer Science', 'C033', 'Computer Networks', 76),
('S001', 'Aarav Patel', 'Computer Science', 'C034', 'Engineering Mathematics II', 89),
('S001', 'Aarav Patel', 'Computer Science', 'C035', 'Environmental Science', 81),
('S002', 'Riya Mehta', 'Computer Science', 'C031', 'Data Structures and Algorithms', 65),
('S002', 'Riya Mehta', 'Computer Science', 'C032', 'Database Management Systems', 74),
('S002', 'Riya Mehta', 'Computer Science', 'C033', 'Computer Networks', 79),
('S002', 'Riya Mehta', 'Computer Science', 'C034', 'Engineering Mathematics II', 83),
('S002', 'Riya Mehta', 'Computer Science', 'C035', 'Environmental Science', 90),

('S003', 'Ishan Rao', 'Computer Science', 'C031', 'Data Structures and Algorithms', 38), -- failed
('S003', 'Ishan Rao', 'Computer Science', 'C032', 'Database Management Systems', 42),
('S003', 'Ishan Rao', 'Computer Science', 'C033', 'Computer Networks', 55),
('S003', 'Ishan Rao', 'Computer Science', 'C034', 'Engineering Mathematics II', 60),
('S003', 'Ishan Rao', 'Computer Science', 'C035', 'Environmental Science', 49),
('S011', 'Neha Reddy', 'Electronics', 'C036', 'Analog Circuits', 86),
('S011', 'Neha Reddy', 'Electronics', 'C037', 'Electromagnetic Theory', 78),
('S011', 'Neha Reddy', 'Electronics', 'C038', 'Microprocessors', 82),
('S011', 'Neha Reddy', 'Electronics', 'C039', 'Probability and Random Processes', 85),
('S011', 'Neha Reddy', 'Electronics', 'C040', 'Environmental Science', 91),
('S012', 'Arav Patel', 'Electronics', 'C036', 'Analog Circuits', 42),
('S012', 'Arav Patel', 'Electronics', 'C037', 'Electromagnetic Theory', 37), -- failed
('S012', 'Arav Patel', 'Electronics', 'C038', 'Microprocessors', 55),
('S012', 'Arav Patel', 'Electronics', 'C039', 'Probability and Random Processes', 60),
('S012', 'Arav Patel', 'Electronics', 'C040', 'Environmental Science', 63),
('S021', 'Rajesh Gupta', 'Mechanical', 'C041', 'Applied Thermodynamics', 91),
('S021', 'Rajesh Gupta', 'Mechanical', 'C042', 'Kinematics of Machines', 87),
('S021', 'Rajesh Gupta', 'Mechanical', 'C043', 'Engineering Materials', 83),
('S021', 'Rajesh Gupta', 'Mechanical', 'C044', 'Fluid Mechanics', 79),
('S021', 'Rajesh Gupta', 'Mechanical', 'C045', 'Environmental Science', 90),
('S022', 'Snehal Deshmukh', 'Mechanical', 'C041', 'Applied Thermodynamics', 38), -- failed
('S022', 'Snehal Deshmukh', 'Mechanical', 'C042', 'Kinematics of Machines', 45),
('S022', 'Snehal Deshmukh', 'Mechanical', 'C043', 'Engineering Materials', 59),
('S022', 'Snehal Deshmukh', 'Mechanical', 'C044', 'Fluid Mechanics', 60),
('S022', 'Snehal Deshmukh', 'Mechanical', 'C045', 'Environmental Science', 66),
('S031', 'Meena Sharma', 'Information Technology', 'C046', 'Object Oriented Programming', 84),
('S031', 'Meena Sharma', 'Information Technology', 'C047', 'Computer Architecture', 79),
('S031', 'Meena Sharma', 'Information Technology', 'C048', 'Operating Systems', 92),
('S031', 'Meena Sharma', 'Information Technology', 'C049', 'Engineering Mathematics II', 88),
('S031', 'Meena Sharma', 'Information Technology', 'C050', 'Environmental Science', 86),
('S032', 'Kavya Joshi', 'Information Technology', 'C046', 'Object Oriented Programming', 69),
('S032', 'Kavya Joshi', 'Information Technology', 'C047', 'Computer Architecture', 73),
('S032', 'Kavya Joshi', 'Information Technology', 'C048', 'Operating Systems', 40),
('S032', 'Kavya Joshi', 'Information Technology', 'C049', 'Engineering Mathematics II', 75),
('S032', 'Kavya Joshi', 'Information Technology', 'C050', 'Environmental Science', 78),
('S041', 'Arjun Nair', 'Civil', 'C051', 'Structural Engineering', 77),
('S041', 'Arjun Nair', 'Civil', 'C052', 'Transportation Engineering', 84),
('S041', 'Arjun Nair', 'Civil', 'C053', 'Hydraulics', 73),
('S041', 'Arjun Nair', 'Civil', 'C054', 'Surveying II', 82),
('S041', 'Arjun Nair', 'Civil', 'C055', 'Environmental Science', 80),
('S042', 'Poonam Iyer', 'Civil', 'C051', 'Structural Engineering', 38), -- failed
('S042', 'Poonam Iyer', 'Civil', 'C052', 'Transportation Engineering', 59),
('S042', 'Poonam Iyer', 'Civil', 'C053', 'Hydraulics', 62),
('S042', 'Poonam Iyer', 'Civil', 'C054', 'Surveying II', 60),
('S042', 'Poonam Iyer', 'Civil', 'C055', 'Environmental Science', 69),
('S051', 'Ravi Menon', 'Electrical', 'C056', 'Power Systems', 85),
('S051', 'Ravi Menon', 'Electrical', 'C057', 'Electrical Machines II', 82),
('S051', 'Ravi Menon', 'Electrical', 'C058', 'Control Engineering', 88),
('S051', 'Ravi Menon', 'Electrical', 'C059', 'Engineering Mathematics II', 91),
('S051', 'Ravi Menon', 'Electrical', 'C060', 'Environmental Science', 83),
('S052', 'Tanya Verma', 'Electrical', 'C056', 'Power Systems', 45),
('S052', 'Tanya Verma', 'Electrical', 'C057', 'Electrical Machines II', 32), -- failed
('S052', 'Tanya Verma', 'Electrical', 'C058', 'Control Engineering', 55),
('S052', 'Tanya Verma', 'Electrical', 'C059', 'Engineering Mathematics II', 64),
('S052', 'Tanya Verma', 'Electrical', 'C060', 'Environmental Science', 73);
DROP TABLE IF EXISTS results_sem1;
DROP TABLE IF EXISTS results_sem2;

-- Create tables with the exact columns you requested
CREATE TABLE results_sem1 (
    student_id VARCHAR(10),
    student_name VARCHAR(50) NOT NULL,
    department VARCHAR(50) NOT NULL,
    course_id VARCHAR(10),
    course_name VARCHAR(100) NOT NULL,
    max_marks INT DEFAULT 100,
    marks_obtained INT CHECK (marks_obtained BETWEEN 0 AND 100),
    FOREIGN KEY (student_id) REFERENCES student(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

CREATE TABLE results_sem2 (
    student_id VARCHAR(10),
    student_name VARCHAR(50) NOT NULL,
    department VARCHAR(50) NOT NULL,
    course_id VARCHAR(10),
    course_name VARCHAR(100) NOT NULL,
    max_marks INT DEFAULT 100,
    marks_obtained INT CHECK (marks_obtained BETWEEN 0 AND 100),
    FOREIGN KEY (student_id) REFERENCES student(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);
INSERT INTO results_sem1 (student_id, student_name, department, course_id, course_name, marks_obtained) VALUES
('S001','Aarav Mehta','Computer Science','C001','Problem Solving using Python',88),
('S001','Aarav Mehta','Computer Science','C003','Technical English',76),
('S001','Aarav Mehta','Computer Science','C005','Mathematics I',92),
('S001','Aarav Mehta','Computer Science','C007','Computer Fundamentals',81),
('S001','Aarav Mehta','Computer Science','C009','Basics of Web Design',79),

('S002','Diya Sharma','Computer Science','C001','Problem Solving using Python',74),
('S002','Diya Sharma','Computer Science','C003','Technical English',68),
('S002','Diya Sharma','Computer Science','C005','Mathematics I',71),
('S002','Diya Sharma','Computer Science','C007','Computer Fundamentals',65),
('S002','Diya Sharma','Computer Science','C009','Basics of Web Design',70),

('S003','Karan Patel','Computer Science','C001','Problem Solving using Python',91),
('S003','Karan Patel','Computer Science','C003','Technical English',89),
('S003','Karan Patel','Computer Science','C005','Mathematics I',85),
('S003','Karan Patel','Computer Science','C007','Computer Fundamentals',87),
('S003','Karan Patel','Computer Science','C009','Basics of Web Design',90),

('S004','Priya Nair','Computer Science','C001','Problem Solving using Python',75),
('S004','Priya Nair','Computer Science','C003','Technical English',72),
('S004','Priya Nair','Computer Science','C005','Mathematics I',69),
('S004','Priya Nair','Computer Science','C007','Computer Fundamentals',70),
('S004','Priya Nair','Computer Science','C009','Basics of Web Design',73),

('S005','Vikram Rao','Computer Science','C001','Problem Solving using Python',86),
('S005','Vikram Rao','Computer Science','C003','Technical English',82),
('S005','Vikram Rao','Computer Science','C005','Mathematics I',88),
('S005','Vikram Rao','Computer Science','C007','Computer Fundamentals',84),
('S005','Vikram Rao','Computer Science','C009','Basics of Web Design',87),

-- === ELECTRONICS (S011 - S015) sem1 courses: C011,C013,C015,C017,C019 ===
('S011','Harsh Vora','Electronics','C011','Basic Electrical Engineering',83),
('S011','Harsh Vora','Electronics','C013','Mathematics I',77),
('S011','Harsh Vora','Electronics','C015','Engineering Physics',81),
('S011','Harsh Vora','Electronics','C017','Engineering Graphics',79),
('S011','Harsh Vora','Electronics','C019','Workshop Practice',75),

('S012','Ritika Sen','Electronics','C011','Basic Electrical Engineering',69),
('S012','Ritika Sen','Electronics','C013','Mathematics I',65),
('S012','Ritika Sen','Electronics','C015','Engineering Physics',72),
('S012','Ritika Sen','Electronics','C017','Engineering Graphics',68),
('S012','Ritika Sen','Electronics','C019','Workshop Practice',70),

('S013','Manish Kumar','Electronics','C011','Basic Electrical Engineering',91),
('S013','Manish Kumar','Electronics','C013','Mathematics I',88),
('S013','Manish Kumar','Electronics','C015','Engineering Physics',90),
('S013','Manish Kumar','Electronics','C017','Engineering Graphics',86),
('S013','Manish Kumar','Electronics','C019','Workshop Practice',89),

('S014','Ananya Pillai','Electronics','C011','Basic Electrical Engineering',36), -- failed
('S014','Ananya Pillai','Electronics','C013','Mathematics I',42),
('S014','Ananya Pillai','Electronics','C015','Engineering Physics',40),
('S014','Ananya Pillai','Electronics','C017','Engineering Graphics',44),
('S014','Ananya Pillai','Electronics','C019','Workshop Practice',39),

('S015','Dev Patel','Electronics','C011','Basic Electrical Engineering',80),
('S015','Dev Patel','Electronics','C013','Mathematics I',78),
('S015','Dev Patel','Electronics','C015','Engineering Physics',82),
('S015','Dev Patel','Electronics','C017','Engineering Graphics',81),
('S015','Dev Patel','Electronics','C019','Workshop Practice',79),

-- === MECHANICAL (S021 - S025) sem1 courses: C021,C023,C025,C027,C029 ===
('S021','Ritesh Malhotra','Mechanical','C021','Engineering Mechanics',88),
('S021','Ritesh Malhotra','Mechanical','C023','Mathematics I',84),
('S021','Ritesh Malhotra','Mechanical','C025','Workshop Practice',80),
('S021','Ritesh Malhotra','Mechanical','C027','Basic Electrical Engineering',83),
('S021','Ritesh Malhotra','Mechanical','C029','Material Science',79),

('S022','Pooja Yadav','Mechanical','C021','Engineering Mechanics',58), -- low
('S022','Pooja Yadav','Mechanical','C023','Mathematics I',61),
('S022','Pooja Yadav','Mechanical','C025','Workshop Practice',63),
('S022','Pooja Yadav','Mechanical','C027','Basic Electrical Engineering',59),
('S022','Pooja Yadav','Mechanical','C029','Material Science',60)
;
INSERT INTO results_sem2 (student_id, student_name, department, course_id, course_name, marks_obtained) VALUES
('S006','Sneha Das','Computer Science','C002','Object Oriented Programming',88),
('S006','Sneha Das','Computer Science','C004','Data Structures',84),
('S006','Sneha Das','Computer Science','C006','Mathematics II',79),
('S006','Sneha Das','Computer Science','C008','Digital Logic',81),
('S006','Sneha Das','Computer Science','C010','Database Introduction',85),

('S007','Rohan Singh','Computer Science','C002','Object Oriented Programming',92),
('S007','Rohan Singh','Computer Science','C004','Data Structures',89),
('S007','Rohan Singh','Computer Science','C006','Mathematics II',85),
('S007','Rohan Singh','Computer Science','C008','Digital Logic',87),
('S007','Rohan Singh','Computer Science','C010','Database Introduction',90),

('S008','Isha Gupta','Computer Science','C002','Object Oriented Programming',80),
('S008','Isha Gupta','Computer Science','C004','Data Structures',76),
('S008','Isha Gupta','Computer Science','C006','Mathematics II',70),
('S008','Isha Gupta','Computer Science','C008','Digital Logic',72),
('S008','Isha Gupta','Computer Science','C010','Database Introduction',78),

('S009','Aditya Jain','Computer Science','C002','Object Oriented Programming',85),
('S009','Aditya Jain','Computer Science','C004','Data Structures',82),
('S009','Aditya Jain','Computer Science','C006','Mathematics II',88),
('S009','Aditya Jain','Computer Science','C008','Digital Logic',80),
('S009','Aditya Jain','Computer Science','C010','Database Introduction',84),

('S010','Nikita Roy','Computer Science','C002','Object Oriented Programming',90),
('S010','Nikita Roy','Computer Science','C004','Data Structures',85),
('S010','Nikita Roy','Computer Science','C006','Mathematics II',86),
('S010','Nikita Roy','Computer Science','C008','Digital Logic',88),
('S010','Nikita Roy','Computer Science','C010','Database Introduction',92),

-- === ELECTRONICS (S016 - S020) sem2 courses: C012,C014,C016,C018,C020 ===
('S016','Sanya Bose','Electronics','C012','Electronics Fundamentals',86),
('S016','Sanya Bose','Electronics','C014','Mathematics II',84),
('S016','Sanya Bose','Electronics','C016','Engineering Chemistry',79),
('S016','Sanya Bose','Electronics','C018','Electrical Circuits',81),
('S016','Sanya Bose','Electronics','C020','Network Analysis',85),

('S017','Rahul Reddy','Electronics','C012','Electronics Fundamentals',92),
('S017','Rahul Reddy','Electronics','C014','Mathematics II',89),
('S017','Rahul Reddy','Electronics','C016','Engineering Chemistry',85),
('S017','Rahul Reddy','Electronics','C018','Electrical Circuits',87),
('S017','Rahul Reddy','Electronics','C020','Network Analysis',90),

('S018','Tanya Joseph','Electronics','C012','Electronics Fundamentals',77),
('S018','Tanya Joseph','Electronics','C014','Mathematics II',74),
('S018','Tanya Joseph','Electronics','C016','Engineering Chemistry',70),
('S018','Tanya Joseph','Electronics','C018','Electrical Circuits',72),
('S018','Tanya Joseph','Electronics','C020','Network Analysis',78),

('S019','Varun Iyer','Electronics','C012','Electronics Fundamentals',83),
('S019','Varun Iyer','Electronics','C014','Mathematics II',81),
('S019','Varun Iyer','Electronics','C016','Engineering Chemistry',79),
('S019','Varun Iyer','Electronics','C018','Electrical Circuits',82),
('S019','Varun Iyer','Electronics','C020','Network Analysis',84),

('S020','Meera Khan','Electronics','C012','Electronics Fundamentals',69),
('S020','Meera Khan','Electronics','C014','Mathematics II',35), -- failed
('S020','Meera Khan','Electronics','C016','Engineering Chemistry',60),
('S020','Meera Khan','Electronics','C018','Electrical Circuits',62),
('S020','Meera Khan','Electronics','C020','Network Analysis',66),

-- === MECHANICAL (S026 - S030) sem2 courses: C022,C024,C026,C028,C030 ===
('S026','Neelima Dey','Mechanical','C022','Thermodynamics',80),
('S026','Neelima Dey','Mechanical','C024','Mathematics II',82),
('S026','Neelima Dey','Mechanical','C026','Engineering Graphics',79),
('S026','Neelima Dey','Mechanical','C028','Manufacturing Processes',81),
('S026','Neelima Dey','Mechanical','C030','Engineering Drawing',78),

('S027','Ravi Tiwari','Mechanical','C022','Thermodynamics',87),
('S027','Ravi Tiwari','Mechanical','C024','Mathematics II',85),
('S027','Ravi Tiwari','Mechanical','C026','Engineering Graphics',88),
('S027','Ravi Tiwari','Mechanical','C028','Manufacturing Processes',86),
('S027','Ravi Tiwari','Mechanical','C030','Engineering Drawing',84),

('S028','Aditi Ghosh','Mechanical','C022','Thermodynamics',75),
('S028','Aditi Ghosh','Mechanical','C024','Mathematics II',72),
('S028','Aditi Ghosh','Mechanical','C026','Engineering Graphics',70),
('S028','Aditi Ghosh','Mechanical','C028','Manufacturing Processes',68),
('S028','Aditi Ghosh','Mechanical','C030','Engineering Drawing',73),

('S029','Parth Desai','Mechanical','C022','Thermodynamics',90),
('S029','Parth Desai','Mechanical','C024','Mathematics II',88),
('S029','Parth Desai','Mechanical','C026','Engineering Graphics',92),
('S029','Parth Desai','Mechanical','C028','Manufacturing Processes',91),
('S029','Parth Desai','Mechanical','C030','Engineering Drawing',89),

('S030','Shruti Kapoor','Mechanical','C022','Thermodynamics',62),
('S030','Shruti Kapoor','Mechanical','C024','Mathematics II',58),
('S030','Shruti Kapoor','Mechanical','C026','Engineering Graphics',55),
('S030','Shruti Kapoor','Mechanical','C028','Manufacturing Processes',61),
('S030','Shruti Kapoor','Mechanical','C030','Engineering Drawing',59)
;
SHOW TABLES;
SELECT * FROM admin_details;
SELECT * FROM student;
SELECT * FROM faculty_details;
SELECT * FROM results_sem1;
SELECT * FROM results_sem2;
