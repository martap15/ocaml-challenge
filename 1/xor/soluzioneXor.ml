let xor1: bool -> bool -> bool = 
fun a b ->
  (not a && b) || (a && not b) 

let xor2 (a : bool) (b : bool) : bool = 
  if a = b then false
  else true ;;

let xor3 (a : bool) (b : bool) : bool = 
  match(a, b) with
  | (true, true) -> false
  | (false, false) -> false 
  | _ -> true;;
