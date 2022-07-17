

-------------------------------------------Trigger for keeping records about changes----------------------------------


-----------------------a demo table is created here for testing the functions of trigger....
-----------------------mainly the functions of ddl trigger are tested here

----------------dropping db_records if not exists
-- declare
--    c int;
-- begin
--    select count(*) into c from user_tables where table_name = upper('db_records');
--    if c = 1 then
--       execute immediate 'drop table db_records'; 
--       -- executing the command drop table
--    end if;
-- end;
-- /
drop table db_records;
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
-- declare
--    c int;
-- begin
--    select count(*) into c from user_tables where table_name = upper('dummy_table');
--    if c = 1 then
--       execute immediate 'drop table dummy_table'; -- executing the command drop table
--    end if;
-- end;
-- /
drop table dummy_table;

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

insert into dummy_table values (331807053,8); 

 -----Throw an error for invalid roll_number
