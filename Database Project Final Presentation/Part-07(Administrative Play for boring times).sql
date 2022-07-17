
-- this block generate a random number from system...
-- according to that NUMBER a table will selected...
-- then it will generate a random number again..
-- that number will be a number in primary key...
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

