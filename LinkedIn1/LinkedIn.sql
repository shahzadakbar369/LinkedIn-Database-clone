create database linkedin1;
use linkedin1;

CREATE TABLE User (
    user_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    location VARCHAR(100),
    join_date DATE NOT NULL
);

INSERT INTO User (user_id, name, email, password, location, join_date) VALUES
(1, 'Ali Khan', 'ali.khan@example.com', 'ali123', 'Karachi', '2024-06-12'),
(2, 'Sana Ahmed', 'sana.ahmed@example.com', 'sana456', 'Lahore', '2024-06-12'),
(3, 'Hassan Malik', 'hassan.malik@example.com', 'hassan789', 'Islamabad', '2024-06-11'),
(4, 'Fatima Khan', 'fatima.khan@example.com', 'fatima@123', 'Rawalpindi', '2024-06-11'),
(5, 'Ahmed Khan', 'ahmed.khan@example.com', 'ahmed321', 'Faisalabad', '2024-06-10'),
(6, 'Saima Ali', 'saima.ali@example.com', 'saima456', 'Multan', '2024-06-10'),
(7, 'Imran Hussain', 'imran.hussain@example.com', 'imran123', 'Quetta', '2024-06-09'),
(8, 'Ayesha Aslam', 'ayesha.aslam@example.com', 'ayesha@123', 'Peshawar', '2024-06-09'),
(9, 'Usman Ali', 'usman.ali@example.com', 'usman789', 'Sialkot', '2024-06-08'),
(10, 'Sadia Khan', 'sadia.khan@example.com', 'sadia123', 'Gujranwala', '2024-06-08'),
(11, 'Naveed Ahmed', 'naveed.ahmed@example.com', 'naveed456', 'Hyderabad', '2024-06-07'),
(12, 'Farah Malik', 'farah.malik@example.com', 'farah@123', 'Sukkur', '2024-06-07'),
(13, 'Asad Khan', 'asad.khan@example.com', 'asad789', 'Bahawalpur', '2024-06-06'),
(14, 'Amina Rehman', 'amina.rehman@example.com', 'amina123', 'Mirpur Khas', '2024-06-06'),
(15, 'Bilal Ahmed', 'bilal.ahmed@example.com', 'bilal@123', 'Sargodha', '2024-06-05'),
(16, 'Sadia Nadeem', 'sadia.nadeem@example.com', 'sadia789', 'Gujrat', '2024-06-05'),
(17, 'Zubair Khan', 'zubair.khan@example.com', 'zubair123', 'Jhelum', '2024-06-04'),
(18, 'Sara Khan', 'sara.khan@example.com', 'sara@123', 'Mardan', '2024-06-04'),
(19, 'Waqar Ali', 'waqar.ali@example.com', 'waqar456', 'Larkana', '2024-06-03'),
(20, 'Aisha Nisar', 'aisha.nisar@example.com', 'aisha@123', 'Kohat', '2024-06-03');

CREATE TABLE Experience (
    experience_id INT PRIMARY KEY,
    user_id INT,
    company_name VARCHAR(100) NOT NULL,
    title VARCHAR(100) NOT NULL,
    location VARCHAR(100),
    start_date DATE,
    end_date DATE,
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);


INSERT INTO Experience (experience_id, user_id, company_name, title, location, start_date, end_date) VALUES
(1, 1, 'ABC Corporation', 'Software Engineer', 'Karachi', '2020-01-01', '2022-06-30'),
(2, 1, 'XYZ Tech', 'Senior Developer', 'Karachi', '2018-05-01', '2019-12-31'),
(3, 2, 'Tech Solutions Ltd', 'Product Manager', 'Lahore', '2019-03-15', '2021-08-30'),
(4, 3, 'Alpha Inc', 'Data Analyst', 'Islamabad', '2020-09-01', '2022-04-15'),
(5, 4, 'Beta Software', 'UX Designer', 'Rawalpindi', '2018-07-01', '2020-12-31'),
(6, 5, 'Gamma Systems', 'Software Engineer', 'Faisalabad', '2017-02-15', '2019-11-30'),
(7, 6, 'Delta Solutions', 'Software Developer', 'Multan', '2019-08-01', '2021-12-31'),
(8, 7, 'Omega Tech', 'Data Scientist', 'Quetta', '2018-04-01', '2020-10-15'),
(9, 8, 'Tech Innovations', 'Project Manager', 'Peshawar', '2019-06-15', '2021-09-30'),
(10, 9, 'Zeta Corporation', 'Software Engineer', 'Sialkot', '2020-03-01', '2022-08-31'),
(11, 10, 'Sigma Solutions', 'Software Developer', 'Gujranwala', '2018-10-01', '2020-12-31'),
(12, 11, 'Pi Technologies', 'UX Designer', 'Hyderabad', '2019-09-15', '2022-01-31'),
(13, 12, 'Epsilon Tech', 'Data Analyst', 'Sukkur', '2017-12-01', '2019-07-31'),
(14, 13, 'Lambda Software', 'Software Engineer', 'Bahawalpur', '2020-08-15', '2022-11-30'),
(15, 14, 'Mu Solutions', 'Senior Developer', 'Mirpur Khas', '2018-06-01', '2020-12-31'),
(16, 15, 'Nu Tech', 'Software Developer', 'Sargodha', '2019-05-01', '2021-10-15'),
(17, 16, 'Kappa Solutions', 'Data Scientist', 'Gujrat', '2018-02-15', '2020-07-31'),
(18, 17, 'Rho Corporation', 'Product Manager', 'Jhelum', '2019-11-01', '2022-02-28'),
(19, 18, 'Omega Software', 'Software Engineer', 'Mardan', '2017-10-15', '2019-12-31'),
(20, 19, 'Psi Tech', 'Senior Developer', 'Larkana', '2019-04-01', '2021-09-30'),
(21, 20, 'Chi Solutions', 'Project Manager', 'Kohat', '2018-08-15', '2020-11-30'),
(22, 1, 'Epsilon Solutions', 'Software Engineer', 'Karachi', '2015-07-01', '2017-12-31'),
(23, 2, 'Lambda Tech', 'Product Manager', 'Lahore', '2017-06-15', '2019-09-30'),
(24, 3, 'Mu Corporation', 'Data Analyst', 'Islamabad', '2018-08-01', '2020-11-15'),
(25, 4, 'Nu Solutions', 'UX Designer', 'Rawalpindi', '2016-09-01', '2018-12-31'),
(26, 5, 'Kappa Software', 'Software Engineer', 'Faisalabad', '2015-12-15', '2018-03-31'),
(27, 6, 'Rho Tech', 'Software Developer', 'Multan', '2017-03-01', '2019-06-30'),
(28, 7, 'Omega Solutions', 'Data Scientist', 'Quetta', '2016-05-15', '2018-10-31'),
(29, 8, 'Psi Corporation', 'Project Manager', 'Peshawar', '2017-08-01', '2019-11-15'),
(30, 9, 'Chi Tech', 'Software Engineer', 'Sialkot', '2016-10-15', '2019-01-31'),
(31, 10, 'Phi Solutions', 'Software Developer', 'Gujranwala', '2017-01-01', '2019-04-30'),
(32, 11, 'Omega Innovations', 'UX Designer', 'Hyderabad', '2016-02-15', '2018-05-31'),
(33, 12, 'Psi Tech', 'Data Analyst', 'Sukkur', '2018-04-01', '2020-07-15'),
(34, 13, 'Chi Software', 'Software Engineer', 'Bahawalpur', '2016-06-15', '2018-09-30'),
(35, 14, 'Phi Tech', 'Senior Developer', 'Mirpur Khas', '2017-09-01', '2019-12-15'),
(36, 15, 'Omega Solutions', 'Software Developer', 'Sargodha', '2016-11-15', '2019-02-28'),
(37, 16, 'Psi Corporation', 'Data Scientist', 'Gujrat', '2017-02-01', '2019-05-31'),
(38, 17, 'Chi Tech', 'Product Manager', 'Jhelum', '2016-03-15', '2018-06-30'),
(39, 18, 'Phi Solutions', 'Software Engineer', 'Mardan', '2017-05-01', '2019-08-15'),
(40, 19, 'Omega Innovations', 'Senior Developer', 'Larkana', '2016-08-15', '2018-11-30'),
(41, 20, 'Psi Tech', 'Project Manager', 'Kohat', '2017-01-01', '2019-04-30'),
(42, 1, 'Chi Software', 'Software Engineer', 'Karachi', '2014-03-15', '2016-06-30'),
(43, 2, 'Phi Tech', 'Senior Developer', 'Lahore', '2016-01-01', '2018-04-30'),
(44, 3, 'Omega Solutions', 'Software Developer', 'Islamabad', '2017-02-15', '2019-05-31'),
(45, 4, 'Psi Corporation', 'Data Scientist', 'Rawalpindi', '2015-04-01', '2017-07-15'),
(46, 5, 'Chi Tech', 'Product Manager', 'Faisalabad', '2014-05-15', '2016-08-31'),
(47, 6, 'Phi Solutions', 'Software Engineer', 'Multan', '2016-07-01', '2018-10-15'),
(48, 7, 'Omega Innovations', 'Senior Developer', 'Quetta', '2015-08-15', '2017-11-30'),
(49, 8, 'Psi Tech', 'Project Manager', 'Peshawar', '2016-01-01', '2018-04-30'),
(50, 9, 'Chi Software', 'Software Engineer', 'Sialkot', '2015-03-15', '2017-06-30'),
(51, 10, 'Phi Tech', 'Senior Developer', 'Gujranwala', '2016-05-01', '2018-08-15'),
(52, 11, 'Omega Solutions', 'Software Developer', 'Hyderabad', '2015-06-15', '2017-09-30'),
(53, 12, 'Psi Corporation', 'Data Scientist', 'Sukkur', '2017-08-01', '2019-11-15'),
(54, 13, 'Chi Tech', 'Product Manager', 'Bahawalpur', '2015-10-15', '2017-01-31'),
(55, 14, 'Phi Solutions', 'Software Engineer', 'Mirpur Khas', '2016-12-01', '2019-03-15'),
(56, 15, 'Omega Innovations', 'Senior Developer', 'Sargodha', '2016-01-15', '2018-04-30'),
(57, 16, 'Psi Tech', 'Project Manager', 'Gujrat', '2015-03-01', '2017-06-15'),
(58, 17, 'Chi Software', 'Software Engineer', 'Jhelum', '2016-04-15', '2018-07-31'),
(59, 18, 'Phi Tech', 'Senior Developer', 'Mardan', '2015-06-01', '2017-09-15'),
(60, 19, 'Omega Solutions', 'Software Developer', 'Larkana', '2016-08-15', '2018-11-30'),
(61, 20, 'Psi Corporation', 'Data Scientist', 'Kohat', '2015-09-01', '2017-12-15'),
(62, 1, 'Chi Tech', 'Product Manager', 'Karachi', '2013-11-01', '2016-02-28'),
(63, 2, 'Phi Solutions', 'Software Engineer', 'Lahore', '2015-01-15', '2017-04-30'),
(64, 3, 'Omega Innovations', 'Senior Developer', 'Islamabad', '2016-03-01', '2018-06-15'),
(65, 4, 'Psi Tech', 'Project Manager', 'Rawalpindi', '2014-04-15', '2016-07-31'),
(66, 5, 'Chi Software', 'Software Engineer', 'Faisalabad', '2013-06-01', '2015-09-15'),
(67, 6, 'Phi Tech', 'Senior Developer', 'Multan', '2015-08-15', '2017-11-30'),
(68, 7, 'Omega Solutions', 'Software Developer', 'Quetta', '2014-10-01', '2017-01-15'),
(69, 8, 'Psi Corporation', 'Data Scientist', 'Peshawar', '2015-12-15', '2018-03-31'),
(70, 9, 'Chi Tech', 'Product Manager', 'Sialkot', '2014-01-01', '2016-04-15'),
(71, 10, 'Phi Solutions', 'Software Engineer', 'Gujranwala', '2015-03-15', '2017-06-30'),
(72, 11, 'Omega Innovations', 'Senior Developer', 'Hyderabad', '2014-05-01', '2016-08-15'),
(73, 12, 'Psi Tech', 'Project Manager', 'Sukkur', '2016-06-15', '2018-09-30'),
(74, 13, 'Chi Software', 'Software Engineer', 'Bahawalpur', '2014-08-01', '2016-11-15'),
(75, 14, 'Phi Tech', 'Senior Developer', 'Mirpur Khas', '2015-10-15', '2018-01-31'),
(76, 15, 'Omega Solutions', 'Software Developer', 'Sargodha', '2014-12-01', '2017-03-15'),
(77, 16, 'Psi Corporation', 'Data Scientist', 'Gujrat', '2016-01-15', '2018-04-30'),
(78, 17, 'Chi Tech', 'Product Manager', 'Jhelum', '2015-03-01', '2017-06-15'),
(79, 18, 'Phi Solutions', 'Software Engineer', 'Mardan', '2016-04-15', '2018-07-31'),
(80, 19, 'Omega Innovations', 'Senior Developer', 'Larkana', '2015-06-01', '2017-09-15');

