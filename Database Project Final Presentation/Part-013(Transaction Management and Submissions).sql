
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
dbms_output.put_line('Submitted to: ');
dbms_output.put_line('------------');
dbms_output.put_line(' 1. Md. Masum Al Mesba');
dbms_output.put_line(' -- Assistant Professor');
dbms_output.put_line(' -- Department of Computer Science and Engineering');
dbms_output.put_line(' -- KUET');
dbms_output.put_line('--------------------------------------------------');
dbms_output.put_line(' 2. Nazia Jahan Khan Chowdhury');
dbms_output.put_line(' -- Assistant Professor');
dbms_output.put_line(' -- Department of Computer Science and Engineering');
dbms_output.put_line(' -- KUET');
end;
/