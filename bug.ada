```ada
function Check_Range(Num : Integer) return Boolean is
begin
   if Num > 10 then
      return True;
   else
      return False;
end if;
exception
   when others =>
      return False; -- Handle any unexpected exceptions
end Check_Range;

with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   Input_Number : Integer;
begin
   Put_Line("Enter an integer:");
   Get(Input_Number);

   if Check_Range(Input_Number) then
      Put_Line("The number is greater than 10");
   else
      Put_Line("The number is not greater than 10");
end if;
end Main;
```