CREATE TABLE User_Experience (
    user_experience_id INT PRIMARY KEY,
    user_id INT,
    experience_id INT,
    FOREIGN KEY (user_id) REFERENCES User(user_id),
    FOREIGN KEY (experience_id) REFERENCES Experience(experience_id)
);

INSERT INTO User_Experience (user_experience_id, user_id, experience_id) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 3, 4),
(5, 4, 5),
(6, 5, 6),
(7, 6, 7),
(8, 7, 8),
(9, 8, 9),
(10, 9, 10),
(11, 10, 11),
(12, 11, 12),
(13, 12, 13),
(14, 13, 14),
(15, 14, 15),
(16, 15, 16),
(17, 16, 17),
(18, 17, 18),
(19, 18, 19),
(20, 19, 20);

CREATE TABLE Connection (
    connection_id INT PRIMARY KEY,
    user_id INT,
    connection_status ENUM('Connected', 'Not Connected') NOT NULL,
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);

INSERT INTO Connection (connection_id, user_id, connection_status) VALUES
(1, 1, 'Connected'),
(2, 2, 'Connected'),
(3, 3, 'Connected'),
(4, 4, 'Not Connected'),
(5, 5, 'Connected'),
(6, 6, 'Not Connected'),
(7, 7, 'Connected'),
(8, 8, 'Not Connected'),
(9, 9, 'Connected'),
(10, 10, 'Connected'),
(11, 11, 'Connected'),
(12, 12, 'Not Connected'),
(13, 13, 'Connected'),
(14, 14, 'Not Connected'),
(15, 15, 'Connected'),
(16, 16, 'Connected'),
(17, 17, 'Not Connected'),
(18, 18, 'Connected'),
(19, 19, 'Connected'),
(20, 20, 'Connected'),
(21, 1, 'Connected'),
(22, 2, 'Not Connected'),
(23, 3, 'Connected'),
(24, 4, 'Connected'),
(25, 5, 'Not Connected'),
(26, 6, 'Connected'),
(27, 7, 'Connected'),
(28, 8, 'Not Connected'),
(29, 9, 'Connected'),
(30, 10, 'Not Connected'),
(31, 11, 'Connected'),
(32, 12, 'Connected'),
(33, 13, 'Not Connected'),
(34, 14, 'Connected'),
(35, 15, 'Connected'),
(36, 16, 'Not Connected'),
(37, 17, 'Connected'),
(38, 18, 'Connected'),
(39, 19, 'Not Connected'),
(40, 20, 'Connected'),
(41, 1, 'Connected'),
(42, 2, 'Connected'),
(43, 3, 'Not Connected'),
(44, 4, 'Connected'),
(45, 5, 'Not Connected'),
(46, 6, 'Connected'),
(47, 7, 'Connected'),
(48, 8, 'Not Connected'),
(49, 9, 'Connected'),
(50, 10, 'Connected'),
(51, 11, 'Connected'),
(52, 12, 'Not Connected'),
(53, 13, 'Connected'),
(54, 14, 'Not Connected'),
(55, 15, 'Connected'),
(56, 16, 'Connected'),
(57, 17, 'Not Connected'),
(58, 18, 'Connected'),
(59, 19, 'Connected'),
(60, 20, 'Connected'),
(61, 1, 'Connected'),
(62, 2, 'Not Connected'),
(63, 3, 'Connected'),
(64, 4, 'Connected'),
(65, 5, 'Not Connected'),
(66, 6, 'Connected'),
(67, 7, 'Connected'),
(68, 8, 'Not Connected'),
(69, 9, 'Connected'),
(70, 10, 'Not Connected'),
(71, 11, 'Connected'),
(72, 12, 'Connected'),
(73, 13, 'Not Connected'),
(74, 14, 'Connected'),
(75, 15, 'Connected'),
(76, 16, 'Not Connected'),
(77, 17, 'Connected'),
(78, 18, 'Connected'),
(79, 19, 'Not Connected'),
(80, 20, 'Connected');


CREATE TABLE User_Connection (
    user_connection_id INT PRIMARY KEY,
    user_id INT,
    connection_id INT,
    FOREIGN KEY (user_id) REFERENCES User(user_id),
    FOREIGN KEY (connection_id) REFERENCES Connection(connection_id)
);

INSERT INTO User_Connection (user_connection_id, user_id, connection_id) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 17),
(18, 18, 18),
(19, 19, 19),
(20, 20, 20);


CREATE TABLE Education (
    education_id INT PRIMARY KEY,
    user_id INT,
    school_name VARCHAR(100) NOT NULL,
    degree VARCHAR(100),
    field_of_study VARCHAR(100),
    start_date DATE,
    end_date DATE,
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);

