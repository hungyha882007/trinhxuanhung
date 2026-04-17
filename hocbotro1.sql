CREATE DATABASE DE2 ; 
USE DE2;
-- cau 1 
CREATE TABLE SESSIONS(
session_id int primary key auto_increment,
session_title varchar(150) not null   ,
session_description varchar(255) ,
session_status int not null default 1
);
CREATE TABLE LESSONS (
lessons_id int primary key auto_increment,
lessons_title varchar (150) not null ,
lessons_content varchar (255) not null ,
lessons_status int not null, 
sessions_id int not null ,
foreign key(session_id) references SESSIONS(session_id)
);

ALTER TABLE LESSONS
ADD duration INT NOT NULL ;

ALTER TABLE LESSONS 
MODIFY lessons_content TEXT ;

-- cau 2 
INSERT INTO SESSIONS (session_title , session_content) value 
('buoi hoc mot ' , 'hay' ),
('buoi hoc hai ' , 'hay'); 
INSERT INTO LESSONS(lessons_title,lessons_content,lessons_status,session_id,duration) value 
-- session1 
('tranhatanh' , 'nhatanh', '4' , '5' , '6' ),
('tranhatanh' , 'nhatanh', '4' , '5' , '6' ),
('tranhatanh' , 'nhatanh', '4' , '5' , '6' ),
-- session2
('tranhatanh' , 'nhatanh', '4' , '5' , '6' ),
('tranhatanh' , 'nhatanh', '4' , '5' , '6' ),
('tranhatanh' , 'nhatanh', '4' , '5' , '6' );
-- bai3 
select(lessons_id, lessons_title,lessons_content,lessons_status,session_id,duration)
from lessons ;
select(lessons_id, lessons_title,lessons_status)
from lessons
where sesson_id =1 ;
select (lessons_id, lessons_title)
from lessons
where lessons_status = 1; 
select lessons_title 
from lessons;
-- bai 4 
UPDATE lessons
SET lessons_title = 'SELECT nâng cao'
WHERE lessons_id = 1;
update lessons 
set lessons_status =0 
where sesson_id = 1; 
-- câu 5 
delete from lessons
where  lessons_id = 2;
delete from sessons 
where session_id = 1;


