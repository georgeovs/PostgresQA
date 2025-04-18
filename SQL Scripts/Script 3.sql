create table Students (
s_id INT primary key,
name varchar not null,
start_year INT
);

create table Courses (
c_no INT primary key,
title varchar not null,
hours INT
);

create table Exams (
s_id INT,
c_no INT,
score INT
);

alter table Exams
add foreign key (s_id) references Students(s_id);

alter table Exams
add foreign key (c_no) references Courses(c_no);