create database Anime_Club_Events;
use Anime_Club_Events;
create table Members (
stu_id numeric(7,0) primary key,
eboard_id numeric(7,0),
f_name varchar(30) not null,
l_name varchar(30) not null,
graduation_date numeric(4,0)
);
ALTER TABLE Members
ADD location_vote numeric(2,0);

create table Trip_Groups ( 
eboard_id numeric(7,0) primary key,
Group_num numeric(1,0),
foreign key (eboard_id) references Eboard(eboard_id)
);
create table Eboard (
eboard_id numeric(7,0) primary key,
graduation_date numeric(4,0),
f_name varchar(30) not null,
l_name varchar(30) not null
);
  
create table Trip_Activities (
location_vote numeric(2,0),
resturant_vote numeric(4,0)
);
ALTER TABLE Members
ADD foreign key (eboard_id) references Eboard(eboard_id); 

INSERT INTO EBOARD VALUES(000001,2024,'Maria','Reccoppa');
INSERT INTO EBOARD VALUES(000002,2024,'Joseph','Maffetone');
INSERT INTO EBOARD VALUES(000003,2026,'Gabriella','Kouletsis');
INSERT INTO EBOARD VALUES(000004,2024,'Brandon','Schroh');

INSERT INTO MEMBERS VALUES(000001,000001,'Daanyaal','Bawla',2026,2);
INSERT INTO MEMBERS VALUES(000002,000001,'Donato','Deninno',2024,1);
INSERT INTO MEMBERS VALUES(000003,000001,'Alex','Tullao',2025,1);
INSERT INTO MEMBERS VALUES(000004,000001,'Maria','Reccoppa',2024,2);

INSERT INTO MEMBERS VALUES(000005,000002,'Joseph','Maffestone',2024,2);
INSERT INTO MEMBERS VALUES(000006,000002,'Hannah','Walz',2024,2);
INSERT INTO MEMBERS VALUES(000007,000002,'Luke','Usagi',2025,2);
INSERT INTO MEMBERS VALUES(000008,000002,'Stone','Mallone',2025,1);

INSERT INTO MEMBERS VALUES(000009,000003,'Gabriella','Kouletsis',2025,1);
INSERT INTO MEMBERS VALUES(000010,000003,'Eden','Rodgriguez',2023,1);
INSERT INTO MEMBERS VALUES(000011,000003,'Erin','Denise',2023,2);
INSERT INTO MEMBERS VALUES(000012,000003,'Kirsten','Viola',2026,1);

INSERT INTO MEMBERS VALUES(000013,000004,'Brandon','Schroh',2024,1);
INSERT INTO MEMBERS VALUES(000014,000004,'Domenic','Lucarelli',2025,2);
INSERT INTO MEMBERS VALUES(000015,000004,'Faith','Watt',2024,2);
INSERT INTO MEMBERS VALUES(000016,000004,'Jeremy','LaCreatura',2024,2);

INSERT INTO TRIP_GROUPS VALUES(000001,1);
INSERT INTO TRIP_GROUPS VALUES(000002,2);
INSERT INTO TRIP_GROUPS VALUES(000003,3);
INSERT INTO TRIP_GROUPS VALUES(000004,4);

Select * from Members;

select graduation_date, l_name, f_name
from Members
where graduation_date = 2024;

select l_name, f_name, graduation_date, stu_id
from Members
where l_name like 'Smith%';

select l_name, f_name, graduation_date
from Eboard
order by graduation_date;

select stu_id, location_vote, resturant_vote
from Members join trip_activities on Members.location_vote = trip_activities.location_vote 


