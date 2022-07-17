

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

commit; 
------use to commit data in the database

