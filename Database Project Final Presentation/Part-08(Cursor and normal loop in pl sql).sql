
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
