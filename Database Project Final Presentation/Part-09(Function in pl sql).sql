
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

