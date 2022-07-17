
--description of each table
DESC users;
DESC category;
DESC post;
DESC comments;
DESC tags;


--LAB 02 & 03:


-- data according each table (to show the data for all tables)
--details about user table:
select * from users;
--details about category table:
select * from category;
--details about post table:
select * from post;
--details about comments table:
select * from comments;
--details about tags table:
select * from tags;

--add operation (adding column for application purposes)
alter table tags add temporary_column VARCHAR2(50);
desc tags;
select * from tags;

--drop operation (dropping useless column for application purposes)
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

--update operation (updating a value for tags table in post_tags)
--when a user make a mistake and contact a admin to update it...
update tags set post_tags = 'drinks' where tag_id=20;
desc tags;

select * from tags;

--change of mind for bringing the previous value back
--when a user make a mistake and contact a admin to update it again...
update tags set post_tags = 'cooking' where tag_id=20;
desc tags;

select * from tags;

--delete operation (deleting a row from tags table considering it useless)
delete from tags where tag_id=20;
desc tags;
select * from tags;

--change of mind for bringing the previous value back regarding the contact of a user...
insert into tags (tag_id,post_id,post_tags) values (20,20,'cooking');
select * from tags;

--calculated field(to show the 1st half records from tags table)
select (tag_id/2) as first_half_records from tags; 
--Giving the column a different name (from lab 04)

--applying conditions(showing the email for 7th user_id to take some actions)
select e_mail from users where user_id=7;

--Range Search (varifying some users for official works)
SELECT e_mail,registration_date FROM users
WHERE user_id BETWEEN 1 AND 5;
--varifying rest of the users for official works
SELECT e_mail,registration_date FROM users
WHERE user_id not BETWEEN 1 AND 5;

--range operators
SELECT e_mail,registration_date FROM users
WHERE user_id>=1 AND user_id<=5;
 --Comparison Search Condition(from lab 04)

SELECT e_mail,registration_date FROM users
WHERE user_id>=1 OR user_id<=5; 
--Compound Comparison Search Condition(from lab 04)

--Set membership

--varifying some users for official works in different process
SELECT e_mail,registration_date FROM users WHERE user_id IN (1,5);

SELECT e_mail,registration_date FROM users WHERE user_id NOT IN (1,5);

--Ordering by column values to see the data in order from 1st to last
SELECT e_mail,registration_date FROM users ORDER BY user_id; 