INSERT INTO Education (education_id, user_id, school_name, degree, field_of_study, start_date, end_date) VALUES
(1, 1, 'ABC School', 'Bachelor of Science', 'Computer Science', '2015-09-01', '2019-05-31'),
(2, 2, 'XYZ College', 'Bachelor of Arts', 'English Literature', '2016-08-15', '2020-06-30'),
(3, 3, 'Alpha Academy', 'Bachelor of Business Administration', 'Marketing', '2017-09-01', '2021-05-31'),
(4, 4, 'Beta Institute', 'Bachelor of Engineering', 'Electrical Engineering', '2018-08-15', '2022-06-30'),
(5, 5, 'Gamma School', 'Bachelor of Science', 'Computer Engineering', '2019-09-01', '2023-05-31'),
(6, 6, 'Delta College', 'Bachelor of Arts', 'Psychology', '2020-08-15', '2024-06-30'),
(7, 7, 'Omega Academy', 'Bachelor of Business Administration', 'Finance', '2021-09-01', '2025-05-31'),
(8, 8, 'Tech Institute', 'Bachelor of Technology', 'Information Technology', '2016-09-01', '2020-05-31'),
(9, 9, 'Zeta School', 'Bachelor of Science', 'Physics', '2017-08-15', '2021-06-30'),
(10, 10, 'Sigma College', 'Bachelor of Arts', 'History', '2018-09-01', '2022-05-31'),
(11, 11, 'Pi Academy', 'Bachelor of Business Administration', 'Management', '2019-08-15', '2023-06-30'),
(12, 12, 'Epsilon Institute', 'Bachelor of Engineering', 'Mechanical Engineering', '2020-09-01', '2024-05-31'),
(13, 13, 'Lambda School', 'Bachelor of Science', 'Mathematics', '2021-08-15', '2025-06-30'),
(14, 14, 'Mu College', 'Bachelor of Arts', 'Sociology', '2016-09-01', '2020-05-31'),
(15, 15, 'Nu Academy', 'Bachelor of Business Administration', 'Entrepreneurship', '2017-08-15', '2021-06-30'),
(16, 16, 'Kappa Institute', 'Bachelor of Engineering', 'Civil Engineering', '2018-09-01', '2022-05-31'),
(17, 17, 'Rho School', 'Bachelor of Science', 'Chemistry', '2019-08-15', '2023-06-30'),
(18, 18, 'Omega College', 'Bachelor of Arts', 'Communications', '2020-09-01', '2024-05-31'),
(19, 19, 'Psi Academy', 'Bachelor of Business Administration', 'International Business', '2021-08-15', '2025-06-30'),
(20, 20, 'Chi Institute', 'Bachelor of Engineering', 'Computer Engineering', '2016-09-01', '2020-05-31'),
(21, 1, 'ABC School', 'Master of Science', 'Computer Science', '2020-09-01', '2022-06-30'),
(22, 2, 'XYZ College', 'Master of Arts', 'English Literature', '2021-08-15', '2023-06-30'),
(23, 3, 'Alpha Academy', 'Master of Business Administration', 'Marketing', '2022-09-01', '2024-06-30'),
(24, 4, 'Beta Institute', 'Master of Engineering', 'Electrical Engineering', '2023-08-15', '2025-06-30'),
(25, 5, 'Gamma School', 'Master of Science', 'Computer Engineering', '2024-09-01', '2026-06-30'),
(26, 6, 'Delta College', 'Master of Arts', 'Psychology', '2025-08-15', '2027-06-30'),
(27, 7, 'Omega Academy', 'Master of Business Administration', 'Finance', '2026-09-01', '2028-06-30'),
(28, 8, 'Tech Institute', 'Master of Technology', 'Information Technology', '2021-09-01', '2023-06-30'),
(29, 9, 'Zeta School', 'Master of Science', 'Physics', '2022-08-15', '2024-06-30'),
(30, 10, 'Sigma College', 'Master of Arts', 'History', '2023-09-01', '2025-06-30'),
(31, 11, 'Pi Academy', 'Master of Business Administration', 'Management', '2024-08-15', '2026-06-30'),
(32, 12, 'Epsilon Institute', 'Master of Engineering', 'Mechanical Engineering', '2025-09-01', '2027-06-30'),
(33, 13, 'Lambda School', 'Master of Science', 'Mathematics', '2026-08-15', '2028-06-30'),
(34, 14, 'Mu College', 'Master of Arts', 'Sociology', '2021-09-01', '2023-06-30'),
(35, 15, 'Nu Academy', 'Master of Business Administration', 'Entrepreneurship', '2022-08-15', '2024-06-30'),
(36, 16, 'Kappa Institute', 'Master of Engineering', 'Civil Engineering', '2023-09-01', '2025-06-30'),
(37, 17, 'Rho School', 'Master of Science', 'Chemistry', '2024-08-15', '2026-06-30'),
(38, 18, 'Omega College', 'Master of Arts', 'Communications', '2025-08-01', '2027-06-30'),
(39, 19, 'Psi Academy', 'Master of Business Administration', 'International Business', '2026-09-15', '2028-06-30'),
(40, 20, 'Chi Institute', 'Master of Engineering', 'Computer Engineering', '2021-09-01', '2023-06-30'),
(41, 1, 'ABC School', 'PhD in Computer Science', 'Computer Science', '2022-09-01', '2026-06-30'),
(42, 2, 'XYZ College', 'PhD in English Literature', 'English Literature', '2023-08-15', '2027-06-30'),
(43, 3, 'Alpha Academy', 'PhD in Marketing', 'Marketing', '2024-09-01', '2028-06-30'),
(44, 4, 'Beta Institute', 'PhD in Electrical Engineering', 'Electrical Engineering', '2025-08-15', '2029-06-30'),
(45, 5, 'Gamma School', 'PhD in Computer Engineering', 'Computer Engineering', '2026-09-01', '2030-06-30'),
(46, 6, 'Delta College', 'PhD in Psychology', 'Psychology', '2027-08-15', '2031-06-30'),
(47, 7, 'Omega Academy', 'PhD in Finance', 'Finance', '2028-09-01', '2032-06-30'),
(48, 8, 'Tech Institute', 'PhD in Information Technology', 'Information Technology', '2023-09-01', '2027-06-30'),
(49, 9, 'Zeta School', 'PhD in Physics', 'Physics', '2024-08-15', '2028-06-30'),
(50, 10, 'Sigma College', 'PhD in History', 'History', '2025-09-01', '2029-06-30'),
(51, 11, 'Pi Academy', 'PhD in Management', 'Management', '2026-08-15', '2030-06-30'),
(52, 12, 'Epsilon Institute', 'PhD in Mechanical Engineering', 'Mechanical Engineering', '2027-09-01', '2031-06-30'),
(53, 13, 'Lambda School', 'PhD in Mathematics', 'Mathematics', '2028-08-15', '2032-06-30'),
(54, 14, 'Mu College', 'PhD in Sociology', 'Sociology', '2023-09-01', '2027-06-30'),
(55, 15, 'Nu Academy', 'PhD in Entrepreneurship', 'Entrepreneurship', '2024-08-15', '2028-06-30'),
(56, 16, 'Kappa Institute', 'PhD in Civil Engineering', 'Civil Engineering', '2025-09-01', '2029-06-30'),
(57, 17, 'Rho School', 'PhD in Chemistry', 'Chemistry', '2026-08-15', '2030-06-30'),
(58, 18, 'Omega College', 'PhD in Communications', 'Communications', '2027-09-01', '2031-06-30'),
(59, 19, 'Psi Academy', 'PhD in International Business', 'International Business', '2028-08-15', '2032-06-30'),
(60, 20, 'Chi Institute', 'PhD in Computer Engineering', 'Computer Engineering', '2023-09-01', '2027-06-30'),
(61, 1, 'ABC School', 'Associate Degree', 'Computer Science', '2013-09-01', '2015-06-30'),
(62, 2, 'XYZ College', 'Associate Degree', 'English Literature', '2014-08-15', '2016-06-30'),
(63, 3, 'Alpha Academy', 'Associate Degree', 'Marketing', '2015-09-01', '2017-06-30'),
(64, 4, 'Beta Institute', 'Associate Degree', 'Electrical Engineering', '2016-08-15', '2018-06-30'),
(65, 5, 'Gamma School', 'Associate Degree', 'Computer Engineering', '2017-09-01', '2019-06-30'),
(66, 6, 'Delta College', 'Associate Degree', 'Psychology', '2018-08-15', '2020-06-30'),
(67, 7, 'Omega Academy', 'Associate Degree', 'Finance', '2019-09-01', '2021-06-30'),
(68, 8, 'Tech Institute', 'Associate Degree', 'Information Technology', '2014-09-01', '2016-06-30'),
(69, 9, 'Zeta School', 'Associate Degree', 'Physics', '2015-08-15', '2017-06-30'),
(70, 10, 'Sigma College', 'Associate Degree', 'History', '2016-09-01', '2018-06-30'),
(71, 11, 'Pi Academy', 'Associate Degree', 'Management', '2017-08-15', '2019-06-30'),
(72, 12, 'Epsilon Institute', 'Associate Degree', 'Mechanical Engineering', '2018-09-01', '2020-06-30'),
(73, 13, 'Lambda School', 'Associate Degree', 'Mathematics', '2019-08-15', '2021-06-30'),
(74, 14, 'Mu College', 'Associate Degree', 'Sociology', '2014-09-01', '2016-06-30'),
(75, 15, 'Nu Academy', 'Associate Degree', 'Entrepreneurship', '2015-08-15', '2017-06-30'),
(76, 16, 'Kappa Institute', 'Associate Degree', 'Civil Engineering', '2016-09-01', '2018-06-30'),
(77, 17, 'Rho School', 'Associate Degree', 'Chemistry', '2017-08-15', '2019-06-30'),
(78, 18, 'Omega College', 'Associate Degree', 'Communications', '2018-09-01', '2020-06-30'),
(79, 19, 'Psi Academy', 'Associate Degree', 'International Business', '2019-08-15', '2021-06-30'),
(80, 20, 'Chi Institute', 'Associate Degree', 'Computer Engineering', '2020-09-01', '2022-06-30');



CREATE TABLE User_Education (
    user_education_id INT PRIMARY KEY,
    user_id INT,
    education_id INT,
    FOREIGN KEY (user_id) REFERENCES User(user_id),
    FOREIGN KEY (education_id) REFERENCES Education(education_id)
);

INSERT INTO User_Education (user_education_id, user_id, education_id) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 17),
(18, 18, 18),
(19, 19, 19),
(20, 20, 20);


CREATE TABLE Profile (
    profile_id INT PRIMARY KEY,
    user_id INT,
    headline VARCHAR(255),
    summary TEXT,
    industry VARCHAR(100),
    website VARCHAR(255),
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);

