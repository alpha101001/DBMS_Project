

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
