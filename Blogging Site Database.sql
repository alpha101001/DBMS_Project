------------------------dropping triggers---------------------------
drop trigger check_roll;
drop trigger blog_db_records;



--------- altering session to solve error: (ORA-28014: cannot drop administrative user or role)-----
alter session set "_ORACLE_SCRIPT"=true;


declare
   c int;
begin
   select count(*) into c from all_users where username = upper('avishek');
   if c = 1 then
   ------- executing the command drop user
      execute immediate 'drop user avishek'; 
   end if;
end;
/
create user avishek identified by 1807053;
GRANT ALL PRIVILEGES to avishek;
connect avishek
1807053


drop trigger check_roll;
drop trigger blog_db_records;


--dropping tables according to the E-R Model..
 
declare
   c int;
begin
   select count(*) into c from user_tables where table_name = upper('tags');
   if c = 1 then
      execute immediate 'drop table tags'; -- executing the command drop table tags
   end if;
end;
/

declare
   c int;
begin
   select count(*) into c from user_tables where table_name = upper('comments');
   if c = 1 then
      execute immediate 'drop table comments'; -- executing the command drop table comments
   end if;
end;
/




declare
   c int;
begin
   select count(*) into c from user_tables where table_name = upper('post');
   if c = 1 then
      execute immediate 'drop table post'; -- executing the command drop table post
   end if;
end;
/



declare
   c int;
begin
   select count(*) into c from user_tables where table_name = upper('category');
   if c = 1 then
      execute immediate 'drop table category'; -- executing the command drop table category
   end if;
end;
/


declare
   c int;
begin
   select count(*) into c from user_tables where table_name = upper('users');
   if c = 1 then
      execute immediate 'drop table users'; -- executing the command drop table users
   end if;
end;
/




set pagesize 1000;  --- setting the page size for a better view according to the project
set linesize 5000;  --- setting the line size for a better view according to the project

--LAB 01:

CREATE TABLE users (
    User_ID INTEGER PRIMARY KEY,
    User_name VARCHAR2(20),
    E_mail VARCHAR2(20),
    Password VARCHAR2(10) unique, --lab 03 (using unique key constraints)
    Registration_date VARCHAR2(20),
    Last_login VARCHAR2(20),
    Date_of_Birth VARCHAR2(20)
);


