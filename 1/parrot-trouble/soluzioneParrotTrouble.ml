(*some true = talking
some false = not talking*)

let parrot_trouble (talking : bool) (hour : int) : bool option = 
  if (talking = true || talking = false)  && (hour < 0 || hour > 23) then None 
  else if talking && (hour < 7 || hour > 20) then Some true 
  else Some false;; 
 