INSERT INTO Profile (profile_id, user_id, headline, summary, industry, website) VALUES
(1, 1, 'Experienced Software Engineer', 'I am a software engineer with expertise in web development and database management.', 'Information Technology', 'www.example.com'),
(2, 2, 'Passionate Writer and Editor', 'I am a writer and editor with a strong background in literature and journalism.', 'Media', 'www.example.com'),
(3, 3, 'Creative Marketing Professional', 'I am a marketing professional with a creative mindset and a track record of successful campaigns.', 'Marketing', 'www.example.com'),
(4, 4, 'Electrical Engineer with a focus on Renewable Energy', 'I am an electrical engineer specializing in renewable energy systems and sustainable design.', 'Engineering', 'www.example.com'),
(5, 5, 'Innovative Computer Scientist', 'I am a computer scientist with a passion for innovation and problem-solving.', 'Information Technology', 'www.example.com'),
(6, 6, 'Dedicated Psychologist', 'I am a psychologist dedicated to helping individuals improve their mental well-being.', 'Psychology', 'www.example.com'),
(7, 7, 'Finance Professional with expertise in Investment Banking', 'I am a finance professional with extensive experience in investment banking and financial analysis.', 'Finance', 'www.example.com'),
(8, 8, 'Experienced IT Consultant', 'I am an IT consultant with a focus on helping businesses optimize their technology infrastructure.', 'Information Technology', 'www.example.com'),
(9, 9, 'Passionate Physicist', 'I am a physicist passionate about exploring the mysteries of the universe through scientific research.', 'Science', 'www.example.com'),
(10, 10, 'History Enthusiast and Educator', 'I am a history enthusiast with a dedication to educating others about the past.', 'Education', 'www.example.com'),
(11, 11, 'Results-driven Management Professional', 'I am a management professional focused on achieving results and driving organizational success.', 'Management', 'www.example.com'),
(12, 12, 'Mechanical Engineer specializing in Robotics', 'I am a mechanical engineer specializing in robotics and automation.', 'Engineering', 'www.example.com'),
(13, 13, 'Mathematics Enthusiast and Educator', 'I am a mathematics enthusiast with a passion for teaching and inspiring others.', 'Education', 'www.example.com'),
(14, 14, 'Sociologist with expertise in Social Research', 'I am a sociologist with expertise in conducting social research and analyzing societal trends.', 'Social Sciences', 'www.example.com'),
(15, 15, 'Entrepreneurial Business Administrator', 'I am a business administrator with an entrepreneurial mindset and a focus on innovation.', 'Business', 'www.example.com'),
(16, 16, 'Civil Engineer specializing in Infrastructure Development', 'I am a civil engineer specializing in infrastructure development and urban planning.', 'Engineering', 'www.example.com'),
(17, 17, 'Chemist with a passion for Environmental Science', 'I am a chemist with a passion for environmental science and sustainability.', 'Science', 'www.example.com'),
(18, 18, 'Communications Specialist with expertise in Public Relations', 'I am a communications specialist with expertise in public relations and strategic communication.', 'Media', 'www.example.com'),
(19, 19, 'International Business Professional with a Global Perspective', 'I am an international business professional with a global perspective and cross-cultural experience.', 'Business', 'www.example.com'),
(20, 20, 'Computer Engineer with a focus on Artificial Intelligence', 'I am a computer engineer specializing in artificial intelligence and machine learning.', 'Information Technology', 'www.example.com'),
(21, 1, 'Experienced Software Engineer', 'I am a software engineer with expertise in web development and database management.', 'Information Technology', 'www.example.com'),
(22, 2, 'Passionate Writer and Editor', 'I am a writer and editor with a strong background in literature and journalism.', 'Media', 'www.example.com'),
(23, 3, 'Creative Marketing Professional', 'I am a marketing professional with a creative mindset and a track record of successful campaigns.', 'Marketing', 'www.example.com'),
(24, 4, 'Electrical Engineer with a focus on Renewable Energy', 'I am an electrical engineer specializing in renewable energy systems and sustainable design.', 'Engineering', 'www.example.com'),
(25, 5, 'Innovative Computer Scientist', 'I am a computer scientist with a passion for innovation and problem-solving.', 'Information Technology', 'www.example.com'),
(26, 6, 'Dedicated Psychologist', 'I am a psychologist dedicated to helping individuals improve their mental well-being.', 'Psychology', 'www.example.com'),
(27, 7, 'Finance Professional with expertise in Investment Banking', 'I am a finance professional with extensive experience in investment banking and financial analysis.', 'Finance', 'www.example.com'),
(28, 8, 'Experienced IT Consultant', 'I am an IT consultant with a focus on helping businesses optimize their technology infrastructure.', 'Information Technology', 'www.example.com'),
(29, 9, 'Passionate Physicist', 'I am a physicist passionate about exploring the mysteries of the universe through scientific research.', 'Science', 'www.example.com'),
(30, 10, 'History Enthusiast and Educator', 'I am a history enthusiast with a dedication to educating others about the past.', 'Education', 'www.example.com'),
(31, 11, 'Results-driven Management Professional', 'I am a management professional focused on achieving results and driving organizational success.', 'Management', 'www.example.com'),
(32, 12, 'Mechanical Engineer specializing in Robotics', 'I am a mechanical engineer specializing in robotics and automation.', 'Engineering', 'www.example.com'),
(33, 13, 'Mathematics Enthusiast and Educator', 'I am a mathematics enthusiast with a passion for teaching and inspiring others.', 'Education', 'www.example.com'),
(34, 14, 'Sociologist with expertise in Social Research', 'I am a sociologist with expertise in conducting social research and analyzing societal trends.', 'Social Sciences', 'www.example.com'),
(35, 15, 'Entrepreneurial Business Administrator', 'I am a business administrator with an entrepreneurial mindset and a focus on innovation.', 'Business', 'www.example.com'),
(36, 16, 'Civil Engineer specializing in Infrastructure Development', 'I am a civil engineer specializing in infrastructure development and urban planning.', 'Engineering', 'www.example.com'),
(37, 17, 'Chemist with a passion for Environmental Science', 'I am a chemist with a passion for environmental science and sustainability.', 'Science', 'www.example.com'),
(38, 18, 'Communications Specialist with expertise in Public Relations', 'I am a communications specialist with expertise in public relations and strategic communication.', 'Media', 'www.example.com'),
(39, 19, 'International Business Professional with a Global Perspective', 'I am an international business professional with a global perspective and cross-cultural experience.', 'Business', 'www.example.com'),
(40, 20, 'Computer Engineer with a focus on Artificial Intelligence', 'I am a computer engineer specializing in artificial intelligence and machine learning.', 'Information Technology', 'www.example.com'),
(41, 1, 'Experienced Software Engineer', 'I am a software engineer with expertise in web development and database management.', 'Information Technology', 'www.example.com'),
(42, 2, 'Passionate Writer and Editor', 'I am a writer and editor with a strong background in literature and journalism.', 'Media', 'www.example.com'),
(43, 3, 'Creative Marketing Professional', 'I am a marketing professional with a creative mindset and a track record of successful campaigns.', 'Marketing', 'www.example.com'),
(44, 4, 'Electrical Engineer with a focus on Renewable Energy', 'I am an electrical engineer specializing in renewable energy systems and sustainable design.', 'Engineering', 'www.example.com'),
(45, 5, 'Innovative Computer Scientist', 'I am a computer scientist with a passion for innovation and problem-solving.', 'Information Technology', 'www.example.com'),
(46, 6, 'Dedicated Psychologist', 'I am a psychologist dedicated to helping individuals improve their mental well-being.', 'Psychology', 'www.example.com'),
(47, 7, 'Finance Professional with expertise in Investment Banking', 'I am a finance professional with extensive experience in investment banking and financial analysis.', 'Finance', 'www.example.com'),
(48, 8, 'Experienced IT Consultant', 'I am an IT consultant with a focus on helping businesses optimize their technology infrastructure.', 'Information Technology', 'www.example.com'),
(49, 9, 'Passionate Physicist', 'I am a physicist passionate about exploring the mysteries of the universe through scientific research.', 'Science', 'www.example.com'),
(50, 10, 'History Enthusiast and Educator', 'I am a history enthusiast with a dedication to educating others about the past.', 'Education', 'www.example.com'),
(51, 11, 'Results-driven Management Professional', 'I am a management professional focused on achieving results and driving organizational success.', 'Management', 'www.example.com'),
(52, 12, 'Mechanical Engineer specializing in Robotics', 'I am a mechanical engineer specializing in robotics and automation.', 'Engineering', 'www.example.com'),
(53, 13, 'Mathematics Enthusiast and Educator', 'I am a mathematics enthusiast with a passion for teaching and inspiring others.', 'Education', 'www.example.com'),
(54, 14, 'Sociologist with expertise in Social Research', 'I am a sociologist with expertise in conducting social research and analyzing societal trends.', 'Social Sciences', 'www.example.com'),
(55, 15, 'Entrepreneurial Business Administrator', 'I am a business administrator with an entrepreneurial mindset and a focus on innovation.', 'Business', 'www.example.com'),
(56, 16, 'Civil Engineer specializing in Infrastructure Development', 'I am a civil engineer specializing in infrastructure development and urban planning.', 'Engineering', 'www.example.com'),
(57, 17, 'Chemist with a passion for Environmental Science', 'I am a chemist with a passion for environmental science and sustainability.', 'Science', 'www.example.com'),
(58, 18, 'Communications Specialist with expertise in Public Relations', 'I am a communications specialist with expertise in public relations and strategic communication.', 'Media', 'www.example.com'),
(59, 19, 'International Business Professional with a Global Perspective', 'I am an international business professional with a global perspective and cross-cultural experience.', 'Business', 'www.example.com'),
(60, 20, 'Computer Engineer with a focus on Artificial Intelligence', 'I am a computer engineer specializing in artificial intelligence and machine learning.', 'Information Technology', 'www.example.com'),(61, 1, 'Experienced Software Engineer', 'I am a software engineer with expertise in web development and database management.', 'Information Technology', 'www.example.com'),
(62, 2, 'Passionate Writer and Editor', 'I am a writer and editor with a strong background in literature and journalism.', 'Media', 'www.example.com'),
(63, 3, 'Creative Marketing Professional', 'I am a marketing professional with a creative mindset and a track record of successful campaigns.', 'Marketing', 'www.example.com'),
(64, 4, 'Electrical Engineer with a focus on Renewable Energy', 'I am an electrical engineer specializing in renewable energy systems and sustainable design.', 'Engineering', 'www.example.com'),
(65, 5, 'Innovative Computer Scientist', 'I am a computer scientist with a passion for innovation and problem-solving.', 'Information Technology', 'www.example.com'),
(66, 6, 'Dedicated Psychologist', 'I am a psychologist dedicated to helping individuals improve their mental well-being.', 'Psychology', 'www.example.com'),
(67, 7, 'Finance Professional with expertise in Investment Banking', 'I am a finance professional with extensive experience in investment banking and financial analysis.', 'Finance', 'www.example.com'),
(68, 8, 'Experienced IT Consultant', 'I am an IT consultant with a focus on helping businesses optimize their technology infrastructure.', 'Information Technology', 'www.example.com'),
(69, 9, 'Passionate Physicist', 'I am a physicist passionate about exploring the mysteries of the universe through scientific research.', 'Science', 'www.example.com'),
(70, 10, 'History Enthusiast and Educator', 'I am a history enthusiast with a dedication to educating others about the past.', 'Education', 'www.example.com'),
(71, 11, 'Results-driven Management Professional', 'I am a management professional focused on achieving results and driving organizational success.', 'Management', 'www.example.com'),
(72, 12, 'Mechanical Engineer specializing in Robotics', 'I am a mechanical engineer specializing in robotics and automation.', 'Engineering', 'www.example.com'),
(73, 13, 'Mathematics Enthusiast and Educator', 'I am a mathematics enthusiast with a passion for teaching and inspiring others.', 'Education', 'www.example.com'),
(74, 14, 'Sociologist with expertise in Social Research', 'I am a sociologist with expertise in conducting social research and analyzing societal trends.', 'Social Sciences', 'www.example.com'),
(75, 15, 'Entrepreneurial Business Administrator', 'I am a business administrator with an entrepreneurial mindset and a focus on innovation.', 'Business', 'www.example.com'),
(76, 16, 'Civil Engineer specializing in Infrastructure Development', 'I am a civil engineer specializing in infrastructure development and urban planning.', 'Engineering', 'www.example.com'),
(77, 17, 'Chemist with a passion for Environmental Science', 'I am a chemist with a passion for environmental science and sustainability.', 'Science', 'www.example.com'),
(78, 18, 'Communications Specialist with expertise in Public Relations', 'I am a communications specialist with expertise in public relations and strategic communication.', 'Media', 'www.example.com'),
(79, 19, 'International Business Professional with a Global Perspective', 'I am an international business professional with a global perspective and cross-cultural experience.', 'Business', 'www.example.com'),
(80, 20, 'Computer Engineer with a focus on Artificial Intelligence', 'I am a computer engineer specializing in artificial intelligence and machine learning.', 'Information Technology', 'www.example.com');

