let is_even (x : int) : bool = 
  x mod 2 = 0;;

let win (a : int) (b : int) : int = 
  if (a >= 1 && a <= 5) && (b >= 1 && b <= 5) then 
   if (a + b) mod 2 = 0 then 1
   else -1
  else if (a >= 1 && a <= 5) then 1
  else if (b >= 1 && b <= 5) then -1
  else 0;;

