Create table zen_class_db.Batchcollection(
batchid int PRIMARY KEY AUTO_INCREMENT,
batchname varchar(255),
batchstudents int,
duration varchar(255)
);
insert into zen_class_db.Batchcollection (batchname,batchstudents,duration)values ('B30_TAMIL','20','6 months'),
('B30_ENG','30','6 months'),
('B30_HINDI','15','6 months'),
('B30_TELUGU','12','6 months');

Drop  table zen_class_db.Batchcollection;
Create table zen_class_db.Studentcollection (
StudentId int primary key auto_increment,
Studentname varchar(255),
BatchId int,
Email varchar(255),
Phno int,
Courses varchar(255),
foreign key(BatchId) references zen_class_db.Batchcollection(batchid)
);
insert into zen_class_db.Studentcollection(Studentname,BatchId,Email,Phno,Courses ) values ('yuvaraj',1,'yuvaraj@gmail.com','1111','fullstackdeveloper'),
 ('logi',2,'logi@gmail.com','222','SQL'),
  ('vijay',3,'vijay@gmail.com','333','Node'),
   ('vikas',4,'vks@gmail.com','444','React');
   
Drop table zen_class_db.Studentcollection;

Create table zen_class_db.Taskcollection (
BatchId int,
StudentId int,
Topic varchar(255),
TaskAssignend INT,
TaskCompleted INT,
PendingTask INt,
foreign key(BatchId) references zen_class_db.Batchcollection(batchid),
foreign key(StudentId) references zen_class_db.Studentcollection(StudentId)
);
insert into zen_class_db.Taskcollection(BatchId,StudentId,Topic,TaskAssignend,TaskCompleted,PendingTask) values (1,1,'React','10','7','3'),
(2,2,'Api','7','5','2'),
(3,3,'Db_Task','4','3','1'),
(4,4,'E-commerce','12','7','5');

Drop  table zen_class_db.Taskcollection;

Create table zen_class_db.MentorCollection(
MentorId INT PRIMARY KEY AUTO_INCREMENT,
BatchId int,
MentorName Varchar(255),
TotalClasses int,
Classcompleted int,
foreign key(BatchId) references zen_class_db.Batchcollection(batchid)
);
insert into zen_class_db.MentorCollection (BatchId,MentorName,TotalClasses,Classcompleted) values ('1','Sivarajaini',38,30),
('2','Sanjay',28,22),
('3','kamal',40,30),
('4','rajesh',26,20);

Drop  table zen_class_db.MentorCollection;

insert into zen_class_db.Studentcollection(Studentname,BatchId,Email,Phno,Courses) values ('dash','1','dash@gmail.com',999,'sap');
insert into zen_class_db.Taskcollection(BatchId,StudentId,Topic,TaskAssignend,TaskCompleted,PendingTask) values ('1','5','sap','15','8','7');

SELECT * FROM zen_class_db.batchcollection;
SELECT * FROM zen_class_db.studentcollection;
SELECT * FROM zen_class_db.taskcollection;
SELECT * FROM zen_class_db.mentorcollection;

Select S.StudentId,S.Studentname,S.Email,B.batchname,T.Topic,M.MentorName,T.TaskAssignend,T.TaskCompleted,T.PendingTask from 
zen_class_db.Studentcollection S inner join zen_class_db.Batchcollection B on S.Batchid = B.Batchid 
inner join zen_class_db.taskcollection T on T.StudentId = S.StudentId
 inner join zen_class_db.mentorcollection M on M.BatchId = S.BatchId;
 
 