CREATE TABLE userGroups (
    group_id INT PRIMARY KEY,
    user_id INT,
    group_name VARCHAR(255),
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);

INSERT INTO userGroups (group_id, user_id, group_name) VALUES
(1, 1, 'Software Engineers Group'),
(2, 2, 'Writers and Editors Circle'),
(3, 3, 'Creative Marketing Professionals Network'),
(4, 4, 'Renewable Energy Enthusiasts'),
(5, 5, 'Computer Science Club'),
(6, 6, 'Psychology Enthusiasts Community'),
(7, 7, 'Finance Professionals Association'),
(8, 8, 'IT Consultants Network'),
(9, 9, 'Physics Research Group'),
(10, 10, 'History Buffs Society'),
(11, 11, 'Management Professionals Forum'),
(12, 12, 'Robotics Enthusiasts Association'),
(13, 13, 'Mathematics Enthusiasts Society'),
(14, 14, 'Sociology Research Group'),
(15, 15, 'Entrepreneurs Network'),
(16, 16, 'Civil Engineers Forum'),
(17, 17, 'Environmental Science Enthusiasts'),
(18, 18, 'Communications Professionals Network'),
(19, 19, 'Global Business Network'),
(20, 20, 'Artificial Intelligence Enthusiasts Group'),
(21, 1, 'Software Engineers Group'),
(22, 2, 'Writers and Editors Circle'),
(23, 3, 'Creative Marketing Professionals Network'),
(24, 4, 'Renewable Energy Enthusiasts'),
(25, 5, 'Computer Science Club'),
(26, 6, 'Psychology Enthusiasts Community'),
(27, 7, 'Finance Professionals Association'),
(28, 8, 'IT Consultants Network'),
(29, 9, 'Physics Research Group'),
(30, 10, 'History Buffs Society'),
(31, 11, 'Management Professionals Forum'),
(32, 12, 'Robotics Enthusiasts Association'),
(33, 13, 'Mathematics Enthusiasts Society'),
(34, 14, 'Sociology Research Group'),
(35, 15, 'Entrepreneurs Network'),
(36, 16, 'Civil Engineers Forum'),
(37, 17, 'Environmental Science Enthusiasts'),
(38, 18, 'Communications Professionals Network'),
(39, 19, 'Global Business Network'),
(40, 20, 'Artificial Intelligence Enthusiasts Group'),
(41, 1, 'Software Engineers Group'),
(42, 2, 'Writers and Editors Circle'),
(43, 3, 'Creative Marketing Professionals Network'),
(44, 4, 'Renewable Energy Enthusiasts'),
(45, 5, 'Computer Science Club'),
(46, 6, 'Psychology Enthusiasts Community'),
(47, 7, 'Finance Professionals Association'),
(48, 8, 'IT Consultants Network'),
(49, 9, 'Physics Research Group'),
(50, 10, 'History Buffs Society'),
(51, 11, 'Management Professionals Forum'),
(52, 12, 'Robotics Enthusiasts Association'),
(53, 13, 'Mathematics Enthusiasts Society'),
(54, 14, 'Sociology Research Group'),
(55, 15, 'Entrepreneurs Network'),
(56, 16, 'Civil Engineers Forum'),
(57, 17, 'Environmental Science Enthusiasts'),
(58, 18, 'Communications Professionals Network'),
(59, 19, 'Global Business Network'),
(60, 20, 'Artificial Intelligence Enthusiasts Group'),
(61, 1, 'Software Engineers Group'),
(62, 2, 'Writers and Editors Circle'),
(63, 3, 'Creative Marketing Professionals Network'),
(64, 4, 'Renewable Energy Enthusiasts'),
(65, 5, 'Computer Science Club'),
(66, 6, 'Psychology Enthusiasts Community'),
(67, 7, 'Finance Professionals Association'),
(68, 8, 'IT Consultants Network'),
(69, 9, 'Physics Research Group'),
(70, 10, 'History Buffs Society'),
(71, 11, 'Management Professionals Forum'),
(72, 12, 'Robotics Enthusiasts Association'),
(73, 13, 'Mathematics Enthusiasts Society'),
(74, 14, 'Sociology Research Group'),
(75, 15, 'Entrepreneurs Network'),
(76, 16, 'Civil Engineers Forum'),
(77, 17, 'Environmental Science Enthusiasts'),
(78, 18, 'Communications Professionals Network'),
(79, 19, 'Global Business Network'),
(80, 20, 'Artificial Intelligence Enthusiasts Group');

CREATE TABLE Group_Members (
    group_member_id INT PRIMARY KEY,
    group_id INT,
    user_id INT,
    FOREIGN KEY (group_id) REFERENCES userGroups(group_id),
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);

INSERT INTO Group_Members (group_member_id, group_id, user_id) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 17),
(18, 18, 18),
(19, 19, 19),
(20, 20, 20);


CREATE TABLE Group_Group_Member (
    group_group_member_id INT PRIMARY KEY,
    group_id INT,
    group_member_id INT,
    FOREIGN KEY (group_id) REFERENCES userGroups(group_id),
    FOREIGN KEY (group_member_id) REFERENCES Group_Members(group_member_id)
);

INSERT INTO Group_Group_Member (group_group_member_id, group_id, group_member_id) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 17),
(18, 18, 18),
(19, 19, 19),
(20, 20, 20);


CREATE TABLE Skills (
    skill_id INT PRIMARY KEY,
    user_id INT,
    skill_name VARCHAR(255),
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);

INSERT INTO Skills (skill_id, user_id, skill_name) VALUES
(1, 1, 'JavaScript'),
(2, 2, 'Creative Writing'),
(3, 3, 'Digital Marketing'),
(4, 4, 'Renewable Energy Systems'),
(5, 5, 'Python Programming'),
(6, 6, 'Clinical Psychology'),
(7, 7, 'Financial Analysis'),
(8, 8, 'Network Security'),
(9, 9, 'Quantum Mechanics'),
(10, 10, 'Historical Research'),
(11, 11, 'Strategic Management'),
(12, 12, 'Robotics Engineering'),
(13, 13, 'Advanced Calculus'),
(14, 14, 'Social Research Methods'),
(15, 15, 'Entrepreneurship'),
(16, 16, 'Structural Engineering'),
(17, 17, 'Environmental Chemistry'),
(18, 18, 'Public Relations'),
(19, 19, 'Cross-Cultural Communication'),
(20, 20, 'Machine Learning'),
(21, 1, 'React.js'),
(22, 2, 'Fiction Writing'),
(23, 3, 'Content Marketing'),
(24, 4, 'Solar Energy'),
(25, 5, 'Data Analysis'),
(26, 6, 'Cognitive Behavioral Therapy'),
(27, 7, 'Investment Banking'),
(28, 8, 'Cloud Computing'),
(29, 9, 'Particle Physics'),
(30, 10, 'Archival Research'),
(31, 11, 'Leadership Development'),
(32, 12, 'Control Systems'),
(33, 13, 'Number Theory'),
(34, 14, 'Qualitative Analysis'),
(35, 15, 'Startup Management'),
(36, 16, 'Transportation Engineering'),
(37, 17, 'Pollution Control'),
(38, 18, 'Media Relations'),
(39, 19, 'International Negotiation'),
(40, 20, 'Deep Learning'),
(41, 1, 'Node.js'),
(42, 2, 'Journalism'),
(43, 3, 'SEO'),
(44, 4, 'Wind Energy'),
(45, 5, 'Machine Learning'),
(46, 6, 'Family Therapy'),
(47, 7, 'Corporate Finance'),
(48, 8, 'Database Management'),
(49, 9, 'String Theory'),
(50, 10, 'Historical Analysis'),
(51, 11, 'Change Management'),
(52, 12, 'Artificial Intelligence'),
(53, 13, 'Differential Equations'),
(54, 14, 'Ethnographic Research'),
(55, 15, 'Venture Capital'),
(56, 16, 'Urban Planning'),
(57, 17, 'Analytical Chemistry'),
(58, 18, 'Crisis Communication'),
(59, 19, 'Global Strategy'),
(60, 20, 'Natural Language Processing'),
(61, 1, 'HTML'),
(62, 2, 'Editing'),
(63, 3, 'Social Media Marketing'),
(64, 4, 'Bioenergy'),
(65, 5, 'Java Programming'),
(66, 6, 'Child Psychology'),
(67, 7, 'Financial Modeling'),
(68, 8, 'Virtualization'),
(69, 9, 'Astrophysics'),
(70, 10, 'Museum Curation'),
(71, 11, 'Project Management'),
(72, 12, 'Embedded Systems'),
(73, 13, 'Linear Algebra'),
(74, 14, 'Survey Design'),
(75, 15, 'Product Development'),
(76, 16, 'Water Resources Engineering'),
(77, 17, 'Organic Chemistry'),
(78, 18, 'Event Planning'),
(79, 19, 'Diplomacy'),
(80, 20, 'Computer Vision');



