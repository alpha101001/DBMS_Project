--set operations


--union operation(to check if in 1st 4 post have 1st 6 comments or not)
select post_id,user_id from post where post_id<5
union
select post_id,user_id from comments where comment_id<6;


--INTERSECT operation (self post comments)
select post_id,user_id from post
INTERSECT
select post_id,user_id from comments;


--MINUS operation (to check comment-less posts)
select post_id,user_id from post
MINUS
select post_id,user_id from comments;

--union all operation
select user_name,e_mail from users where user_id>0 and user_id<5
union all  --selected column is same in no. and same order of data types
select post_time,post_time from post where post_id>0 and post_id<5;




--lab 06(Joining multiple tables)
--simple join examples

--Join(specific comments in specific tags of a post)
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

