with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Main is

   i,l,n,j,n2,b,bi,h:Integer;
   bin : array(0..19) of Integer;
   hex : array(0..19) of Integer;
   hexadecimal: array(0..15) of Character;
begin
   hexadecimal(0..15):=('0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F');
   i:=0;


   Put_Line("numero: ");
   get(n);
   n2:=n;

   Put_Line("decimal - binario: ");
   while(n/= 0) loop
      bin(i):= n mod 2;
      n:=n/2;
      i:=i+1;
   end loop;
   l:=i;
   j:=0;
   bi:=0;
   for i in reverse 0..l-1 loop
     --b:=(exp(2,i)*bin(i))+b;
     put(bin (i));
     if i>=0 and bin(i)=1 then
      b:=1;
      for j in 1..i loop
         b:=b*2;
         end loop;
      bi:=b+bi;
     end if;

   end loop;
   Put_Line("");
   Put_Line("binario-decimal");
   put(bi);


   Put_Line("");
   Put_Line("decimal - hexadecimal: ");
   i:=0;
   j:=0;
   if (n2<=15) then
      Put(hexadecimal(n2));
   else
      while(n2 /= 0) loop
         hex(i):= n2 mod 16;
         n2:=n2/16;
         i:=i+1;
      end loop;
      h:=i;
      for i in reverse 0..h-1 loop
         put(hexadecimal(hex(i)));
       if i>=0 and hex(i)=1 then
          b:=1;
          for j in 1..i loop
          b:=b*16;
          end loop;
          bi:=b+bi;
        end if;

     end loop;
   end if;

    Put_Line("");
   Put_Line("hexadecimal- binario");
   put(bi);
end Main;
