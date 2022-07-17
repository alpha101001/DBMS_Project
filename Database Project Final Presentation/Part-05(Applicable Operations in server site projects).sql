
--Single Column Ordering(lab 04)
--Ordering by column values to see the data in order from last to first
SELECT e_mail,registration_date FROM users ORDER BY user_id desc;

--Ordering by column values(with multiple columns)
select post_title,post_time from post 
order by user_id,category_id;


 --multi-column ordering(lab 04)

select post_title,post_time from post 
order by user_id,category_id desc;

--Use of DISTINCT
select distinct (user_id) from category;






--Lab 04:



--Pattern Matching

--finding a article efficiently for Search Engine Optimization

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

select  avg(nvl(user_id,0)) from category;








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