CREATE TABLE User_Skills (
    user_skill_id INT PRIMARY KEY,
    user_id INT,
    skill_id INT,
    FOREIGN KEY (user_id) REFERENCES User(user_id),
    FOREIGN KEY (skill_id) REFERENCES Skills(skill_id)
);

INSERT INTO User_Skills (user_skill_id, user_id, skill_id) VALUES
(1, 1, 1),
(2, 1, 21),
(3, 1, 41),
(4, 2, 2),
(5, 2, 22),
(6, 2, 42),
(7, 3, 3),
(8, 3, 23),
(9, 3, 43),
(10, 4, 4),
(11, 4, 24),
(12, 4, 44),
(13, 5, 5),
(14, 5, 25),
(15, 5, 45),
(16, 6, 6),
(17, 6, 26),
(18, 6, 46),
(19, 7, 7),
(20, 7, 27);


CREATE TABLE Post (
    post_id INT PRIMARY KEY,
    user_id INT,
    content TEXT,
    post_date DATETIME,
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);

INSERT INTO Post (post_id, user_id, content, post_date) VALUES
(1, 1, 'Just finished a new JavaScript project. Feeling accomplished!', '2024-06-01 09:30:00'),
(2, 2, 'Just published a new article on creative writing techniques.', '2024-06-02 11:15:00'),
(3, 3, 'Excited to launch our new digital marketing campaign tomorrow!', '2024-06-03 14:45:00'),
(4, 4, 'Installed a new solar energy system today. It''s great to be more eco-friendly!', '2024-06-04 16:20:00'),
(5, 5, 'Completed a machine learning project using Python. Feeling proud!', '2024-06-05 18:00:00'),
(6, 6, 'Today, I helped a child overcome their fear of spiders. Small victories matter!', '2024-06-06 20:10:00'),
(7, 7, 'Analyzing market trends for potential investment opportunities.', '2024-06-07 09:30:00'),
(8, 8, 'Implemented new security measures for our network infrastructure.', '2024-06-08 11:45:00'),
(9, 9, 'Studying the behavior of particles in quantum mechanics.', '2024-06-09 14:00:00'),
(10, 10, 'Discovered fascinating historical documents at the museum today.', '2024-06-10 16:30:00'),
(11, 11, 'Leading a team to implement strategic changes in our organization.', '2024-06-11 18:45:00'),
(12, 12, 'Developed a new algorithm for controlling robotic systems.', '2024-06-12 20:55:00'),
(13, 13, 'Solving complex calculus problems with ease.', '2024-06-13 09:30:00'),
(14, 14, 'Conducting interviews for my sociology research project.', '2024-06-14 11:00:00'),
(15, 15, 'Launching my startup with innovative product ideas.', '2024-06-15 13:15:00'),
(16, 16, 'Designing sustainable urban infrastructure for future cities.', '2024-06-16 15:40:00'),
(17, 17, 'Researching methods to reduce pollution in our environment.', '2024-06-17 17:50:00'),
(18, 18, 'Handling media relations for a high-profile event.', '2024-06-18 19:30:00'),
(19, 19, 'Negotiating international agreements for global cooperation.', '2024-06-19 21:00:00'),
(20, 20, 'Developed an advanced computer vision algorithm.', '2024-06-20 09:30:00'),
(21, 1, 'Working on a new React.js component for our website.', '2024-06-21 11:15:00'),
(22, 2, 'Editing my latest novel manuscript for publication.', '2024-06-22 14:00:00'),
(23, 3, 'Optimizing SEO strategies for better online visibility.', '2024-06-23 16:20:00'),
(24, 4, 'Researching new bioenergy sources for sustainable power.', '2024-06-24 18:45:00'),
(25, 5, 'Implementing data analysis techniques for business insights.', '2024-06-25 20:30:00'),
(26, 6, 'Providing counseling sessions for families in need.', '2024-06-26 09:30:00'),
(27, 7, 'Analyzing financial data for investment decision-making.', '2024-06-27 11:45:00'),
(28, 8, 'Managing databases for efficient data storage and retrieval.', '2024-06-28 14:00:00'),
(29, 9, 'Exploring theoretical concepts in astrophysics.', '2024-06-29 16:15:00'),
(30, 10, 'Curating historical artifacts for an upcoming exhibition.', '2024-06-30 18:30:00'),
(31, 11, 'Implementing change management strategies for organizational improvement.', '2024-07-01 20:45:00'),
(32, 12, 'Experimenting with AI algorithms for autonomous systems.', '2024-07-02 09:30:00'),
(33, 13, 'Applying differential equations to model physical phenomena.', '2024-07-03 11:00:00'),
(34, 14, 'Conducting fieldwork for qualitative research analysis.', '2024-07-04 13:20:00'),
(35, 15, 'Pitching new product ideas to potential investors.', '2024-07-05 15:40:00'),
(36, 16, 'Designing transportation systems for efficient urban mobility.', '2024-07-06 17:55:00'),
(37, 17, 'Investigating methods to mitigate chemical pollution in water bodies.', '2024-07-07 20:10:00'),
(38, 18, 'Managing crisis communication during a PR emergency.', '2024-07-08 09:30:00'),
(39, 19, 'Participating in diplomatic negotiations for peace treaties.', '2024-07-09 11:45:00'),
(40, 20, 'Building advanced neural networks for image recognition.', '2024-07-10 14:00:00'),
(41, 1, 'Collaborating with team members on a Node.js project.', '2024-07-11 16:30:00'),
(42, 2, 'Interviewing sources for investigative journalism.', '2024-07-12 18:45:00'),
(43, 3, 'Optimizing website content for higher search engine rankings.', '2024-07-13 20:00:00'),
(44, 4, 'Experimenting with wind turbines for renewable energy generation.', '2024-07-14 09:30:00'),
(45, 5, 'Developing predictive models using machine learning algorithms.', '2024-07-15 11:15:00'),
(46, 6, 'Providing therapy sessions for children with behavioral issues.', '2024-07-16 13:30:00'),
(47, 7, 'Analyzing financial markets for potential investment opportunities.', '2024-07-17 15:45:00'),
(48, 8, 'Designing relational databases for efficient data management.', '2024-07-18 17:55:00'),
(49, 9, 'Studying the implications of string theory on cosmology.', '2024-07-19 20:10:00'),
(50, 10, 'Researching historical documents for evidence of past events.', '2024-07-20 09:30:00'),
(51, 11, 'Leading team-building activities for improved teamwork.', '2024-07-21 11:45:00'),
(52, 12, 'Creating AI-driven chatbots for customer service applications.', '2024-07-22 14:00:00'),
(53, 13, 'Solving differential equations to model physical systems.', '2024-07-23 16:20:00'),
(54, 14, 'Conducting participant observation for ethnographic research.', '2024-07-24 18:30:00'),
(55, 15, 'Securing funding from venture capitalists for startup growth.', '2024-07-25 20:45:00'),
(56, 16, 'Designing sustainable transportation solutions for cities.', '2024-07-26 09:30:00'),
(57, 17, 'Analyzing chemical composition of soil samples for environmental studies.', '2024-07-27 11:15:00'),
(58, 18, 'Managing media responses during a crisis situation.', '2024-07-28 13:30:00'),
(59, 19, 'Negotiating trade agreements for economic cooperation.', '2024-07-29 15:45:00'),
(60, 20, 'Developing algorithms for natural language understanding.', '2024-07-30 17:55:00'),
(61, 1, 'Building dynamic web applications using React.js.', '2024-07-31 20:10:00'),
(62, 2, 'Writing articles on current events for a news publication.', '2024-08-01 09:30:00'),
(63, 3, 'Implementing social media advertising campaigns for brand awareness.', '2024-08-02 11:45:00'),
(64, 4, 'Experimenting with biofuel production methods in the lab.', '2024-08-03 14:00:00'),
(65, 5, 'Analyzing big data using Python for business insights.', '2024-08-04 16:20:00'),
(66, 6, 'Providing therapy sessions for adolescents dealing with depression.', '2024-08-05 18:45:00'),
(67, 7, 'Researching investment opportunities in emerging markets.', '2024-08-06 20:30:00'),
(68, 8, 'Optimizing database performance for faster query execution.', '2024-08-07 09:30:00'),
(69, 9, 'Exploring the mysteries of black holes in astrophysics.', '2024-08-08 11:15:00'),
(70, 10, 'Cataloging historical artifacts for museum exhibitions.', '2024-08-09 13:30:00'),
(71, 11, 'Implementing organizational change initiatives for efficiency.', '2024-08-10 15:45:00'),
(72, 12, 'Developing machine learning models for autonomous vehicles.', '2024-08-11 17:55:00'),
(73, 13, 'Applying differential equations to model population dynamics.', '2024-08-12 20:10:00'),
(74, 14, 'Analyzing cultural practices in diverse communities.', '2024-08-13 09:30:00'),
(75, 15, 'Expanding market reach through digital marketing strategies.', '2024-08-14 11:45:00'),
(76, 16, 'Designing eco-friendly infrastructure for urban development.', '2024-08-15 14:00:00'),
(77, 17, 'Investigating the impact of industrial pollutants on aquatic ecosystems.', '2024-08-16 16:20:00'),
(78, 18, 'Managing public relations during major corporate events.', '2024-08-17 18:30:00'),
(79, 19, 'Participating in diplomatic talks to resolve international disputes.', '2024-08-18 20:45:00'),
(80, 20, 'Creating innovative algorithms for natural language processing.', '2024-08-19 09:30:00');


