```ada
function Check_Range(X : Integer) return Boolean is
begin
   if X > 10 then
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
   Result : Boolean;
begin
   Result := Check_Range(12);  --This will return True
   Put_Line("Result: " & Boolean'Image(Result));
   Result := Check_Range(-5); -- This will return False
   Put_Line("Result: " & Boolean'Image(Result));
   Result := Check_Range(10); -- This will return False
   Put_Line("Result: " & Boolean'Image(Result));
   Result := Check_Range(100000000); --This will return True
   Put_Line("Result: " & Boolean'Image(Result));
end Main;
```