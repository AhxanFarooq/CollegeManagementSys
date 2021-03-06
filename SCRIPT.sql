USE [CollegeDb]
GO
/****** Object:  Table [dbo].[ATTENDANCE]    Script Date: 5/12/2019 1:58:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ATTENDANCE](
	[attendance_id] [int] IDENTITY(1,1) NOT NULL,
	[attendance_type] [int] NOT NULL,
	[student_id] [int] NOT NULL,
	[teacher_id] [int] NOT NULL,
	[attendance_date] [varchar](10) NOT NULL,
	[mark] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[attendance_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BOOK_ISSUES]    Script Date: 5/12/2019 1:58:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BOOK_ISSUES](
	[book_issue_id] [int] IDENTITY(1,1) NOT NULL,
	[book_id] [varchar](30) NOT NULL,
	[std_id] [int] NOT NULL,
	[issue_date] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[book_issue_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BOOK_RETURN]    Script Date: 5/12/2019 1:58:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BOOK_RETURN](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[issue_id] [int] NOT NULL,
	[issue_date] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BOOKS]    Script Date: 5/12/2019 1:58:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BOOKS](
	[title] [varchar](30) NOT NULL,
	[author_name] [varchar](50) NOT NULL,
	[publisher_name] [varchar](30) NOT NULL,
	[phone_number] [varchar](11) NOT NULL,
	[p_address] [varchar](100) NOT NULL,
	[book_copies] [int] NOT NULL,
	[ss_id] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ss_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CLASS_ROUTINES]    Script Date: 5/12/2019 1:58:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLASS_ROUTINES](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[day] [varchar](10) NOT NULL,
	[subject_type] [varchar](15) NOT NULL,
	[class] [varchar](20) NOT NULL,
	[section] [varchar](10) NOT NULL,
	[class_time] [varchar](14) NOT NULL,
	[teacher] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CLASSES]    Script Date: 5/12/2019 1:58:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLASSES](
	[class_id] [int] IDENTITY(1,1) NOT NULL,
	[class_name] [varchar](30) NOT NULL,
	[numeric_name] [varchar](30) NOT NULL,
	[teacher_name] [varchar](30) NOT NULL,
	[gender] [varchar](1) NOT NULL,
	[t_subject] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[class_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EXAMS]    Script Date: 5/12/2019 1:58:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXAMS](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[exam_name] [varchar](15) NOT NULL,
	[subject_type] [varchar](15) NOT NULL,
	[class] [varchar](20) NOT NULL,
	[section] [varchar](10) NOT NULL,
	[class_time] [varchar](14) NOT NULL,
	[date] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EXPENSES]    Script Date: 5/12/2019 1:58:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXPENSES](
	[exp_id] [int] IDENTITY(1,1) NOT NULL,
	[exp_name] [varchar](30) NOT NULL,
	[exp_date] [varchar](10) NOT NULL,
	[exp_type] [varchar](20) NOT NULL,
	[exp_amount] [varchar](15) NOT NULL,
	[exp_phone] [varchar](11) NOT NULL,
	[exp_email] [varchar](30) NOT NULL,
	[exp_status] [varchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[exp_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOSTELS]    Script Date: 5/12/2019 1:58:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOSTELS](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[hostel_name] [varchar](30) NOT NULL,
	[total_room] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MARKSHEET]    Script Date: 5/12/2019 1:58:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MARKSHEET](
	[marksheet_id] [int] IDENTITY(1,1) NOT NULL,
	[marksheet_name] [varchar](30) NOT NULL,
	[marksheet_date] [varchar](10) NOT NULL,
	[class_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[marksheet_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PACKAGES]    Script Date: 5/12/2019 1:58:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PACKAGES](
	[sno] [int] IDENTITY(1,1) NOT NULL,
	[class_status] [varchar](25) NOT NULL,
	[year] [varchar](10) NOT NULL,
	[fee] [varchar](8) NOT NULL,
	[total_fee] [varchar](8) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PARENTS]    Script Date: 5/12/2019 1:58:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PARENTS](
	[parent_id] [int] IDENTITY(1,1) NOT NULL,
	[father_name] [varchar](30) NOT NULL,
	[mother_name] [varchar](30) NOT NULL,
	[father_occupation] [varchar](30) NOT NULL,
	[mother_occupation] [varchar](30) NOT NULL,
	[phone_number] [varchar](11) NOT NULL,
	[nationality] [varchar](15) NOT NULL,
	[present_address] [varchar](100) NOT NULL,
	[permanent_address] [varchar](100) NOT NULL,
	[picture] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[parent_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PAYMENTS]    Script Date: 5/12/2019 1:58:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PAYMENTS](
	[pay_id] [int] IDENTITY(1,1) NOT NULL,
	[pay_name] [varchar](20) NOT NULL,
	[status] [char](1) NOT NULL,
	[payment_date] [varchar](10) NOT NULL,
	[std_id] [int] NOT NULL,
	[pay_amount] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[pay_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ROOMS]    Script Date: 5/12/2019 1:58:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ROOMS](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[room_number] [varchar](4) NOT NULL,
	[room_type] [varchar](15) NOT NULL,
	[no_of_bed] [varchar](4) NOT NULL,
	[cost_per_bed] [varchar](10) NOT NULL,
	[hostel_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SEATALLOTS]    Script Date: 5/12/2019 1:58:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SEATALLOTS](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[room_number] [varchar](4) NOT NULL,
	[seat_number] [varchar](15) NOT NULL,
	[hostel_id] [int] NOT NULL,
	[std_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SEATVACANTS]    Script Date: 5/12/2019 1:58:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SEATVACANTS](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[room_number] [varchar](4) NOT NULL,
	[seat_number] [varchar](15) NOT NULL,
	[hostel_id] [int] NOT NULL,
	[std_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SECTIONS]    Script Date: 5/12/2019 1:58:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SECTIONS](
	[section_id] [int] IDENTITY(1,1) NOT NULL,
	[section_name] [varchar](20) NOT NULL,
	[class_id] [int] NOT NULL,
	[teacher_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[section_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[STUDENTS]    Script Date: 5/12/2019 1:58:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STUDENTS](
	[std_id] [int] IDENTITY(1,1) NOT NULL,
	[fname] [varchar](30) NOT NULL,
	[lname] [varchar](30) NOT NULL,
	[gender] [char](1) NOT NULL,
	[date_of_birth] [varchar](10) NOT NULL,
	[roll] [int] NOT NULL,
	[religion] [varchar](30) NOT NULL,
	[email] [varchar](30) NOT NULL,
	[p_id] [int] NOT NULL,
	[section_id] [int] NOT NULL,
	[picture] [varchar](100) NULL,
	[std_class] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[std_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SUBJECTS]    Script Date: 5/12/2019 1:58:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SUBJECTS](
	[sub_id] [int] IDENTITY(1,1) NOT NULL,
	[sub_name] [varchar](30) NOT NULL,
	[total_mark] [varchar](5) NOT NULL,
	[class_id] [int] NOT NULL,
	[teacher_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sub_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEACHERS]    Script Date: 5/12/2019 1:58:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEACHERS](
	[teacher_id] [int] IDENTITY(1,1) NOT NULL,
	[fname] [varchar](30) NOT NULL,
	[lname] [varchar](30) NOT NULL,
	[gender] [char](1) NOT NULL,
	[date_of_birth] [varchar](10) NOT NULL,
	[cnic] [varchar](13) NOT NULL,
	[religion] [varchar](30) NOT NULL,
	[email] [varchar](30) NOT NULL,
	[phone_number] [varchar](11) NOT NULL,
	[teacher_address] [varchar](100) NOT NULL,
	[picture] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[teacher_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USERS]    Script Date: 5/12/2019 1:58:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USERS](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](30) NOT NULL,
	[password] [varchar](20) NOT NULL,
	[fname] [varchar](30) NOT NULL,
	[lname] [varchar](30) NOT NULL,
	[email] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ATTENDANCE]  WITH CHECK ADD FOREIGN KEY([student_id])
REFERENCES [dbo].[STUDENTS] ([std_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ATTENDANCE]  WITH CHECK ADD FOREIGN KEY([teacher_id])
REFERENCES [dbo].[TEACHERS] ([teacher_id])
GO
ALTER TABLE [dbo].[BOOK_ISSUES]  WITH CHECK ADD FOREIGN KEY([book_id])
REFERENCES [dbo].[BOOKS] ([ss_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BOOK_ISSUES]  WITH CHECK ADD FOREIGN KEY([std_id])
REFERENCES [dbo].[STUDENTS] ([std_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BOOK_RETURN]  WITH CHECK ADD FOREIGN KEY([issue_id])
REFERENCES [dbo].[BOOK_ISSUES] ([book_issue_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MARKSHEET]  WITH CHECK ADD FOREIGN KEY([class_id])
REFERENCES [dbo].[CLASSES] ([class_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PAYMENTS]  WITH CHECK ADD FOREIGN KEY([std_id])
REFERENCES [dbo].[STUDENTS] ([std_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ROOMS]  WITH CHECK ADD FOREIGN KEY([hostel_id])
REFERENCES [dbo].[HOSTELS] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SEATALLOTS]  WITH CHECK ADD FOREIGN KEY([hostel_id])
REFERENCES [dbo].[HOSTELS] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SEATALLOTS]  WITH CHECK ADD FOREIGN KEY([std_id])
REFERENCES [dbo].[STUDENTS] ([std_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SEATVACANTS]  WITH CHECK ADD FOREIGN KEY([hostel_id])
REFERENCES [dbo].[HOSTELS] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SEATVACANTS]  WITH CHECK ADD FOREIGN KEY([std_id])
REFERENCES [dbo].[STUDENTS] ([std_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SECTIONS]  WITH CHECK ADD FOREIGN KEY([class_id])
REFERENCES [dbo].[CLASSES] ([class_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SECTIONS]  WITH CHECK ADD FOREIGN KEY([teacher_id])
REFERENCES [dbo].[TEACHERS] ([teacher_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[STUDENTS]  WITH CHECK ADD FOREIGN KEY([p_id])
REFERENCES [dbo].[PARENTS] ([parent_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[STUDENTS]  WITH CHECK ADD FOREIGN KEY([section_id])
REFERENCES [dbo].[SECTIONS] ([section_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SUBJECTS]  WITH CHECK ADD FOREIGN KEY([class_id])
REFERENCES [dbo].[CLASSES] ([class_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SUBJECTS]  WITH CHECK ADD FOREIGN KEY([teacher_id])
REFERENCES [dbo].[TEACHERS] ([teacher_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