create table category (
    Category_ID INTEGER,
    Category_name VARCHAR2(20),
    user_id INTEGER not null --lab 03 (using not null key constraints
    -- foreign key (user_id) references users(User_ID)
);
----------------------------------------------------------------
--lab 03
ALTER TABLE category ADD CONSTRAINT pk_category
PRIMARY KEY (category_id);
ALTER TABLE category ADD CONSTRAINT fk_category
FOREIGN KEY (user_id) REFERENCES users(User_ID);
----------------------------------------------------------------

create table post (
    Post_ID INTEGER primary key,
    User_id integer,
    Category_ID INTEGER,
    Post_title VARCHAR2(40),
    Post_Body clob,
    Last_Update VARCHAR2(20),
    post_Time VARCHAR2(10),
    Post_Tags VARCHAR(20),
    foreign key (Category_ID) references category(Category_ID),
    foreign key (User_id) references users(User_ID)
);


create table comments (
    comment_id INTEGER primary key,
    post_id INTEGER,
    user_id INTEGER,
    comment_title VARCHAR(50),
    Time VARCHAR(15),
    foreign key (user_id) references users(User_ID)
);


create table tags (
    tag_id INTEGER primary key,
    post_id integer,
    post_tags VARCHAR2(20),
    foreign key (post_id) references post(Post_ID)
);


insert into users (user_id,user_name,e_mail,password,registration_date,last_login,date_of_birth) values (01,'Avi','Avi@gmail.com',1807053,'01-july-2022','1-august-2022','22-November-1998');

insert into users (user_id,user_name,e_mail,password,registration_date,last_login,date_of_birth) values (02,'Swassow','Swassow@gmail.com',1807064,'03-july-2022','29-july-2022','22-October-1999');

insert into users (user_id,user_name,e_mail,password,registration_date,last_login,date_of_birth) values (03,'Tashin','Tashin@gmail.com',1807083,'01-july-2022','02-august-2022','03-august-1999');

insert into users (user_id,user_name,e_mail,password,registration_date,last_login,date_of_birth) values (04,'Mehedy','Mehedy@gmail.com',1807062,'04-july-2022','01-august-2022','01-july-1996');

insert into users (user_id,user_name,e_mail,password,registration_date,last_login,date_of_birth) values (05,'Elora','Elora@gmail.com',1807112,'05-july-2022','05-august-2022','16-september-1999');

insert into users (user_id,user_name,e_mail,password,registration_date,last_login,date_of_birth) values (06,'Farhan','Farhan@gmail.com',1807094,'06-july-2022','01-august-2022','06-january-1999');

insert into users (user_id,user_name,e_mail,password,registration_date,last_login,date_of_birth) values (07,'jami','jami@gmail.com',1807093,'07-july-2022','07-august-2022','02-october-1998');

insert into users (user_id,user_name,e_mail,password,registration_date,last_login,date_of_birth) values (08,'kowshik','kowshik@gmail.com',1807105,'08-july-2022','04-august-2022','04-july-2000');

insert into users (user_id,user_name,e_mail,password,registration_date,last_login,date_of_birth) values (09,'Roni','Roni@gmail.com',1807055,'09-july-2022','09-august-2022','13-November-1997');

insert into users (user_id,user_name,e_mail,password,registration_date,last_login,date_of_birth) values (10,'Abrar','Abrar@gmail.com',1807024,'10-july-2022','04-august-2022','05-November-2001');



insert into category (category_id,category_name,User_ID) values (01,'computer',01);

insert into category (category_id,category_name,User_ID) values (02,'SQL',01);

insert into category (category_id,category_name,User_ID) values (03,'TOC',01);

insert into category (category_id,category_name,User_ID) values (04,'website',02);

insert into category (category_id,category_name,User_ID) values (05,'peripherals',02);

insert into category (category_id,category_name,User_ID) values (06,'medicine',03);

insert into category (category_id,category_name,User_ID) values (07,'drinks',03);

insert into category (category_id,category_name,User_ID) values (08,'ECE',04);

insert into category (category_id,category_name,User_ID) values (09,'cooking',05);

insert into category (category_id,category_name,User_ID) values (10,'game-development',06);

insert into category (category_id,category_name,User_ID) values (11,'politics',07);

insert into category (category_id,category_name,User_ID) values (12,'software',08);

insert into category (category_id,category_name,User_ID) values (13,'sports',08);

insert into category (category_id,category_name,User_ID) values (14,'job',09);

insert into category (category_id,category_name,User_ID) values (15,'github',10);



insert into post (post_id,User_ID,category_id,post_title,post_body,last_update,post_time,post_tags) values (01,01,01,'Analog computers','Many many years ago,analog computers are hard compared to computers now a days','30-july-2022','12.00AM','computer');

insert into post (post_id,User_ID,category_id,post_title,post_body,last_update,post_time,post_tags) values (02,01,02,'Why is SQL so Important?','in rdbms we use sql to find the requied data efficiently','25-july-2022','04.00PM','SQL');

insert into post (post_id,User_ID,category_id,post_title,post_body,last_update,post_time,post_tags) values (03,01,03,'Introduction of Theory of Computation','Automata theory which is also known as Theory Of Computation is a theoretical branch of Computer Science and Mathematics','28-july-2022','08.00PM','TOC');

insert into post (post_id,User_ID,category_id,post_title,post_body,last_update,post_time,post_tags) values (04,02,04,'What Does Website Mean?','A website is a collection of publicly accessible and interlinked Web pages that share a single domain name','26-july-2022','09.00PM','website');

insert into post (post_id,User_ID,category_id,post_title,post_body,last_update,post_time,post_tags) values (05,02,05,'Peripheral','a peripheral is a hardware input device or output device that gives a computer additional functionality','22-july-2022','04.00PM','peripherals');

insert into post (post_id,User_ID,category_id,post_title,post_body,last_update,post_time,post_tags) values (06,03,06,'What is medical marijuana?','Medical marijuana uses the marijuana plant or chemicals in it to treat diseases or conditions','20-july-2022','05.00PM','medicine');

insert into post (post_id,User_ID,category_id,post_title,post_body,last_update,post_time,post_tags) values (07,03,07,'Side-Effects with Allergies of Brandy','The only side effects of brandy include those equal to that of a general alcohol induced hangover','25-july-2022','07.00PM','drinks');

insert into post (post_id,User_ID,category_id,post_title,post_body,last_update,post_time,post_tags) values (08,04,08,'Benefits of studying ECE course','Expanse of ECE isnt limited to only a particular industry and the world these days aims at developing products that are multi-functioning','15-july-2022','07.00PM','ECE');

insert into post (post_id,User_ID,category_id,post_title,post_body,last_update,post_time,post_tags) values (09,05,09,'Chefs Pencil','Chefs Pencil deserves a spot on the list of best food blogs out there and On Chefs Pencil you can find information about pretty much any cuisine in the world','20-july-2022','07.00PM','cooking');

insert into post (post_id,User_ID,category_id,post_title,post_body,last_update,post_time,post_tags) values (10,06,10,'Video game development','Video game development is the process of developing a video game','20-july-2022','08.00PM','game-development');

insert into post (post_id,User_ID,category_id,post_title,post_body,last_update,post_time,post_tags) values (11,07,11,'Politics','Politics is the set of activities that are associated with making decisions in groups or other forms of power relations among individuals such as the distribution of resources or status','20-july-2022','09.00PM','politics');

insert into post (post_id,User_ID,category_id,post_title,post_body,last_update,post_time,post_tags) values (12,08,12,'Software','Software is a set of computer programs and associated documentation and data','23-july-2022','04.00PM','software');

insert into post (post_id,User_ID,category_id,post_title,post_body,last_update,post_time,post_tags) values (13,08,13,'History of basketball','The history of basketball began with its invention in 1891 in Springfield Massachusetts by Canadian physical education instructor James Naismith as a less injury prone sport than football','19-july-2022','10.00PM','sports');

insert into post (post_id,User_ID,category_id,post_title,post_body,last_update,post_time,post_tags) values (14,09,14,'How to Handle Promotion Over Peers?','you must plan on how to establish authority without compromising your relationships with the team','26-july-2022','01.00PM','job');

insert into post (post_id,User_ID,category_id,post_title,post_body,last_update,post_time,post_tags) values (15,10,15,'GitHub','GitHub is a provider of Internet hosting for software development and version control using Git','20-july-2022','09.00PM','github');

insert into post (post_id,User_ID,category_id,post_title,post_body,last_update,post_time,post_tags) values (16,01,02,'Introduction to SQL','Structure Query Language is a database query language used for storing and managing data in Relational DBMS','15-july-2022','02.00AM','SQL');

insert into post (post_id,User_ID,category_id,post_title,post_body,last_update,post_time,post_tags) values (17,01,03,'Formal Language Theory','Formal Language Theory is a branch of Computer Science and Mathematics dealing with representing languages as a collection of operations on an alphabet','12-july-2022','04.00AM','TOC');
insert into post (post_id,User_ID,category_id,post_title,post_body,last_update,post_time,post_tags) values (18,03,07,'Coffee','Coffee lovers around the world who reach for their favorite morning brew probably are not thinking about its health benefits or risks','17-july-2022','04.00PM','drinks');

insert into post (post_id,User_ID,category_id,post_title,post_body,last_update,post_time,post_tags) values (19,02,05,'What exactly is a mechanical keyboard?','Mechanical keyboards are more expensive and much more reliable and underneath the keycap you would find a plastic mechanism that presses down supported by a spring','28-july-2022','06.00PM','peripherals');

insert into post (post_id,User_ID,category_id,post_title,post_body,last_update,post_time,post_tags) values (20,05,09,'How are noodles made?','Pour in two cups of water bring it to boil add the noodle and the taste mixer cook it for five minuters and dish it out and then Enjoy.','14-july-2022','04.00PM','cooking');




insert into comments (comment_id,post_id,user_id,comment_title,time) values (01,02,05,'SQL is important','05.00PM');

insert into comments (comment_id,post_id,user_id,comment_title,time) values (02,05,07,'okay','05.00PM');

insert into comments (comment_id,post_id,user_id,comment_title,time) values (03,06,09,'Thanks','04.00PM');

insert into comments (comment_id,post_id,user_id,comment_title,time) values (04,03,07,'hii','02.00PM');

insert into comments (comment_id,post_id,user_id,comment_title,time) values (05,08,04,'ECE is cool','08.00PM');

insert into comments (comment_id,post_id,user_id,comment_title,time) values (06,03,03,'Compiler design as a example','05.00PM');

insert into comments (comment_id,post_id,user_id,comment_title,time) values (07,11,08,'No Comments','03.00PM');

insert into comments (comment_id,post_id,user_id,comment_title,time) values (08,20,10,'Yummyy','02.00PM');

insert into comments (comment_id,post_id,user_id,comment_title,time) values (09,15,05,'Life is on github','08.00PM');

insert into comments (comment_id,post_id,user_id,comment_title,time) values (10,17,07,'TOC is so interesting','09.00PM');

insert into comments (comment_id,post_id,user_id,comment_title,time) values (11,01,09,'Wanna know about digital computers','10.00PM');

insert into comments (comment_id,post_id,user_id,comment_title,time) values (12,04,01,'making a website using asp.net in this month','11.00PM');

insert into comments (comment_id,post_id,user_id,comment_title,time) values (13,08,03,'Ece is interesting','12.00PM');

insert into comments (comment_id,post_id,user_id,comment_title,time) values (14,09,05,'wow','11.00PM');

insert into comments (comment_id,post_id,user_id,comment_title,time) values (15,10,02,'video game development is awesome','09.00PM');





insert into tags (tag_id,post_id,post_tags) values (01,01,'computer');

insert into tags (tag_id,post_id,post_tags) values (02,02,'SQL');

insert into tags (tag_id,post_id,post_tags) values (03,03,'TOC');

insert into tags (tag_id,post_id,post_tags) values (04,04,'website');

insert into tags (tag_id,post_id,post_tags) values (05,05,'peripherals');

insert into tags (tag_id,post_id,post_tags) values (06,06,'medicine');

insert into tags (tag_id,post_id,post_tags) values (07,07,'drinks');

insert into tags (tag_id,post_id,post_tags) values (08,08,'ECE');

insert into tags (tag_id,post_id,post_tags) values (09,09,'cooking');

insert into tags (tag_id,post_id,post_tags) values (10,10,'game-development');

insert into tags (tag_id,post_id,post_tags) values (11,11,'politics');

insert into tags (tag_id,post_id,post_tags) values (12,12,'software');

insert into tags (tag_id,post_id,post_tags) values (13,13,'sports');

insert into tags (tag_id,post_id,post_tags) values (14,14,'job');

insert into tags (tag_id,post_id,post_tags) values (15,15,'github');

insert into tags (tag_id,post_id,post_tags) values (16,16,'SQL');

insert into tags (tag_id,post_id,post_tags) values (17,17,'TOC');

insert into tags (tag_id,post_id,post_tags) values (18,18,'drinks');

insert into tags (tag_id,post_id,post_tags) values (19,19,'peripherals');

insert into tags (tag_id,post_id,post_tags) values (20,20,'cooking');  



--description of each table
DESC users;
DESC category;
DESC post;
DESC comments;
DESC tags;


--LAB 02 & 03:


-- data according each table
select * from users;
select * from category;
select * from post;
select * from comments;
select * from tags;

--add operation (adding column)
alter table tags add temporary_column VARCHAR2(50);
desc tags;
select * from tags;

--drop operation (dropping column)
alter table tags drop column temporary_column;
desc tags;
select * from tags;

--modify operation (modifying column data type)
alter table tags modify post_tags VARCHAR2(60);
desc tags;
select * from tags;

--rename operation (renaming column)
alter table tags rename column post_tags to p_tags;
desc tags;
select * from tags;

alter table tags rename column p_tags to post_tags;
desc tags;
select * from tags;

--update operation (updating a value)
update tags set post_tags = 'drinks' where tag_id=20;
desc tags;

select * from tags;

update tags set post_tags = 'cooking' where tag_id=20;
desc tags;

select * from tags;

--delete operation (deleting a row from tags table)
delete from tags where tag_id=20;
desc tags;
select * from tags;
insert into tags (tag_id,post_id,post_tags) values (20,20,'cooking');
select * from tags;

--calculated field
select (post_id/2) as post_id_divided_by_two from tags; --Giving the column a different name (from lab 04)

--applying conditions
select e_mail from users where user_id=7;

--Range Search
SELECT e_mail,registration_date FROM users
WHERE user_id BETWEEN 1 AND 5;

SELECT e_mail,registration_date FROM users
WHERE user_id not BETWEEN 1 AND 5;

--range operators
SELECT e_mail,registration_date FROM users
WHERE user_id>=1 AND user_id<=5; --Comparison Search Condition(from lab 04)

SELECT e_mail,registration_date FROM users
WHERE user_id>=1 OR user_id<=5; --Compound Comparison Search Condition(from lab 04)

--Set membership
SELECT e_mail,registration_date FROM users WHERE user_id IN (1,5);

SELECT e_mail,registration_date FROM users WHERE user_id NOT IN (1,5);

--Ordering by column values
SELECT e_mail,registration_date FROM users ORDER BY user_id; --Single Column Ordering(lab 04)

SELECT e_mail,registration_date FROM users ORDER BY user_id desc;

--Ordering by column values(with multiple columns)
select post_title,post_time from post 
order by user_id,category_id; --multi-column ordering(lab 04)

select post_title,post_time from post 
order by user_id,category_id desc;

--Use of DISTINCT
select distinct (user_id) from category;






--Lab 04:



--Pattern Matching
select post_id,post_time from post
where post_body like '%in rdbms we use sql to find the requied data efficiently%';

select post_id,post_time from post
where post_body like 'in rdbms we use%';

select post_id,post_time from post
where post_body like '%requied data efficiently';





--aggregate functions:
select  max(user_id) from category;

select min(user_id) from category;

select  sum(user_id) from category;

select count(user_id) from category;

select count(*) from category;

select count(distinct (user_id)) from category;

select  avg(user_id) from category;

select  avg(nvl(user_id)) from category;








--GROUP BY clause
select count(comment_id),user_id from comments group by user_id;
select count(comment_id),user_id from comments where post_id >5 group by user_id;





--HAVING clause
select count(comment_id),user_id from comments  group by user_id having user_id >5;
select count(comment_id),user_id from comments  group by user_id having count(user_id)>1;



--lab 05


--IN
select user_id,user_name,e_mail from users where user_name in ('Avi','Swassow','Tashin');
--nested query
select post_body from post where post_tags in (select post_tags from post where post_time='07.00PM');








----------------------------------------------------------------
--set operations

--union all operation
select user_name,e_mail from users where user_id>0 and user_id<5
union all  --selected column is same in no. and same order of data types
select post_time,post_time from post where post_id>0 and post_id<5;


--union operation
select post_id,user_id from post where post_id<5
union
select post_id,user_id from comments where comment_id<6;


--INTERSECT operation
select post_id,user_id from post
INTERSECT
select post_id,user_id from comments;


--MINUS operation
select post_id,user_id from post
MINUS
select post_id,user_id from comments;






--lab 06(Joining multiple tables)
--simple join examples

--Join
select t.tag_id,t.post_id,cm.comment_id from tags t join
comments cm on t.post_id = cm.post_id;


--Join (Conditions using multiple columns)
select p.post_id,p.user_id,p.category_id from post p join
comments cm on p.post_id = cm.post_id and p.user_id = cm.user_id;


--Natural Join
select tag_id,post_id,comment_id from tags natural join comments;


--Cross Joins/ Cartesian Products
select t.tag_id,t.post_id,cm.comment_id from tags t cross join comments cm;


--Inner Join
select t.tag_id,t.post_id,cm.comment_id from tags t inner join
comments cm on t.post_id = cm.post_id;


--Outer Join

--LEFT Outer Join
select t.tag_id,t.post_id,cm.comment_id from tags t LEFT Outer join
comments cm on t.post_id = cm.post_id;

--RIGHT Outer Join
select t.tag_id,t.post_id,cm.comment_id from tags t RIGHT Outer join
comments cm on t.post_id = cm.post_id;

--FULL Outer Join
select t.tag_id,t.post_id,cm.comment_id from tags t FULL Outer join
comments cm on t.post_id = cm.post_id;

--Self Join
--(max category no.)
select p.category_id from post p MINUS
select p.category_id from post p join post q on p.category_id<q.category_id;



--lab 07,08,09(pl/sql)





--this block generate a random number from system...
--according to that NUMBER a table will selected...
--then it will generate a random number again..
--that number will be a number in primary key...
-- from there to last the given information will be shown...

set SERVEROUTPUT on
Begin
dbms_output.put_line('Admistrator Gameplay');
end;
/

SET SERVEROUTPUT ON

Declare
user_id_u users.user_id%type;
user_name_u users.user_name%type;
e_mail_u users.e_mail%type;
password_u users.password%type;
registration_date_u users.registration_date%type;
last_login_u users.last_login%type;
date_of_birth_u users.date_of_birth%type;


category_id_c category.category_id%type;
category_name_c category.category_name%type;
user_id_c category.user_id%type;


post_id_p post.post_id%type;
user_id_p post.user_id%type;
category_id_p post.category_id%type;
post_title_p post.post_title%type;
post_body_p post.post_body%type;
last_update_p post.last_update%type;
post_time_p post.post_time%type;
post_tags_p post.post_tags%type;

comment_id_cm comments.comment_id%type;
post_id_cm comments.post_id%type;
user_id_cm comments.user_id%type;
comment_title_cm comments.comment_title%type;
time_cm comments.time%type;

tag_id_t tags.tag_id%type;
post_id_t tags.post_id%type;
post_tags_t tags.post_tags%type;

x integer;
y integer;
z integer;

BEGIN
SELECT dbms_random.value(1,5) into x FROM dual;
dbms_output.put_line('For x=1:users     For x=2:post    For x=3:comment     For x=4:category    For x=5:tag');
dbms_output.put_line('System selected value: ' || x);

if x=1 then
    SELECT dbms_random.value(1,11) into z FROM dual;
    dbms_output.put_line('Start From: ' || z || ' Results:');
    if (z>0 and z<11) then
--------------------------------------for loop in PL/SQL-----------------------------------------------------------
        for y in z .. 10 loop

          dbms_output.put_line(' '|| y || 'no. USER DETAILS ARE:  ');

          select user_id into user_id_u from users where user_id = y;
          select user_name into user_name_u from users where user_id = y;
          select e_mail into e_mail_u from users where user_id = y;
          select password into password_u from users where user_id = y;
          select registration_date into registration_date_u from users where user_id = y;
          select last_login into last_login_u from users where user_id = y;
          select date_of_birth into date_of_birth_u from users where user_id = y;

          dbms_output.put_line('User ID: '|| user_id_u);
          dbms_output.put_line('User Name: '|| user_name_u);
          dbms_output.put_line('User Email: '|| e_mail_u);
          dbms_output.put_line('User Password: '|| password_u);
          dbms_output.put_line('User Registration Date: '|| registration_date_u);
          dbms_output.put_line('User Last Loginx: '|| last_login_u);
          dbms_output.put_line('User Birth Date: '|| date_of_birth_u);
          dbms_output.put_line('<><><><><><><><><><><><><><><><><><><><<><><><><><<><><><><><><><>');
          
        end loop;
    else
        dbms_output.put_line('Invalid');
    end if;    

elsif x=2 then
    SELECT dbms_random.value(1,21) into z FROM dual;
    dbms_output.put_line('Start From: ' || z || ' Results:');
    if (z>0 and z<21) then
        for y in z .. 20 loop

          dbms_output.put_line(' '|| y || 'no. POST DETAILS ARE:  ');

          select post_id into post_id_p from post where post_id = y;
          select user_ID into user_id_p from post where post_id = y;
          select category_id into category_id_p from post where post_id = y;
          select post_title into post_title_p from post where post_id = y;
          select post_body into post_body_p from post where post_id = y;
          select last_update into last_update_p from post where post_id = y;
          select post_time into post_time_p from post where post_id = y;

          dbms_output.put_line('Post ID: '|| post_id_p);
          dbms_output.put_line('User ID: '|| user_id_p);
          dbms_output.put_line('Category ID: '|| category_id_p);
          dbms_output.put_line('Post title: '|| post_title_p);
          dbms_output.put_line('Post Body: '|| post_body_p);
          dbms_output.put_line('Last Post Update: '|| last_update_p);
          dbms_output.put_line('Post Time: '|| post_time_p);
          dbms_output.put_line('<><><><><><><><><><><><><><><><><><><><<><><><><><<><><><><><><><>');
          
        end loop;
    else
        dbms_output.put_line('Invalid Pick_Up from SYSTEM');
    end if;    

elsif x=3 then
    SELECT dbms_random.value(1,16) into z FROM dual;
    dbms_output.put_line('Start From: ' || z || ' Results:');
    if (z>0 and z<16) then
        for y in z .. 15 loop

          dbms_output.put_line(' '|| y || 'no. COMMENT DETAILS ARE:  ');

          select comment_id into comment_id_cm from comments where comment_id = y;
          select post_id into post_id_cm from comments where comment_id = y;
          select user_id into user_id_cm from comments where comment_id = y;
          select comment_title into comment_title_cm from comments where comment_id = y;
          select time into time_cm from comments where comment_id = y;

          dbms_output.put_line('Comment ID: '|| comment_id_cm);
          dbms_output.put_line('Post ID: '|| post_id_cm);
          dbms_output.put_line('User ID: '|| user_id_cm);
          dbms_output.put_line('Comment Title: '|| comment_title_cm);
          dbms_output.put_line('Comment Time: '|| time_cm);
          dbms_output.put_line('<><><><><><><><><><><><><><><><><><><><<><><><><><<><><><><><><><>');
          
        end loop;
    else
        dbms_output.put_line('Invalid');
    end if;    

elsif x=4 then
    SELECT dbms_random.value(1,16) into z FROM dual;
    dbms_output.put_line('Start From: ' || z || ' Results:');
    if (z>0 and z<16) then
        for y in z .. 15 loop

          dbms_output.put_line(' '|| y || 'no. CATEGORY DETAILS ARE:  ');

          select category_id into category_id_c from category where category_id = y;
          select category_name into category_name_c from category where category_id = y;
          select user_id into user_id_c from category where category_id = y;
          
          

          dbms_output.put_line('Category ID: '|| category_id_c);
          dbms_output.put_line('Category Name: '|| category_name_c);
          dbms_output.put_line('User ID: '|| user_id_c);

          dbms_output.put_line('<><><><><><><><><><><><><><><><><><><><<><><><><><<><><><><><><><>');
          
        end loop;
    else
        dbms_output.put_line('Invalid');
    end if;    

elsif x=5 then
    SELECT dbms_random.value(1,21) into z FROM dual;
    dbms_output.put_line('Start From: ' || z || ' Results:');
    if (z>0 and z<21) then
        for y in z .. 20 loop

          dbms_output.put_line(' '|| y || 'no. TAG DETAILS ARE:  ');

          select tag_id into tag_id_t from tags where tag_id = y;
          select post_id into post_id_t from tags where tag_id = y;
          select post_tags into post_tags_t from tags where tag_id = y;
          
          dbms_output.put_line('Tag ID: '|| tag_id_t);
          dbms_output.put_line('Post ID: '|| post_id_t);
          dbms_output.put_line('Post Tag: '|| post_tags_t);
          
          dbms_output.put_line('<><><><><><><><><><><><><><><><><><><><<><><><><><<><><><><><><><>');
          
        end loop;
    else
        dbms_output.put_line('Invalid');
    end if;    

end if;


end;
/
SET SERVEROUTPUT ON
Declare
--------------------------------------creating cursor in PL/SQL-----------------------------------------------------------
CURSOR friends is select user_name,password from users; 
f_name users.user_name%type;
f_roll users.password%type;
begin
  open friends;
 --------------------------------------normal loop in PL/SQL-----------------------------------------------------------
  loop
    fetch friends into f_name,f_roll;
    exit when friends%notfound;
    dbms_output.put_line('Name : '|| f_name );
    dbms_output.put_line('  Roll : '|| f_roll);
    dbms_output.put_line('<><><><><><><><><><><><><><><><><><><><><><>');
  end loop;
  close friends;
end;
/

--------------uses of %rowtype in cursor--------------------------------

SET SERVEROUTPUT ON
Declare
CURSOR friends_row is select user_name,password from users;
f1 friends_row%rowtype; 
begin
  open friends_row;
  ----------normal loop and cursor in pl/sql-----------------------------------------------------
  loop
    
    fetch friends_row into f1;
    exit when friends_row%notfound;
    
    dbms_output.put_line('Name : ' || f1.user_name || '  Roll : ' || f1.password);
    dbms_output.put_line('<><><><><><><><><><><><><><><><><><><><><><>');
    
  end loop;
  close friends_row;
end;
/

-----------------------uses of function in pl/sql for generating reverse sequence for a number from user------------------------

SET SERVEROUTPUT ON;
create or replace function Reversed_Roll_Generator(roll_number in NUMBER) return number
-- declare a number 'roll_number' for reading actual input
-- declare another number 'reverse_roll_num' that would be reverse of roll_number
IS
reverse_roll_number number;
roll number;
BEGIN

roll := roll_number;

reverse_roll_number := 0; -- initialize reverse_roll_number to 0

WHILE roll>0 LOOP -- the loop runs until roll_number is greater than 0

reverse_roll_number:= ((reverse_roll_number*10) + mod(roll,10)); -- mod function is used to find the modulus/ remainder of num when divided by 10

roll:=floor(roll/10); -- floor function is used to obtain a result which is an integer
END LOOP;
return reverse_roll_number;
END;
/      



--------------------------------------using the previously created function in PL/SQL--------------------------------------------------------
set SERVEROUTPUT on;
declare
x users.user_id%type;
y users.password%type;
z users.user_name%type;
counts number;
begin
counts := 0;
while counts<5 loop
  SELECT dbms_random.value(1,10) into x FROM dual;
  select users.password into y from users where users.user_id=x;
  select users.user_name into z from users where users.user_id=x; 
  y := Reversed_Roll_Generator(y); -------------- use of user defined functions in pl sql
  dbms_output.put_line('The Reversed_Roll for ' || z || ' is ' || y || ' :)');
  dbms_output.put_line('<><><><><><><><><><><><><><><><><><><><<><><><><><<><><><><><><><>');
  counts:=counts+1;
end loop;

end;
/


--------------------------uses of PL/SQL Procedures to find minimum id between 2 user from users table-------------------------------------


--Creating a Procedures
create or replace PROCEDURE minimum_user_id
(x IN number, y IN number, z OUT number)
IS 
BEGIN 
   IF x < y THEN 
      z:= x; 
   ELSE 
      z:= y; 
   END IF; 
END;  
/ 

--Executing a Procedures
declare
a users.user_id%type;
b users.user_id%type;
p users.user_name%type;
q users.user_name%type;
r users.user_name%type;
x users.user_id%type;
begin
a:=dbms_random.value(1,10);
b:=dbms_random.value(1,10);

select users.user_name into p from users where users.user_id=a;
select users.user_name into q from users where users.user_id=b;

minimum_user_id(a,b,x);

select users.user_name into r from users where users.user_id=x;

dbms_output.put_line('The minimum user ID between ' || p || ' and ' || q || ' is ' || x);
dbms_output.put_line('Which is ' || r || '~s user id.');

end;
/

commit; ------use to commit data in the database



-------------------------------------------Trigger for keeping records about changes----------------------------------


-----------------------a demo table is created here for testing the functions of trigger....
-----------------------mainly the functions of ddl trigger are tested here

----------------dropping db_records if not exists
declare
   c int;
begin
   select count(*) into c from user_tables where table_name = upper('db_records');
   if c = 1 then
      execute immediate 'drop table db_records'; -- executing the command drop table
   end if;
end;
/

CREATE TABLE db_records (
    ddl_date date,
    ddl_user varchar2(15),
    object_created varchar2(15),
    object_name varchar2(15),
    ddl_operation varchar2(15)
);


--creating a trigger for ddl commands


Create or replace trigger blog_db_records
AFTER DDL on schema
BEGIN
insert into db_records values(
  sysdate,  ---insert system date
  sys_context('USERENV','CURRENT_USER'), --(namespace and perameter)
  Ora_dict_obj_type, --ddl operation type
  ora_dict_obj_name,   --name of the object
  ora_sysevent   ---ddl operation name
  
);
dbms_output.put_line('You are not allowed to make changes');
dbms_output.put_line('You must rollback otherwise you will be caught');
end;
/


--------------------------------------dropping and creating dummy table to show some operations in pl/sql--------------------------------------
declare
   c int;
begin
   select count(*) into c from user_tables where table_name = upper('dummy_table');
   if c = 1 then
      execute immediate 'drop table dummy_table'; -- executing the command drop table
   end if;
end;
/


create table dummy_table (
  d_roll integer,
  d_num integer
);



insert into dummy_table values (1807050,8);

select * from db_records;

--------------------------creating a trigger to throw an error for invalid insertion---------------------------------
CREATE OR REPLACE TRIGGER check_roll BEFORE INSERT OR UPDATE ON dummy_table
FOR EACH ROW
DECLARE
r_min constant integer := 1807000;
r_max constant integer := 1807122;
BEGIN
IF :new.d_roll > r_max OR :new.d_roll < r_min THEN
RAISE_APPLICATION_ERROR(-70000,'New Roll is too small or large');
END IF;
END;
/

insert into dummy_table values (331807053,8);  -----Throw an error for invalid roll_number

---------------------Transaction Management----------------------
------showing the current user name
show user; 

-------------proper example of how the transaction actually works for a single user


insert into dummy_table values (1807050,22);

insert into dummy_table values (1807056,23);

commit;

insert into dummy_table values (1807060,24);

SAVEPOINT x_save;

insert into dummy_table values (1807053,25);

insert into dummy_table values (1807054,26);

SAVEPOINT y_save;

insert into dummy_table values (1807055,27);

select * from dummy_table;

rollback to y_save;

select * from dummy_table;

rollback to x_save;

select * from dummy_table;

---------date operation examples---------

----showing the current date of system in dual table
select sysdate from dual;
----showing the current date of system in dual table
select current_date from dual;
----showing the current date and time of system in dual table
select systimestamp from dual;



------------------------------------------------finally----------------------------------------------------------------

set SERVEROUTPUT on;
begin
dbms_output.put_line('Project Name:  ');
dbms_output.put_line('------------');
dbms_output.put_line('Blogging Site Database ');
dbms_output.put_line('Created by:  ');
dbms_output.put_line('----------');
dbms_output.put_line('Avishek Roy' );
dbms_output.put_line('Roll: ');
dbms_output.put_line('----');
dbms_output.put_line('1807053 ');
dbms_output.put_line('--------------------------------------------------');
end;
/