CREATE TABLE Share (
    share_id INT PRIMARY KEY,
    user_id INT,
    post_id INT,
    FOREIGN KEY (user_id) REFERENCES User(user_id),
    FOREIGN KEY (post_id) REFERENCES Post(post_id)
);

INSERT INTO Share (share_id, user_id, post_id) VALUES
(1, 2, 1),
(2, 3, 2),
(3, 4, 3),
(4, 5, 4),
(5, 6, 5),
(6, 7, 6),
(7, 8, 7),
(8, 9, 8),
(9, 10, 9),
(10, 11, 10),
(11, 12, 11),
(12, 13, 12),
(13, 14, 13),
(14, 15, 14),
(15, 16, 15),
(16, 17, 16),
(17, 18, 17),
(18, 19, 18),
(19, 20, 19),
(20, 1, 20),
(21, 2, 21),
(22, 3, 22),
(23, 4, 23),
(24, 5, 24),
(25, 6, 25),
(26, 7, 26),
(27, 8, 27),
(28, 9, 28),
(29, 10, 29),
(30, 11, 30),
(31, 12, 31),
(32, 13, 32),
(33, 14, 33),
(34, 15, 34),
(35, 16, 35),
(36, 17, 36),
(37, 18, 37),
(38, 19, 38),
(39, 20, 39),
(40, 1, 40),
(41, 2, 41),
(42, 3, 42),
(43, 4, 43),
(44, 5, 44),
(45, 6, 45),
(46, 7, 46),
(47, 8, 47),
(48, 9, 48),
(49, 10, 49),
(50, 11, 50),
(51, 12, 51),
(52, 13, 52),
(53, 14, 53),
(54, 15, 54),
(55, 16, 55),
(56, 17, 56),
(57, 18, 57),
(58, 19, 58),
(59, 20, 59),
(60, 1, 60),
(61, 2, 61),
(62, 3, 62),
(63, 4, 63),
(64, 5, 64),
(65, 6, 65),
(66, 7, 66),
(67, 8, 67),
(68, 9, 68),
(69, 10, 69),
(70, 11, 70),
(71, 12, 71),
(72, 13, 72),
(73, 14, 73),
(74, 15, 74),
(75, 16, 75),
(76, 17, 76),
(77, 18, 77),
(78, 19, 78),
(79, 20, 79),
(80, 1, 80);


CREATE TABLE Comment (
    comment_id INT PRIMARY KEY,
    user_id INT,
    post_id INT,
    content TEXT,
    comment_date DATETIME,
    FOREIGN KEY (user_id) REFERENCES User(user_id),
    FOREIGN KEY (post_id) REFERENCES Post(post_id)
);

INSERT INTO Comment (comment_id, user_id, post_id, content, comment_date) VALUES
(1, 2, 1, 'Great job on the JavaScript project!', '2024-06-01 10:00:00'),
(2, 3, 2, 'Your writing skills are impressive!', '2024-06-02 12:00:00'),
(3, 4, 3, 'Looking forward to seeing the campaign!', '2024-06-03 15:00:00'),
(4, 5, 4, 'That''s fantastic! Go green!', '2024-06-04 17:00:00'),
(5, 6, 5, 'Awesome work with Python!', '2024-06-05 19:00:00'),
(6, 7, 6, 'Small victories indeed! Keep it up!', '2024-06-06 21:00:00'),
(7, 8, 7, 'Market trends analysis is crucial.', '2024-06-07 10:00:00'),
(8, 9, 8, 'Security measures are always necessary.', '2024-06-08 12:00:00'),
(9, 10, 9, 'Quantum mechanics is mind-bending!', '2024-06-09 15:00:00'),
(10, 11, 10, 'Historical research is fascinating!', '2024-06-10 17:00:00'),
(11, 12, 11, 'Strategic changes are important for growth.', '2024-06-11 19:00:00'),
(12, 13, 12, 'Controlling robotic systems is cool!', '2024-06-12 21:00:00'),
(13, 14, 13, 'Calculus can be challenging but rewarding.', '2024-06-13 10:00:00'),
(14, 15, 14, 'Good luck with your startup!', '2024-06-14 12:00:00'),
(15, 16, 15, 'Sustainable urban planning is the future.', '2024-06-15 15:00:00'),
(16, 17, 16, 'Pollution control is vital for our environment.', '2024-06-16 17:00:00'),
(17, 18, 17, 'Media relations require finesse.', '2024-06-17 19:00:00'),
(18, 19, 18, 'Diplomacy is key to global cooperation.', '2024-06-18 21:00:00'),
(19, 20, 19, 'Impressive work in computer vision!', '2024-06-19 10:00:00'),
(20, 1, 20, 'Keep up the great work!', '2024-06-20 12:00:00'),
(21, 2, 21, 'Looking forward to seeing the React.js component!', '2024-06-21 15:00:00'),
(22, 3, 22, 'Your novel sounds intriguing!', '2024-06-22 17:00:00'),
(23, 4, 23, 'SEO is crucial for online visibility.', '2024-06-23 19:00:00'),
(24, 5, 24, 'Great research on bioenergy!', '2024-06-24 21:00:00'),
(25, 6, 25, 'Data analysis is invaluable for decision-making.', '2024-06-25 10:00:00'),
(26, 7, 26, 'Therapy sessions make a difference.', '2024-06-26 12:00:00'),
(27, 8, 27, 'Investment decisions require careful analysis.', '2024-06-27 15:00:00'),
(28, 9, 28, 'Database management is essential.', '2024-06-28 17:00:00'),
(29, 10, 29, 'String theory is mind-blowing!', '2024-06-29 19:00:00'),
(30, 11, 30, 'Fascinating historical artifacts!', '2024-06-30 21:00:00'),
(31, 12, 31, 'Change management is challenging but necessary.', '2024-07-01 10:00:00'),
(32, 13, 32, 'AI-driven chatbots are the future of customer service.', '2024-07-02 12:00:00'),
(33, 14, 33, 'Ethnographic research provides valuable insights.', '2024-07-03 15:00:00'),
(34, 15, 34, 'Startup growth requires dedication.', '2024-07-04 17:00:00'),
(35, 16, 35, 'Sustainable transportation is a necessity.', '2024-07-05 19:00:00'),
(36, 17, 36, 'Environmental studies are important for our planet.', '2024-07-06 21:00:00'),
(37, 18, 37, 'Crisis communication is critical during emergencies.', '2024-07-07 10:00:00'),
(38, 19, 38, 'Diplomatic negotiations shape our world.', '2024-07-08 12:00:00'),
(39, 20, 39, 'Natural language understanding is advancing rapidly.', '2024-07-09 15:00:00'),
(40, 1, 40, 'Great insights!', '2024-07-10 17:00:00'),
(41, 2, 41, 'React.js is powerful for web development.', '2024-07-11 19:00:00'),
(42, 3, 42, 'Journalism is a vital part of society.', '2024-07-12 21:00:00'),
(43, 4, 43, 'SEO optimization leads to better visibility.', '2024-07-13 10:00:00'),
(44, 5, 44, 'Renewable energy is the way forward.', '2024-07-14 12:00:00'),
(45, 6, 45, 'Python is versatile for data analysis.', '2024-07-15 15:00:00'),
(46, 7, 46, 'Therapy can make a significant impact.', '2024-07-16 17:00:00'),
(47, 8, 47, 'Financial markets require careful monitoring.', '2024-07-17 19:00:00'),
(48, 9, 48, 'Database performance is crucial for efficiency.', '2024-07-18 21:00:00'),
(49, 10, 49, 'Astrophysics opens up a world of possibilities.', '2024-07-19 10:00:00'),
(50, 11, 50, 'Historical research sheds light on the past.', '2024-07-20 12:00:00'),
(51, 12, 51, 'Team-building fosters collaboration.', '2024-07-21 15:00:00'),
(52, 13, 52, 'AI-driven chatbots improve customer experience.', '2024-07-22 17:00:00'),
(53, 14, 53, 'Ethnographic research provides cultural insights.', '2024-07-23 19:00:00'),
(54, 15, 54, 'Startup funding is essential for growth.', '2024-07-24 21:00:00'),
(55, 16, 55, 'Sustainable transportation reduces emissions.', '2024-07-25 10:00:00'),
(56, 17, 56, 'Chemical pollution harms our environment.', '2024-07-26 12:00:00'),
(57, 18, 57, 'Media relations can shape public perception.', '2024-07-27 15:00:00'),
(58, 19, 58, 'Diplomacy fosters international cooperation.', '2024-07-28 17:00:00'),
(59, 20, 59, 'Natural language processing revolutionizes AI.', '2024-07-29 19:00:00'),
(60, 1, 60, 'Keep up the good work!', '2024-07-30 21:00:00'),
(61, 2, 61, 'React.js components enhance website functionality.', '2024-07-31 10:00:00'),
(62, 3, 62, 'Investigative journalism exposes truth.', '2024-08-01 12:00:00'),
(63, 4, 63, 'SEO strategies drive online success.', '2024-08-02 15:00:00'),
(64, 5, 64, 'Bioenergy offers sustainable solutions.', '2024-08-03 17:00:00'),
(65, 6, 65, 'Python is versatile for data science.', '2024-08-04 19:00:00'),
(66, 7, 66, 'Therapy improves mental well-being.', '2024-08-05 21:00:00'),
(67, 8, 67, 'Financial analysis guides investment decisions.', '2024-08-06 10:00:00'),
(68, 9, 68, 'Efficient database management enhances performance.', '2024-08-07 12:00:00'),
(69, 10, 69, 'String theory challenges our understanding of the universe.', '2024-08-08 15:00:00'),
(70, 11, 70, 'Historical artifacts provide glimpses into the past.', '2024-08-09 17:00:00'),
(71, 12, 71, 'Organizational change drives growth.', '2024-08-10 19:00:00'),
(72, 13, 72, 'Machine learning enhances autonomous vehicles.', '2024-08-11 21:00:00'),
(73, 14, 73, 'Cultural analysis reveals societal dynamics.', '2024-08-12 10:00:00'),
(74, 15, 74, 'Digital marketing expands market reach.', '2024-08-13 12:00:00'),
(75, 16, 75, 'Sustainable infrastructure supports urban development.', '2024-08-14 15:00:00'),
(76, 17, 76, 'Industrial pollutants threaten aquatic ecosystems.', '2024-08-15 17:00:00'),
(77, 18, 77, 'Crisis management is essential for corporate events.', '2024-08-16 19:00:00'),
(78, 19, 78, 'Diplomatic talks aim for global peace.', '2024-08-17 21:00:00'),
(79, 20, 79, 'Advanced algorithms power natural language processing.', '2024-08-18 10:00:00'),
(80, 1, 80, 'Excellent contribution!', '2024-08-19 12:00:00');



