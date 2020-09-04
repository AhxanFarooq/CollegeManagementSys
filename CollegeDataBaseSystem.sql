
-- --------------------------------------------------------

--
-- Table structure for table EXPENSES
--

DROP TABLE IF EXISTS EXPENSES;
CREATE TABLE EXPENSES (
  exp_id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
  exp_name varchar(30) NOT NULL,
  exp_date varchar(10) NOT NULL,
  exp_type varchar(20) NOT NULL,
  exp_amount varchar(15) NOT NULL,
  exp_phone varchar(11) NOT NULL,
  exp_email varchar(30) NOT NULL,
  exp_status varchar(15) NOT NULL,
);

-- --------------------------------------------------------

--
-- Table structure for table CLASSES
--

DROP TABLE IF EXISTS CLASSES;
CREATE TABLE CLASSES (
  class_id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
  class_name varchar(30) NOT NULL,
  numeric_name varchar(30) NOT NULL,
  section varchar(10) NOT NULL,
  teacher_name varchar(30) NOT NULL,
  gender varchar(1) NOT NULL,
  t_subject varchar(20) NOT NULL 
);


-- --------------------------------------------------------

--
-- Table structure for table TEACHERS
--

DROP TABLE IF EXISTS TEACHERS;
CREATE TABLE TEACHERS (
  teacher_id int NOT NULL PRIMARY KEY IDENTITY(1,1),
  fname varchar(30) NOT NULL,
  lname varchar(30) NOT NULL,
  gender char(1) NOT NULL,
  date_of_birth varchar(10) NOT NULL,
  cnic varchar(13) NOT NULL,
  religion varchar(30) NOT NULL,
  email varchar(30) NOT NULL,
  phone_number varchar(11) NOT NULL,
  teacher_address varchar(100) NOT NULL,
  picture varchar NOT NULL
);

-- --------------------------------------------------------

--
-- Table structure for table SECTIONS
--

DROP TABLE IF EXISTS SECTIONS;
CREATE TABLE SECTIONS (
  section_id int NOT NULL PRIMARY KEY IDENTITY(1,1),
  section_name varchar(20) NOT NULL,
  class_id int NOT NULL FOREIGN KEY REFERENCES CLASSES(class_id) ON DELETE CASCADE ON UPDATE CASCADE,
  teacher_id int NOT NULL FOREIGN KEY REFERENCES TEACHERS(teacher_id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- --------------------------------------------------------

--
-- Table structure for table PARENTS
--

DROP TABLE IF EXISTS PARENTS;
CREATE TABLE PARENTS(
  parent_id int NOT NULL PRIMARY KEY IDENTITY(1,1),
  father_name varchar(30) NOT NULL,
  mother_name varchar(30) NOT NULL,
  father_occupation varchar(30) NOT NULL,
  mother_occupation varchar(30) NOT NULL,
  phone_number varchar(11) NOT NULL,
  nationality varchar(15) NOT NULL,
  present_address varchar(100) NOT NULL,
  permanent_address varchar(100) NOT NULL,
  picture varchar NOT NULL
);

-- --------------------------------------------------------

--
-- Table structure for table STUDENTS
--


DROP TABLE IF EXISTS STUDENTS;
CREATE TABLE STUDENTS (
  std_id int NOT NULL PRIMARY KEY IDENTITY(1,1),
  fname varchar(30) NOT NULL,
  lname varchar(30) NOT NULL,
  gender char(1) NOT NULL,
  date_of_birth varchar(10) NOT NULL,
  roll INT NOT NULL,
  religion varchar(30) NOT NULL,
  email varchar(30) NOT NULL,
  picture varchar NOT NULL,
  p_id int NOT NULL FOREIGN KEY REFERENCES PARENTS(parent_id)  ON UPDATE CASCADE,
  section_id int NOT NULL FOREIGN KEY REFERENCES SECTIONS(section_id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- --------------------------------------------------------

--
-- Table structure for table SUBJECTS
--

DROP TABLE IF EXISTS SUBJECTS;
CREATE TABLE SUBJECTS (
  sub_id int NOT NULL PRIMARY KEY IDENTITY(1,1),
  sub_name varchar(30) NOT NULL,
  total_mark varchar(5) NOT NULL,
  class_id int NOT NULL FOREIGN KEY REFERENCES CLASSES(class_id) ON DELETE CASCADE ON UPDATE CASCADE,
  teacher_id int NOT NULL FOREIGN KEY REFERENCES TEACHERS(teacher_id) ON DELETE CASCADE ON UPDATE CASCADE
);



-- --------------------------------------------------------

--
-- Table structure for table PAYMENTS
--


DROP TABLE IF EXISTS PAYMENTS;
CREATE TABLE PAYMENTS (
  pay_id int NOT NULL PRIMARY KEY IDENTITY(1,1),
  pay_name varchar(20) NOT NULL,
  pay_amount varchar(8) NOT NULL,
  status char(1) NOT NULL,
  payment_date varchar(10) NOT NULL,
  std_id int NOT NULL FOREIGN KEY REFERENCES STUDENTS(std_id) ON DELETE CASCADE ON UPDATE CASCADE,
);

-- --------------------------------------------------------

--
-- Table structure for table PACKAGES
--

DROP TABLE IF EXISTS PACKAGES;
CREATE TABLE PACKAGES (
  sno int NOT NULL PRIMARY KEY IDENTITY(1,1),
  class_status varchar(25) NOT NULL,
  year varchar(10) NOT NULL,
  fee varchar(8) NOT NULL,
  total_fee varchar(8) NOT NULL
);



-- --------------------------------------------------------

--
-- Table structure for table ATTENDANCE
--

DROP TABLE IF EXISTS ATTENDANCE;
CREATE TABLE ATTENDANCE (
  attendance_id int NOT NULL IDENTITY (1,1) PRIMARY KEY,
  attendance_type int NOT NULL,
  student_id int NOT NULL FOREIGN KEY REFERENCES STUDENTS(std_id) ON DELETE CASCADE ON UPDATE CASCADE,
  teacher_id int NOT NULL FOREIGN KEY REFERENCES TEACHERS(teacher_id)  ,
  attendance_date varchar(10) NOT NULL,
  mark char(1) NOT NULL
);

-- --------------------------------------------------------

--
-- Table structure for table MARKSHEET
--


DROP TABLE IF EXISTS MARKSHEET;
CREATE TABLE MARKSHEET (
  marksheet_id int NOT NULL IDENTITY (1,1) PRIMARY KEY,
  marksheet_name varchar(30) NOT NULL,
  marksheet_date varchar(10) NOT NULL,
  class_id int NOT NULL FOREIGN KEY REFERENCES CLASSES(class_id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- --------------------------------------------------------

--
-- Table structure for table USERS
--

DROP TABLE IF EXISTS USERS;
CREATE TABLE USERS (
  user_id int NOT NULL PRIMARY KEY IDENTITY(1,1),
  username varchar(30) NOT NULL,
  password varchar(20) NOT NULL,
  fname varchar(30) NOT NULL,
  lname varchar(30) NOT NULL,
  email varchar(30) NOT NULL
);

-- --------------------------------------------------------

--
-- Table structure for table BOOKS
--

DROP TABLE IF EXISTS BOOKS;
CREATE TABLE BOOKS(
  title varchar(30) NOT NULL,
  author_name varchar(50) NOT NULL,
  publisher_name varchar(30) NOT NULL,
  phone_number varchar(11) NOT NULL,
  p_address varchar(100) NOT NULL,
  book_copies int NOT NULL ,
  ss_id varchar(30) NOT NULL PRIMARY KEY
);

-- --------------------------------------------------------

--
-- Table structure for table BOOK_ISSUES
--

DROP TABLE IF EXISTS BOOK_ISSUES;
CREATE TABLE BOOK_ISSUES(
  book_issue_id int NOT NULL PRIMARY KEY IDENTITY(1,1),
  book_id varchar(30) NOT NULL FOREIGN KEY REFERENCES BOOKS(ss_id) ON DELETE CASCADE ON UPDATE CASCADE,
  std_id int NOT NULL FOREIGN KEY REFERENCES STUDENTS(std_id) ON DELETE CASCADE ON UPDATE CASCADE,
  issue_date varchar(10) NOT NULL
);

DROP TABLE IF EXISTS BOOK_RETURN;
CREATE TABLE BOOK_RETURN(
  id int NOT NULL PRIMARY KEY IDENTITY(1,1),
  issue_id int NOT NULL FOREIGN KEY REFERENCES BOOK_ISSUES(book_issue_id) ON DELETE CASCADE,
  issue_date varchar(10) NOT NULL
);

DROP TABLE IF EXISTS [CLASS_ROUTINES];
CREATE TABLE CLASS_ROUTINES(
  id int NOT NULL PRIMARY KEY IDENTITY(1,1),
  day varchar(10) NOT NULL,
  subject_type varchar(15) NOT NULL,
  class varchar(20) NOT NULL,
  section varchar(10) NOT NULL,
  class_time varchar(14) NOT NULL,
  teacher varchar(30) NOT NULL
);


DROP TABLE IF EXISTS [EXAMS];
CREATE TABLE EXAMS(
  id int NOT NULL PRIMARY KEY IDENTITY(1,1),
  exam_name varchar(15) NOT NULL,
  subject_type varchar(15) NOT NULL,
  class varchar(20) NOT NULL,
  section varchar(10) NOT NULL,
  class_time varchar(14) NOT NULL,
  date varchar(10) NOT NULL
);


DROP TABLE IF EXISTS [HOSTELS];
CREATE TABLE HOSTELS(
  id int NOT NULL PRIMARY KEY IDENTITY(1,1),
  hostel_name varchar(30) NOT NULL,
  total_room varchar(10) NOT NULL
);



DROP TABLE IF EXISTS [ROOMS];
CREATE TABLE ROOMS(
  id int NOT NULL PRIMARY KEY IDENTITY(1,1),
  room_number varchar(4) NOT NULL,
  room_type varchar(15) NOT NULL,
  no_of_bed varchar(4) NOT NULL,
  cost_per_bed varchar(10) NOT NULL,
  hostel_id int NOT NULL FOREIGN KEY REFERENCES HOSTELS(id) ON DELETE CASCADE,
);


DROP TABLE IF EXISTS [SEATALLOTS];
CREATE TABLE SEATALLOTS(
  id int NOT NULL PRIMARY KEY IDENTITY(1,1),
  room_number varchar(4) NOT NULL,
  seat_number varchar(15) NOT NULL,
  hostel_id int NOT NULL FOREIGN KEY REFERENCES HOSTELS(id) ON DELETE CASCADE,
  std_id int NOT NULL FOREIGN KEY REFERENCES STUDENTS(std_id) ON DELETE CASCADE ON UPDATE CASCADE,
);

DROP TABLE IF EXISTS [SEATVACANTS];
CREATE TABLE SEATVACANTS(
  id int NOT NULL PRIMARY KEY IDENTITY(1,1),
  room_number varchar(4) NOT NULL,
  seat_number varchar(15) NOT NULL,
  hostel_id int NOT NULL FOREIGN KEY REFERENCES HOSTELS(id) ON DELETE CASCADE,
  std_id int NOT NULL FOREIGN KEY REFERENCES STUDENTS(std_id) ON DELETE CASCADE ON UPDATE CASCADE,
);