CREATE TABLE Likes (
    like_id INT PRIMARY KEY,
    user_id INT,
    post_id INT,
    FOREIGN KEY (user_id) REFERENCES User(user_id),
    FOREIGN KEY (post_id) REFERENCES Post(post_id)
);

INSERT INTO Likes (like_id, user_id, post_id) VALUES
(1, 2, 1),
(2, 3, 2),
(3, 4, 3),
(4, 5, 4),
(5, 6, 5),
(6, 7, 6),
(7, 8, 7),
(8, 9, 8),
(9, 10, 9),
(10, 11, 10),
(11, 12, 11),
(12, 13, 12),
(13, 14, 13),
(14, 15, 14),
(15, 16, 15),
(16, 17, 16),
(17, 18, 17),
(18, 19, 18),
(19, 20, 19),
(20, 1, 20),
(21, 2, 21),
(22, 3, 22),
(23, 4, 23),
(24, 5, 24),
(25, 6, 25),
(26, 7, 26),
(27, 8, 27),
(28, 9, 28),
(29, 10, 29),
(30, 11, 30),
(31, 12, 31),
(32, 13, 32),
(33, 14, 33),
(34, 15, 34),
(35, 16, 35),
(36, 17, 36),
(37, 18, 37),
(38, 19, 38),
(39, 20, 39),
(40, 1, 40),
(41, 2, 41),
(42, 3, 42),
(43, 4, 43),
(44, 5, 44),
(45, 6, 45),
(46, 7, 46),
(47, 8, 47),
(48, 9, 48),
(49, 10, 49),
(50, 11, 50),
(51, 12, 51),
(52, 13, 52),
(53, 14, 53),
(54, 15, 54),
(55, 16, 55),
(56, 17, 56),
(57, 18, 57),
(58, 19, 58),
(59, 20, 59),
(60, 1, 60),
(61, 2, 61),
(62, 3, 62),
(63, 4, 63),
(64, 5, 64),
(65, 6, 65),
(66, 7, 66),
(67, 8, 67),
(68, 9, 68),
(69, 10, 69),
(70, 11, 70),
(71, 12, 71),
(72, 13, 72),
(73, 14, 73),
(74, 15, 74),
(75, 16, 75),
(76, 17, 76),
(77, 18, 77),
(78, 19, 78),
(79, 20, 79),
(80, 1, 80);







-- 1. Retrieve all users who joined after a certain date and are located in a specific location, sorted by their join date.
SELECT * FROM User
WHERE join_date > '2020-01-01' AND location = 'Lahore'
ORDER BY join_date DESC;

-- 2. List all users along with their experiences and education details.
SELECT u.name, e.company_name, edu.school_name
FROM User u
LEFT JOIN User_Experience ue ON u.user_id = ue.user_id
LEFT JOIN Experience e ON ue.experience_id = e.experience_id
LEFT JOIN User_Education uedu ON u.user_id = uedu.user_id
LEFT JOIN Education edu ON uedu.education_id = edu.education_id;

-- 3. Find the users who have a specific skill.
SELECT u.name
FROM User u
INNER JOIN User_Skills us ON u.user_id = us.user_id
INNER JOIN Skills s ON us.skill_id = s.skill_id
WHERE s.skill_name like 'JavaScript';

-- 4. Retrieve all posts along with the number of likes and comments each post has, ordered by the total count of likes and comments.
SELECT p.post_id, p.content, COUNT(l.like_id) AS like_count, COUNT(c.comment_id) AS comment_count
FROM Post p
LEFT JOIN Likes l ON p.post_id = l.post_id
LEFT JOIN Comment c ON p.post_id = c.post_id
GROUP BY p.post_id
ORDER BY (like_count + comment_count) DESC;

-- 5. Find the users who have not made any posts yet.
SELECT u.name
FROM User u
LEFT JOIN Post p ON u.user_id = p.user_id
WHERE p.post_id IS NULL;

-- 6. List all users along with the number of connections each user has, sorted by the connection count.
SELECT u.name, COUNT(uc.user_connection_id) AS connection_count
FROM User u
LEFT JOIN User_Connection uc ON u.user_id = uc.user_id
GROUP BY u.user_id
ORDER BY connection_count DESC;

-- 7. Retrieve all users along with their most recent post.
SELECT u.name, p.content, p.post_date
FROM User u
LEFT JOIN Post p ON u.user_id = p.user_id
WHERE p.post_date = (SELECT MAX(post_date) FROM Post WHERE user_id = u.user_id);

-- 8. List all users who have shared a post along with the number of shares each user has made.
SELECT u.name, COUNT(s.share_id) AS share_count
FROM User u
LEFT JOIN Share s ON u.user_id = s.user_id
GROUP BY u.user_id;

-- 9. Find the users who have experiences in a specific company.
SELECT DISTINCT u.name
FROM User u
JOIN User_Experience ue ON u.user_id = ue.user_id
JOIN Experience e ON ue.experience_id = e.experience_id
WHERE e.company_name = 'Mu Solutions';

-- 10. Retrieve all users along with their education details, showing only those who have a degree.
SELECT u.name, edu.school_name, edu.degree
FROM User u
LEFT JOIN User_Education ue ON u.user_id = ue.user_id
LEFT JOIN Education edu ON ue.education_id = edu.education_id
WHERE edu.degree IS NOT NULL;

-- 11. List all users who are connected and their connections.
SELECT u.name AS user_name, c.connection_status, uc.connection_id AS connection_name
FROM User u
JOIN User_Connection uc ON u.user_id = uc.user_id
JOIN Connection c ON uc.connection_id = c.connection_id;

-- 12. Retrieve all users who have commented on a specific post.
SELECT u.name
FROM User u
JOIN Comment c ON u.user_id = c.user_id
WHERE c.post_id = 55;

-- 13. Find the users whose name started with s.
SELECT name
FROM User
WHERE name like 's%';

-- 14. List all users along with the number of posts each user has made, sorted by the post count.
SELECT u.name, COUNT(p.post_id) AS post_count
FROM User u
LEFT JOIN Post p ON u.user_id = p.user_id
GROUP BY u.user_id
ORDER BY post_count DESC;

-- 15. Retrieve all users who have worked in multiple companies, along with the count of companies they have worked for.
SELECT u.name, COUNT(DISTINCT e.company_name) AS company_count
FROM User u
JOIN User_Experience ue ON u.user_id = ue.user_id
JOIN Experience e ON ue.experience_id = e.experience_id
GROUP BY u.user_id
HAVING COUNT(DISTINCT e.company_name) > 1;

-- 16. List all users along with their skills.
SELECT u.name, s.skill_name
FROM User u
LEFT JOIN User_Skills us ON u.user_id = us.user_id
LEFT JOIN Skills s ON us.skill_id = s.skill_id;

-- 17. Retrieve all users along with their connections who have a specific skill.
SELECT u.name AS user_name, uc.name AS connection_name
FROM User u
JOIN User_Connection uc ON u.user_id = uc.user_id
JOIN User_Skills us ON uc.user_id = us.user_id
JOIN Skills s ON us.skill_id = s.skill_id
WHERE s.skill_name = 'JavaScript';

-- 18. Find the users who have education records but no experience records.
SELECT u.name
FROM User u
LEFT JOIN User_Education ue ON u.user_id = ue.user_id
LEFT JOIN User_Experience ux ON u.user_id = ux.user_id
WHERE ux.experience_id IS NULL;

-- 19. List all users along with the number of shares they have made, sorted by the share count.
SELECT u.name, COUNT(s.share_id) AS share_count
FROM User u
LEFT JOIN Share s ON u.user_id = s.user_id
GROUP BY u.user_id
ORDER BY share_count DESC;

-- 20. Retrieve all users who have a specific headline in their profile, along with their skills.
SELECT u.name, p.headline, s.skill_name
FROM User u
JOIN Profile p ON u.user_id = p.user_id
LEFT JOIN User_Skills us ON u.user_id = us.user_id
LEFT JOIN Skills s ON us.skill_id = s.skill_id
WHERE p.headline LIKE '%Software Engineer%';
